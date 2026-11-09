---
name: explain-cascadia
description: 'Explains the rules of the tile-laying game "Cascadia" (German edition "Cascadia – Im Herzen der Natur", KOSMOS / AEG, Randy Flynn) and its expansion "Cascadia Landmarks" and answers rules questions in German or English with rulebook page references. Use whenever someone asks how to play Cascadia, wants setup help, a turn summary or a full explanation, or asks about habitat tiles, wildlife tokens, overpopulation, nature tokens / pine cones, placing tiles and animals, keystone tiles, scoring cards A–G (bear, elk, salmon, hawk, fox), largest habitat areas and majority bonus, solo game, simple scoring, challenges and scenarios, landmarks, landmark scoring cards, the faster game or 5–6 players. German triggers: Cascadia Regeln, Spielanleitung, Wildnisplättchen, Start-Landschaft, Tiere ansiedeln, Überbevölkerung, Zapfen, Wertungskarten, Gebiete, Bonuspunkte, Solo-Spiel, Herausforderungen, Landmarken. Example questions: "Darf ich mit einem Zapfen Tiere tauschen?" or "How does the hawk line of sight work?".'
license: Apache-2.0
metadata:
  author: Sebastian Böhm
---

# Explain Cascadia + Cascadia Landmarks (DE / EN)

This skill holds the complete rules of *Cascadia – Im Herzen der Natur* (base game) and *Cascadia Landmarks* (expansion) in `references/`, transcribed from the official **German** KOSMOS rulebooks (no English rulebook was provided). Every rule has its page number.

## How to answer

1. **Language:** answer in the asker's language. In German use the **official KOSMOS terms** from `references/terminology-en-de.md` (e.g. Wildnisplättchen, Start-Landschaft, Zapfen, Überbevölkerung, Auslage, Gebiet, Landmarke). In English use the English terms from that file; they are working translations (common English edition names), not verified against an English rulebook – say so if exact English card wording matters.
2. **Look it up, don't rely on memory:** read the matching reference file(s) before answering and answer only from them. Don't mix in rules from other Cascadia editions/expansions or online FAQs.
3. **Cite pages:** "(Spielanleitung S. 7)" for the base game, "(Landmarks-Anleitung S. 7)" for the expansion; in English "(base rulebook p. 7)" / "(Landmarks rulebook p. 7)". In the references, **GS** = base game, **LM** = Landmarks; printed page = PDF page in both.
4. **Gaps:** if the rules don't cover something, say so (known gaps are marked, e.g. majority bonus with 5–6 players, what happens to tokens replaced with a pine cone). Point to the card text, the KOSMOS product page / customer service and label your own reading as an interpretation. Values marked "(?)" were hard to read in the rulebook images – tell the player to check the card.
5. **Precedence:** a scoring card's own rule decides how that species scores; scenario rules (e.g. landmark cards shared in LM scenarios 11–20) override the normal rules for that game.
6. **Choose the format:**
   - *Single rules question:* short direct answer, then details/edge cases, then page(s).
   - *Teach the game:* follow the teaching order below with a concrete sample turn.
   - *Quick reference:* quick overview + turn summary.
   - *Setup help:* walk through `setup.md` with the player count filled in (tile count, bonus rules, Landmarks extras if used).

## Reference files

| File | Content | Pages |
|---|---|---|
| `references/components.md` | Object of the game, base and Landmarks component lists, score pad layout, habitat tile anatomy (pine-cone/keystone tiles) | GS S. 2–3, 8 · LM S. 2–3 |
| `references/setup.md` | 7 setup steps, tile counts by player count (1–6, with/without Landmarks module), start player | GS S. 4–5 · LM S. 2 |
| `references/turn.md` | Overview, the 4 turn steps: overpopulation, taking (pine-cone actions), placing tile and token, refilling; end trigger | GS S. 5–8, 16 |
| `references/scoring.md` | Final scoring: wildlife, largest areas, majority bonus (solo/2/3–4), pine cones, tiebreak, full 3-player example, Landmarks row | GS S. 8–9 · LM S. 8 |
| `references/wildlife-scoring-cards.md` | All wildlife scoring cards A–D (base) and E–G (Landmarks) with point tables, line of sight, runs, groups | GS S. 11 · LM S. 5 |
| `references/landmarks.md` | Landmarks module: setup (opening pine-cone tile, cards, pieces), placing landmarks at area size 5+, landmark cards A–L, scoring example | LM S. 6–8, 12 |
| `references/variants-solo.md` | Solo game and rating table, simple scoring card, faster game (5–6 players), 10 rule variants | GS S. 10, 14 · LM S. 4 |
| `references/challenges.md` | Challenge mode: route, scenario icon legend, 15 base scenarios, 25 normal-game challenges, 20 Landmarks scenarios, 20 Landmarks challenges | GS S. 12–14 · LM S. 9–11 |
| `references/terminology-en-de.md` | German ↔ English terms: headings, components, habitats, animals, game terms, card names | – |

## Quick overview

- **Base game 1–4 players** (with Landmarks **1–6**). Draft tile+animal pairs, build your landscape, score animal patterns and large habitat areas. (GS S. 2, 5 · LM S. 2)
- **Setup:** animals in the bag; 20 tiles per player + 3 (2p 43, 3p 63, 4p 83) in face-down stacks; 5 scoring cards (first game: all A); one starter tile each; display of 4 tiles + 4 animals; pine cones as supply. (GS S. 4)
- **Turn:** (1) 4 identical animals must be replaced, 3 identical may be replaced once; (2) take one pair – or spend a pine cone to take any tile + any animal, or to replace any number of animals; (3) place the tile adjacent (mandatory, any rotation), place the animal on a free tile showing it (optional; else back in the bag; pine-cone tile → gain a pine cone); (4) refill. (GS S. 6–7)
- **End:** when the display can't be refilled – after 20 turns each. (GS S. 5, 8)
- **Scoring:** animals per cards + 1 per tile of your largest area of each habitat + majority bonus (3–4p: 3/1; 2p: 2; solo: 2 per habitat with area 7+) + 1 per pine cone. Tie: more pine cones. (GS S. 8–9)
- **Landmarks module:** opening pine-cone tile; when an area reaches size 5+, you may put that habitat's landmark on the tile just placed (no animal there afterwards, max one per habitat) and take a landmark scoring card. (LM S. 6–8)

## Teaching order

1. Goal: build a landscape, score animal patterns and big habitat areas (components.md)
2. Components and tile anatomy: habitats, animal symbols, pine-cone tiles (components.md)
3. Setup with the player count (setup.md)
4. The turn: overpopulation, take a pair, pine-cone options, placing tile and animal, refill (turn.md)
5. The five scoring cards in play – go through each species (wildlife-scoring-cards.md)
6. Habitat scoring and majority bonus, pine cones, tiebreak; show the GS S. 9 example (scoring.md)
7. End of game after 20 turns
8. Optional: simple scoring for kids, solo, Landmarks module, faster game, challenges (variants-solo.md, landmarks.md, challenges.md)

## Sources

- Base game rulebook (PDF, German, KOSMOS): https://fragkosmos.zendesk.com/hc/de/article_attachments/8252118730396
- Cascadia Landmarks rulebook (PDF, German, KOSMOS): https://fragkosmos.zendesk.com/hc/de/article_attachments/10618294375068
- Product page (KOSMOS): https://www.kosmos.de/products/cascadia-im-herzen-der-natur

If a player wants to check the original text, give them the page number and the PDF link.
