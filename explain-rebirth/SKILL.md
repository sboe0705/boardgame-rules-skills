---
name: explain-rebirth
description: 'Explains the rules of the tile-laying board game "Rebirth" (German edition "Rebirth: Aufbruch in eine neue Zeit", Frosted Games / Mighty Boards, Reiner Knizia) and answers rules questions in German or English with rulebook page references. Use whenever someone asks how to play Rebirth, wants a rules explanation, setup help or a turn summary, or asks about the Scotland or Ireland variant, placing tiles, food and energy facilities, groups, settlements and their majorities, harbours, castles and castle control, cathedrals, mission cards, round towers and their bonuses, wind collectors, ties, final scoring or the 2-player setup. German triggers: Rebirth Regeln, Spielanleitung, Schottlandvariante, Irlandvariante, Plättchen platzieren, Nahrungs-Anlage, Energie-Anlage, Siedlung, Hafen, Burg, Kathedrale, Missionskarte, Rundturm, Rundturmbonus, Windsammler, Verdopplungsmarker, Gleichstand, Schlusswertung. Example questions: "Wer bekommt die Burg bei Gleichstand?" or "How are settlements scored?".'
license: Apache-2.0
metadata:
  author: Sebastian Böhm
---

# Explain Rebirth (DE / EN)

This skill holds the complete rules of *Rebirth: Aufbruch in eine neue Zeit* in `references/`, transcribed from the official **German** Frosted Games material (v1.1): the Scotland rulebook, the Ireland rulebook and the player aid with the Scotland card explanations. No English rulebook was provided.

**Page citations:** the two variants have separate 4-page rulebooks, so always name the rulebook: "SCO S. 3" = Scotland rulebook, "IRL S. 3" = Ireland rulebook (printed page numbers; the Ireland PDF is in reverse page order, PDF page 1 = printed S. 4), "Aid front/back" = player aid (unnumbered).

## How to answer

1. **Language:** answer in the asker's language. In German use the **official Frosted Games terms** from `references/terminology-en-de.md` (e.g. Plättchen, Nahrungs-Anlage, Energie-Anlage, Siedlung, Burg, Kathedrale, Missionskarte, Rundturm, Windsammler). In English use the English terms from that file; they are working translations, not verified against the English edition – say so if exact English wording matters.
2. **Which variant?** Scotland and Ireland differ (mission cards, cathedrals, harbours vs. wind collectors, round towers, setup numbers, tie-break). If the question depends on the variant and the asker hasn't said which they play, answer for Scotland (the base rules) and name the Ireland difference, or ask.
3. **Look it up, don't rely on memory:** read the matching reference file(s) before answering and answer only from them. Don't mix in rules from other editions, expansions or online FAQs.
4. **Cite pages:** "(Anleitung Schottland S. 3)", "(Anleitung Irland S. 4)", "(Spielhilfe Vorderseite)" in German; "(German Scotland rulebook p. 3)" etc. in English.
5. **Icons:** leaves = food, lightning bolt = energy, house = settlement symbol, "+1" marker = harbour (Scotland) / wind collector (Ireland). Describe the icon when it helps.
6. **Gaps:** if the rules don't cover something, say so (known gaps are listed in the reference files), point to the card text and the publisher's Discord named in the rulebook, and label your own reading as an interpretation. Statements marked "follows from the rule" or "interpretation" in the references must be passed on as such.
7. **Choose the format:**
   - *Single rules question:* short direct answer, then details/edge cases, then page(s).
   - *Teach the game:* follow the teaching order below; teach Scotland first, as the rulebook demands.
   - *Quick reference:* quick overview below.
   - *Setup help:* walk through `references/setup.md` for the chosen variant with the player count filled in (neutral tiles with 2, removed tiles with 4).

## Reference files

