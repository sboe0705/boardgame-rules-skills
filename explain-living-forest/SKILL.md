---
name: explain-living-forest
description: 'Explains the rules of the board game "Living Forest" (Pegasus Spiele / Ludonaute, Aske Christiansen; same title in the German edition) and answers rules questions in German or English with rulebook page references. Use whenever someone asks how to play Living Forest, wants a rules explanation, setup help or a round summary, or asks about nature spirits, revealing animals, solitary and gregarious symbols, fire varans, magic fragments, elements, the actions (take a fragment, attract animals, extinguish fires, move on the stone circle, plant a tree), bonus actions, bonus tiles, flames, the Sacred Tree or the victory conditions (12 trees, 12 flames, 12 sacred flowers). German triggers: Living Forest Regeln, Spielanleitung, Naturgeist, Tierphase, Aktionsphase, Rundenende, Einzelgänger, gesellige Tiere, Feuer-Waran, Magie-Fragment, Steinkreis, Flammen-Plättchen, Bonus-Plättchen, Heilige Blume, Siegbedingung. Example questions: "Wie viele Aktionen habe ich bei 3 Einzelgängern?" or "When does the game end?".'
license: Apache-2.0
metadata:
  author: Sebastian Böhm
---

# Explain Living Forest (DE / EN)

This skill holds the complete rules of *Living Forest* in `references/`, transcribed from the official **German** Pegasus Spiele rulebook (v1.0, 16 pages; no English rulebook was provided). Every rule has its page number; printed page = PDF page.

## How to answer

1. **Language:** answer in the asker's language. In German use the **official Pegasus terms** from `references/terminology-en-de.md` (e.g. Naturgeist, Tier-Reihe, Einzelgänger, Feuer-Waran, Magie-Fragment, Steinkreis, Flammen-Plättchen, Bonus-Plättchen, Geweihter Baum). In English use the English terms from that file; they are working translations, not verified against an English rulebook – say so if exact English wording matters.
2. **Look it up, don't rely on memory:** read the matching reference file(s) before answering and answer only from them. Don't mix in rules from other editions, the solo mode, expansions or online FAQs – the rulebook covers only the 2–4 player base game.
3. **Cite pages:** "(Spielanleitung S. 7)" in German, "(German rulebook p. 7)" in English.
4. **Elements:** the rulebook shows four elements only as icons (sun, water drop, seedling, spiral) and names only the Heilige Blume. Describe the icon when naming an element.
5. **Gaps:** if the rules don't cover something, say so (known gaps are listed in the reference files), point to the Pegasus product page / customer service and label your own reading as an interpretation. Statements marked "follows from the rules" or "interpretation" in the references must be passed on as such.
6. **Choose the format:**
   - *Single rules question:* short direct answer, then details/edge cases, then page(s).
   - *Teach the game:* follow the teaching order below with a sample round.
   - *Quick reference:* quick overview below.
   - *Setup help:* walk through `references/setup.md` with the player count filled in (starting positions, trees removed).

## Reference files

| File | Content | Pages |
|---|---|---|
| `references/components.md` | Object of the game, component list, element icons, anatomy of animal cards, trees, forest board, stone circle and other boards | S. 1–3, 6, 9, 12–13 |
| `references/setup.md` | The 6 setup steps, starting positions, trees removed with 2 and 3 players | S. 4–5 |
| `references/round-animal-phase.md` | Gameplay and goals, round structure, phase A: revealing animals, solitary/gregarious symbols, fire varans, magic fragments, example | S. 6–8 |
| `references/action-phase.md` | Phase B: number of actions, how elements count, the 5 actions, bonus actions, tree effects, column/row and corner bonuses, examples | S. 8–13 |
| `references/round-end-game-end.md` | Phase C: fending off flames, new flames, refilling, discarding, Sacred Tree; end of game, victory conditions, tie-break, example | S. 13–16 |
| `references/terminology-en-de.md` | German ↔ English terms: headings, components, game terms, names, element icons | – |

## Quick overview

- **2–4 players**, each a nature spirit with a personal deck of 14 starting animals and a forest board. (S. 1, 4)
- **Goal:** be the one who has **12 different trees**, **12 flames** or **12 sacred flowers** at the start of an end-of-round phase. (S. 6, 15)
- **Setup essentials:** starting tree in the forest centre, 3 bonus tiles each, figures on the stone circle by player count, 3 × 4 animals as supply, one 2-flame in the stone circle, trees in the holders (3 players: remove 6, 2 players: remove 15). (S. 4–5)
- **A – Animal phase (simultaneous):** reveal animals one by one from your draw pile; stop when you like, but you must stop at 3 solitary symbols (each gregarious symbol cancels one). A magic fragment removes a just-revealed fire varan for good or discards another animal. (S. 6–7)
- **B – Action phase (clockwise from the Sacred Tree):** fewer than 3 net solitary symbols → 2 different actions, exactly 3 → 1 action. Actions: take a fragment; attract animals (sun) onto your draw pile; extinguish flames (water); move on the stone circle (spiral), jumping others to take a bonus tile and triggering the stone's bonus action; plant one tree (plant) adjacent to another. Elements are never used up. (S. 8–13)
- **C – End of round:** check victory first. Then: water lower than the flame value → take one fire varan per flame tile; add flames for animals attracted (level 1/2/3 → value 2/3/4, max 7, at least one 2); refill animals; discard rows; pass the Sacred Tree. (S. 13–15)
- **Winner:** the only player meeting a condition; if several do, the highest total of different trees + flames + sacred flowers among them; ties share the win. (S. 15–16)

## Teaching order

1. Theme and the three ways to win (round-animal-phase.md, round-end-game-end.md)
2. Components: animal card anatomy, the five elements, forest board, stone circle (components.md)
3. Setup with the player count (setup.md)
4. Round structure A–B–C (round-animal-phase.md)
5. Animal phase: push your luck, solitary vs. gregarious, fire varans, magic fragments; show Mark's example S. 8
6. Action phase: 1 or 2 actions, elements are not used up, the five actions with one example each (action-phase.md)
7. Trees: effects, column/row bonuses, corner bonus actions; stone circle bonus actions and stealing bonus tiles
8. End of round: fending off flames, fire varans, new flames, refill, Sacred Tree (round-end-game-end.md)
9. End of game: checked only at the start of phase C; comparison when several players qualify; example S. 16

## Sources

- Rulebook (PDF, German, Pegasus Spiele): https://cdn.pegasus.de/public/media/3c/6d/a8/1717757270/4250231731631_de.pdf?ts=1752574417
- Product page (Pegasus Spiele): https://pegasus.de/Living-Forest-Kennerspiel-des-Jahres-2022/51234G

If a player wants to check the original text, give them the page number and the PDF link.
