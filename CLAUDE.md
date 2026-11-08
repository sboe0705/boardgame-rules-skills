# CLAUDE.md

This repository holds AI Agent Skills that explain board game rules and answer rules questions. Each top-level folder with a `SKILL.md` is one skill. `install.sh` installs skills locally; `build.sh` validates and packages them (see README.md).

## Git workflow
- **Always develop directly on the `main` branch.** Don't create feature branches or worktrees, and don't open pull requests, unless the user explicitly asks for one.
- Commit only when the user asks; push only when the user asks.

## Creating a skill for a new game

### Inputs to ask for (if not given)
- Game name (original and, if relevant, localized title)
- Official rulebook PDF URL(s), ideally the English one plus any localized edition the users play with
- Official product pages (optional, used only as links)

### Naming
- Folder and `name`: `explain-<game-slug>`, lowercase letters, digits and hyphens, max 64 chars (e.g. `explain-my-game`). The folder name must equal the frontmatter `name`; `build.sh` enforces this.

### Structure
```
explain-<game>/
├── SKILL.md
└── references/
    ├── components.md          # object of the game, component list, card/board anatomy
    ├── setup.md               # game setup (and map/board/scenario setup if any)
    ├── <turn-or-round>.md     # one file per major rules area, following the rulebook's order
    ├── ...
    ├── glossary.md            # the rulebook glossary/index, if it has one
    └── terminology-en-<xx>.md # term table for each localized edition
```
- Split files by rules area, following the rulebook's own chapters. Keep each file under about 300 lines.
- Every file named in `SKILL.md` must exist; `build.sh` checks `references/*.md` paths.

### SKILL.md contents
1. **Frontmatter**: `name` and a one-paragraph `description` (max 1024 chars). Say what the skill does, name the game in every edition's title, and list trigger topics and keywords in each supported language, plus one or two example questions.
2. **How to answer**:
   - Answer in the asker's language; in a localized language use that edition's official terms (from the terminology file).
   - Read the matching reference file(s) before answering; answer only from them.
   - Cite page numbers, in the asker's language's rulebook if pages differ.
   - If the rules don't cover something, say so, point to scenario/card text and the official FAQ, and label any interpretation as such.
   - Specific text (scenario, card) overrides general rules, if the rulebook says so.
   - Formats: single question → short answer + details + pages; full teach → teaching order; quick reference; setup help with the player count filled in.
3. **Reference file table** with content and page ranges.
4. **Quick overview** (about 10 lines: goal, setup essentials, turn structure, end of game) with page numbers.
5. **Teaching order** for explaining the game to new players.
6. **Sources**: links to every rulebook PDF and product page.

### Workflow
1. **Download** each PDF into its own empty folder in the scratchpad (never into the repo). Check page count and whether printed page numbers match PDF page numbers (`pdfinfo`, `pdftotext -f N -l N`). If they don't match, cite the **printed** page numbers and note the offset.
2. **Read the whole rulebook page by page** (`pdftotext -raw` or `-layout`). Text extraction loses icons, diagram labels, card anatomy callouts and example captions, so **render pages to images** (`pdftoppm -r 80 -png`, zoom with `-r 200 -x -y -W -H`) and look at every page that has diagrams, cards or icons.
3. **Read each localized rulebook** in full, not only the glossary: collect the official terms and note where its rules **wording differs** (added clarifications, different examples, real contradictions).
4. **Write the reference files**, then `SKILL.md`.
5. **Verify** (see below) and run `./build.sh`.
6. Commit on `main` only when the user asks (see Git workflow).

### Content rules
- **Completeness:** carry over all rules content, including examples, sidebars, notes, image captions, card/board anatomy, the component list and the glossary. Skip flavor text, story/scenario narrative and credits.
- **Paraphrase into structure:** turn the text into lists and tables; don't copy long passages verbatim.
- **Page references on every section**, in this form: `**Rulebook:** EN p. X · DE S. X` (use the matching abbreviation for each language; name pages separately where editions differ).
- **Icons and symbols** are described in words (e.g. "crosshair icon = range").
- **Edition differences** are marked inline ("DE differs: …", "DE adds: …") so answers can mention both.
- **No invented rules.** Anything that is derived and not stated outright is marked as such ("follows from the rule", "interpretation"). Don't fill gaps from general knowledge of the game, and don't describe scenario/campaign content beyond what the rulebook shows.
- **Language:** skill files in English; localized terms appear only as translations (in brackets or in the terminology table).

### Verification checklist
- [ ] Every heading and subheading of the rulebook appears in a reference file with a page number (grep the extracted headings against the skill).
- [ ] At least 10 rules spot-checked against the PDF page they cite.
- [ ] Numbers checked against the images (dice counts, card values, icon values), since text extraction can scramble their order.
- [ ] Terminology table covers components, actions, turn steps, card/character names shown in the rulebook.
- [ ] `./build.sh` passes.
- [ ] Test questions answered from the skill alone (no PDF) in each supported language: a setup question, a turn-structure question, an edge case, a "what happens when…" question, and "explain the game to new players". Answers must be correct, in the asker's language, and cite pages.

## Scripts
- `./build.sh` validates all skills and writes zips to `dist/` (git-ignored). Run it after every skill change.
- `./install.sh` copies skills to `~/.claude/skills` (or `--target`). It discovers skills automatically, so new skills need no script changes.
