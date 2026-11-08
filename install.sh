#!/usr/bin/env bash
# Install (or uninstall) skills from this repository in the user's skills directory.
#
# Usage:
#   ./install.sh                                  # interactive selection
#   ./install.sh <skill> [<skill>…]               # install the named skills
#   ./install.sh --all                            # install all skills
#   ./install.sh --uninstall [<skill>…|--all]     # remove installed skills (interactive without names)
#
# Options:
#   -a, --all            install (or uninstall) all skills of this repository
#   -u, --uninstall      remove skills instead of installing them
#   -t, --target <dir>   target directory (default: $SKILLS_DIR or ~/.claude/skills)
#   -f, --force          overwrite / remove without asking
#   -l, --list           list available skills and exit
#   -h, --help           show this help
#
# --uninstall only removes skills that belong to this repository; other skills
# in the target directory are never touched.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${SKILLS_DIR:-$HOME/.claude/skills}"
FORCE=0
ALL=0
LIST_ONLY=0
UNINSTALL=0
REQUESTED=()

usage() { sed -n '2,20p' "$0" | sed 's/^# \{0,1\}//'; }
die() { echo "Error: $*" >&2; exit 1; }

while [[ $# -gt 0 ]]; do
  case "$1" in
    -a|--all) ALL=1 ;;
    -u|--uninstall) UNINSTALL=1 ;;
    -f|--force) FORCE=1 ;;
    -l|--list) LIST_ONLY=1 ;;
    -t|--target) [[ $# -ge 2 ]] || die "--target needs a directory"; TARGET_DIR="$2"; shift ;;
    --target=*) TARGET_DIR="${1#*=}" ;;
    -h|--help) usage; exit 0 ;;
    -*) die "unknown option: $1 (see --help)" ;;
    *) REQUESTED+=("${1%/}") ;;
  esac
  shift
done

