# AGENTS.md

A collection of AI **Agent Skills** that explain the rules of board games and answer rules questions, citing rulebook page numbers.

Each skill holds a complete, structured transcription of a game's official rulebook, so an agent can answer from the skill without reading the PDF. Skills are written in English and answer in the language of whoever is asking, using the official terms of that language's edition.

## Repository layout

```
<skill-name>/            one folder per skill (any top-level folder with a SKILL.md)
├── SKILL.md             frontmatter (name, description, license, author) + answer instructions + overview
├── NOTICE               copyright, license, source and support link (not read by the agent)
└── references/          the rules, split into one Markdown file per topic
.github/FUNDING.yml      sponsor button (Buy Me a Coffee)
LICENSE                  Apache License 2.0 (added to every package and install)
install.sh               install / uninstall skills in your local skills directory
build.sh                 validate and package all skills into dist/
release.sh               tag and push a new release version (vX.Y.Z)
.github/workflows/       CI build (build.yml) and GitHub release on tags (release.yml)
AGENTS.md                instructions for creating new skills
```

To see which skills are included, run `./install.sh --list`.

## Installing skills locally

```bash
./install.sh                          # interactive: pick skills from a list
./install.sh <skill> [<skill>…]       # install specific skills
./install.sh --all                    # install all skills
./install.sh --uninstall [<skill>…]   # remove skills (interactive without names)
./install.sh --list                   # list available skills
```

Options:

| Option | Meaning |
|---|---|
| `-a`, `--all` | install or uninstall all skills of this repository |
| `-u`, `--uninstall` | remove instead of install (only skills from this repository are ever removed) |
| `-t`, `--target <dir>` | target directory (default: `$SKILLS_DIR` or `~/.claude/skills`) |
| `-f`, `--force` | overwrite or remove without asking |

The default target is the Claude Code user skills directory. Use `--target` for a project (`.claude/skills`) or for another agent's skills directory.

## Building packages for other agents

```bash
./build.sh            # output in ./dist
./build.sh -o <dir>   # custom output directory
```

`build.sh` first validates every skill (frontmatter, naming, NOTICE, referenced files) and then creates:

- `dist/<skill>.zip`: one archive per skill, containing the skill folder plus the repository `LICENSE`. Upload it to claude.ai / Claude Desktop, use it with the Claude API, or give it to any agent that supports the Agent Skills format.
- `dist/SHA256SUMS`: checksums.

`dist/` is git-ignored.

## Releasing

```bash
./release.sh              # suggests the next version, builds, tags and pushes
./release.sh --dry-run    # show what would happen, change nothing
```

All skills are released together under one version `vX.Y.Z`. The script shows the latest release and the commits since then and suggests the next version (`BREAKING` in a commit message → major; a subject starting with "Add" or "Remove", e.g. a new skill → minor; otherwise patch). It runs `./build.sh`, then creates an annotated tag on `main` and pushes it. The tag triggers `.github/workflows/release.yml`, which publishes a GitHub release with one zip per skill and `SHA256SUMS`. Options: `--version X.Y.Z`, `--yes`, `--skip-build`, `--dry-run`, `--help`.

## Adding a skill for another game

See [AGENTS.md](AGENTS.md) for the full workflow and conventions. In short: create a folder `explain-<game>/` with a `SKILL.md` and topic files under `references/`, transcribe the complete rulebook with page numbers, then run `./build.sh` to validate.

## Support

If these skills are useful to you, you can support their development with a coffee: [buymeacoffee.com/sboe0705](https://buymeacoffee.com/sboe0705) ☕

## Disclaimer

The skills are unofficial rules summaries for personal use. All games, names and rulebooks belong to their respective publishers; each skill links to the official rulebook PDFs.

## License

Copyright 2026 Sebastian Böhm. Licensed under the [Apache License 2.0](LICENSE).