| File | Content | Pages |
|---|---|---|
| `references/components.md` | The two variants, object of the game, component lists, tile types, board anatomy, scoring overview card, point markers | SCO S. 1–4 · IRL S. 1–4 |
| `references/setup.md` | Scotland setup (10 steps), Ireland setup (12 steps), differences by player count | SCO S. 2 · IRL S. 2 |
| `references/turn.md` | The turn: placing tiles, scoring facilities, settlements, harbours, castles (incl. tie flowchart), cathedrals, drawing | SCO S. 2–4 · Aid back |
| `references/end-of-game.md` | End of game, final scoring and tie-break for Scotland and Ireland | SCO S. 4 · IRL S. 4 |
| `references/scotland-mission-cards.md` | All Scotland mission card types with explanations and examples | Aid front/back · SCO S. 4 |
| `references/ireland.md` | Ireland variant: wind collectors, extra-large settlement, public mission cards, round towers and bonuses | IRL S. 2–4 |
| `references/terminology-en-de.md` | German ↔ English terms: headings, components, game terms, card and bonus names | – |

## Quick overview

- **2–4 players**; double-sided board with two variants. Play **Scotland** first, Ireland builds on it. (SCO S. 1–2, IRL S. 1)
- **Goal:** most points from food and energy facilities, settlements, castles and mission cards. (SCO S. 2)
- **Setup essentials (Scotland):** 36 tiles per colour, mixed face down; 4 players each remove 3 energy, 3 food and one 2-, 3- and 4-house settlement; 2 players block 32 marked spaces with neutral tiles; set 2 tiles aside unused; draw 1 tile into your hand. (SCO S. 2)
- **Turn:** 1. place your hand tile on a matching free space (facilities also on empty spaces), 2. score it, 3. draw 1 tile. (SCO S. 2–4)
- **Scoring while playing:** facility = 1 point per tile in its own-colour group of that type; small settlement = houses on the tile; medium 5/3 and large 8/5/0 by houses once all spaces are full; harbour +1. (SCO S. 3)
- **Castles:** most adjacent tiles controls the castle; ties go to the most adjacent facilities, otherwise the castle stays. **Cathedrals:** first tile next to each cathedral space gives 1 secret mission card. (SCO S. 4)
- **End:** when all supplies are placed. Then: houses in incomplete settlements, 5 per castle, mission cards (5 each if fulfilled, a tie is enough; Cathedral Bonus 3). Tie-break: Edinburgh Castle, then Stirling Castle. (SCO S. 4)
- **Ireland adds:** 8 public mission cards (first to complete scores the higher value, later players the lower), round towers with bonus markers, wind collectors (+1), one 4-space settlement (12/8/5/0), 4 tiles set aside, 24 neutral tiles with 2 players; tie-break Blarney Castle, then Hill of Tara. (IRL S. 2–4)

## Teaching order

1. Theme, the two variants and the goal (components.md)
2. Components: the three tile types and house counts, castles, cathedrals, board spaces (components.md)
3. Setup with the player count (setup.md)
4. Turn structure: place – score – draw (turn.md)
5. Placement rules: matching symbol, empty spaces, forbidden spaces, the exception (turn.md)
6. Scoring facilities with examples A and B (SCO S. 3)
7. Settlements: small, medium, large, ties, harbours, with the examples (SCO S. 3)
8. Castles: control, ties, examples A and B (SCO S. 4, Aid back)
9. Cathedrals and mission cards; show the card types on the player aid (turn.md, scotland-mission-cards.md)
10. End of game, final scoring, tie-break (end-of-game.md)
11. Later, for Ireland: only the differences (ireland.md, setup.md)

## Sources

- Scotland rulebook (PDF, German, Frosted Games): https://www.dropbox.com/scl/fi/72j46zrfgoh39dq6c7827/Rebirth_Anleitung_Web_Schottland.pdf?rlkey=wamd5cpxcg60uc80eq7bazhvc&e=1&dl=0
- Ireland rulebook (PDF, German, Frosted Games): https://www.dropbox.com/scl/fi/hructg9qh0zt6l1bilf2m/Rebirth_Anleitung_Web_Irland.pdf?rlkey=qjlbx1fiz6wwdfmtpnldnga05&e=1&dl=0
- Player aid / Spielhilfe (PDF, German, Frosted Games): https://www.dropbox.com/scl/fi/jjgg93193cxn06ufs0qfp/1G1-4_Rebirth_Spielhilfe.pdf?rlkey=mwn5gw41cpzoh8tnjksy6zheh&dl=0
- Product page (Frosted Games): https://frostedgames.de/shop/rebirth-aufbruch-in-eine-neue-zeit/

If a player wants to check the original text, give them the rulebook, the page number and the PDF link.
