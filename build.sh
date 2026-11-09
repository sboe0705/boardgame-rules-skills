#!/usr/bin/env bash
# Validate and package all skills of this repository for distribution.
#
# Output (in ./dist, recreated on every run):
#   dist/<skill>.zip       one archive per skill, containing the folder <skill>/
#                          (format accepted by claude.ai / Claude Desktop skill upload,
#                          the Claude API and other agents that support the
#                          Agent Skills format: a folder with a SKILL.md)
#                          plus the repository LICENSE as <skill>/LICENSE
#   dist/SHA256SUMS        checksums of the archives
#
# Usage: ./build.sh [-o <output dir>]
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUT_DIR="$REPO_DIR/dist"

die() { echo "Error: $*" >&2; exit 1; }

while [[ $# -gt 0 ]]; do
  case "$1" in
    -o|--out) [[ $# -ge 2 ]] || die "--out needs a directory"; OUT_DIR="$2"; shift ;;
    -h|--help) sed -n '2,11p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
  shift
done

command -v zip >/dev/null || die "'zip' is required (e.g. dnf install zip / apt install zip)"
[[ -f "$REPO_DIR/LICENSE" ]] || die "LICENSE not found in $REPO_DIR"

# --- validation --------------------------------------------------------------
frontmatter_field() {
  # print the value of a top-level field from the YAML frontmatter of SKILL.md
  # (surrounding single or double quotes are removed, '' is unescaped)
  sed -n '1{/^---$/!q};1,/^---$/{/^---$/d;p}' "$1" | sed -n "s/^$2: *//p" | head -n1 \
    | sed -e "s/^'\(.*\)'\$/\1/" -e "s/''/'/g" -e 's/^"\(.*\)"$/\1/'
}

validate() {
  local skill="$1" file="$REPO_DIR/$1/SKILL.md" errors=0 name desc
  [[ "$(head -n1 "$file")" == "---" ]] || { echo "  $skill: SKILL.md must start with YAML frontmatter (---)" >&2; return 1; }
  name="$(frontmatter_field "$file" name)"
  desc="$(frontmatter_field "$file" description)"
  if [[ -z "$name" ]]; then
    echo "  $skill: missing 'name' in frontmatter" >&2; errors=1
  elif [[ "$name" != "$skill" ]]; then
    echo "  $skill: name '$name' does not match folder name" >&2; errors=1
  fi
  if ! [[ "$skill" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]] || [[ ${#skill} -gt 64 ]]; then
    echo "  $skill: name must be lowercase letters, digits and hyphens (max 64 chars)" >&2; errors=1
  fi
  [[ -f "$REPO_DIR/$skill/NOTICE" ]] || { echo "  $skill: missing NOTICE file" >&2; errors=1; }
  if [[ -z "$desc" ]]; then
    echo "  $skill: missing 'description' in frontmatter" >&2; errors=1
  elif [[ ${#desc} -gt 1024 ]]; then
    echo "  $skill: description is ${#desc} chars (max 1024)" >&2; errors=1
  fi
  # every references/... path mentioned in SKILL.md must exist
  local ref
  while read -r ref; do
    [[ -e "$REPO_DIR/$skill/$ref" ]] || { echo "  $skill: referenced file '$ref' not found" >&2; errors=1; }
  done < <(grep -oE 'references/[A-Za-z0-9._/-]+\.md' "$file" | sort -u)
  return $errors
}

SKILLS=()
for dir in "$REPO_DIR"/*/; do
  [[ -f "$dir/SKILL.md" ]] && SKILLS+=("$(basename "$dir")")
done
[[ ${#SKILLS[@]} -gt 0 ]] || die "no skills found in $REPO_DIR"

echo "Validating ${#SKILLS[@]} skill(s)..."
failed=0
for s in "${SKILLS[@]}"; do
  if validate "$s"; then echo "  ok  $s"; else failed=1; fi
done
[[ $failed -eq 0 ]] || die "validation failed"

# --- packaging ---------------------------------------------------------------
rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"
OUT_DIR="$(cd "$OUT_DIR" && pwd)"

EXCLUDES=(-x '*.DS_Store' -x '*/.git*' -x '*~' -x '*.swp')

echo "Packaging..."
STAGE="$(mktemp -d)"
trap 'rm -rf "$STAGE"' EXIT
cd "$REPO_DIR"
for s in "${SKILLS[@]}"; do
  # -X: no extra file attributes, so the archives are reproducible across machines
  zip -qrX "$OUT_DIR/$s.zip" "$s" "${EXCLUDES[@]}"
  # add the repository LICENSE as <skill>/LICENSE without duplicating it in the repo
  mkdir -p "$STAGE/$s"
  cp -p "$REPO_DIR/LICENSE" "$STAGE/$s/LICENSE"   # -p keeps mtime: reproducible zips
  (cd "$STAGE" && zip -qX "$OUT_DIR/$s.zip" "$s/LICENSE")
  echo "  $OUT_DIR/$s.zip"
done

(cd "$OUT_DIR" && sha256sum ./*.zip > SHA256SUMS)
echo "Done. Archives and checksums are in $OUT_DIR"