# A skill is any top-level directory containing a SKILL.md.
SKILLS=()
for dir in "$REPO_DIR"/*/; do
  [[ -f "$dir/SKILL.md" ]] && SKILLS+=("$(basename "$dir")")
done
[[ ${#SKILLS[@]} -gt 0 ]] || die "no skills found in $REPO_DIR"

is_installed() { [[ -d "$TARGET_DIR/$1" ]]; }

DESC_WIDTH=90   # characters per description line
DESC_LINES=2    # description lines shown per skill

skill_description() {
  # "description:" frontmatter field, word-wrapped to DESC_LINES lines of DESC_WIDTH,
  # with "..." if it had to be cut; each line is indented
  local desc
  desc="$(sed -n '/^---$/,/^---$/{s/^description: *//p}' "$REPO_DIR/$1/SKILL.md" | head -n1)"
  local -a lines
  mapfile -t lines < <(printf '%s\n' "$desc" | fold -s -w "$DESC_WIDTH")
  if [[ ${#lines[@]} -gt $DESC_LINES ]]; then
    local last="${lines[DESC_LINES - 1]% }"
    # make room for "..." and cut at a word boundary
    [[ ${#last} -gt $((DESC_WIDTH - 3)) ]] && last="${last% *}"
    lines=("${lines[@]:0:DESC_LINES - 1}" "${last}...")
  fi
  local line
  for line in "${lines[@]}"; do
    printf '      %s\n' "${line% }"
  done
}

# Print a numbered list of the skills given as arguments.
list_skills() {
  local i=1 s mark
  for s in "$@"; do
    mark=" "
    is_installed "$s" && mark="*"
    printf '  %2d) %s %s\n' "$i" "$s" "$mark"
    skill_description "$s"
    i=$((i + 1))
  done
  echo "  (* = installed in $TARGET_DIR)"
}

if [[ $LIST_ONLY -eq 1 ]]; then
  echo "Available skills:"
  list_skills "${SKILLS[@]}"
  exit 0
fi

# Skills that can be chosen: all repo skills for install, only installed repo skills for uninstall.
CANDIDATES=()
if [[ $UNINSTALL -eq 1 ]]; then
  for s in "${SKILLS[@]}"; do is_installed "$s" && CANDIDATES+=("$s"); done
  verb="uninstall"
else
  CANDIDATES=("${SKILLS[@]}")
  verb="install"
fi

SELECTED=()
if [[ ${#REQUESTED[@]} -gt 0 ]]; then
  [[ $ALL -eq 0 ]] || die "use either --all or skill names, not both"
  for r in "${REQUESTED[@]}"; do
    [[ -f "$REPO_DIR/$r/SKILL.md" ]] || die "unknown skill: $r (use --list)"
    SELECTED+=("$r")
  done
elif [[ $ALL -eq 1 ]]; then
  SELECTED=("${CANDIDATES[@]}")
else
  [[ -t 0 ]] || die "no skills given and not running interactively (use --all or name the skills)"
  if [[ ${#CANDIDATES[@]} -eq 0 ]]; then
    echo "No skills from this repository are installed in $TARGET_DIR."
    exit 0
  fi
  if [[ $UNINSTALL -eq 1 ]]; then echo "Installed skills:"; else echo "Available skills:"; fi
  list_skills "${CANDIDATES[@]}"
  echo
  read -r -p "Select skills to $verb (e.g. '1 3', 'a' for all, Enter to cancel): " answer
  [[ -n "${answer// /}" ]] || { echo "Cancelled."; exit 0; }
  if [[ "$answer" =~ ^[[:space:]]*(a|all|A)[[:space:]]*$ ]]; then
    SELECTED=("${CANDIDATES[@]}")
  else
    for token in ${answer//,/ }; do
      [[ "$token" =~ ^[0-9]+$ ]] && (( token >= 1 && token <= ${#CANDIDATES[@]} )) \
        || die "invalid selection: $token"
      SELECTED+=("${CANDIDATES[token - 1]}")
    done
  fi
fi

# --- uninstall ---------------------------------------------------------------
if [[ $UNINSTALL -eq 1 ]]; then
  TO_REMOVE=()
  for s in "${SELECTED[@]}"; do
    if is_installed "$s"; then
      TO_REMOVE+=("$s")
    else
      echo "Skipped $s (not installed in $TARGET_DIR)."
    fi
  done
  if [[ ${#TO_REMOVE[@]} -eq 0 ]]; then
    echo "Done: 0 skill(s) uninstalled."
    exit 0
  fi
  if [[ $FORCE -eq 0 ]]; then
    [[ -t 0 ]] || die "refusing to remove skills without confirmation (use --force)"
    echo "This will delete from $TARGET_DIR:"
    printf '  - %s\n' "${TO_REMOVE[@]}"
    read -r -p "Continue? [y/N] " yn
    [[ "$yn" =~ ^[YyJj] ]] || { echo "Cancelled."; exit 0; }
  fi
  for s in "${TO_REMOVE[@]}"; do
    rm -rf "${TARGET_DIR:?}/$s"
    echo "Uninstalled $s"
  done
  echo "Done: ${#TO_REMOVE[@]} skill(s) uninstalled."
  exit 0
fi

# --- install -----------------------------------------------------------------
mkdir -p "$TARGET_DIR"
installed=0
for s in "${SELECTED[@]}"; do
  dest="$TARGET_DIR/$s"
  if [[ -e "$dest" && $FORCE -eq 0 ]]; then
    if [[ -t 0 ]]; then
      read -r -p "'$s' is already installed in $TARGET_DIR. Overwrite? [y/N] " yn
      [[ "$yn" =~ ^[YyJj] ]] || { echo "Skipped $s."; continue; }
    else
      echo "Skipped $s (already installed; use --force to overwrite)."
      continue
    fi
  fi
  # Copy into a temp dir first, then swap, so a failed copy never leaves a half-installed skill.
  tmp="$(mktemp -d "$TARGET_DIR/.${s}.XXXXXX")"
  cp -R "$REPO_DIR/$s/." "$tmp/"
  chmod "$(printf '%o' $((0777 & ~$(umask))))" "$tmp"   # mktemp creates 0700; use normal permissions
  rm -rf "$dest"
  mv "$tmp" "$dest"
  echo "Installed $s -> $dest"
  installed=$((installed + 1))
done

echo "Done: $installed skill(s) installed."
