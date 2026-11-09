---
name: explain-terraforming-mars
description: 'Explains the rules of the strategy board game "Terraforming Mars" (FryxGames / Stronghold Games, Jacob Fryxelius; base game) and answers rules questions with rulebook page references. Use whenever someone asks how to play Terraforming Mars, wants a rules explanation, setup help, a turn or generation summary or a full teach, or has a question about terraform rating (TR), global parameters (temperature, oxygen, oceans), generations and phases (player order, research, action, production), buying and playing project cards, corporations, card requirements, tags, red-bordered icons, steel and titanium, MegaCredits, energy and heat, placing ocean, greenery and city tiles, placement bonuses, standard projects, milestones and awards, blue card actions, converting plants or heat, game end and final scoring, or the Corporate Era, solo and draft variants. Example questions: "Do I get TR for a greenery when oxygen is already at 14%?" or "Who gets the points for an award I funded?".'
license: Apache-2.0
metadata:
  author: Sebastian Böhm
---

# Explain Terraforming Mars (EN)

This skill holds the complete rules of the *Terraforming Mars* base game in `references/`, transcribed from the official English rulebook so the PDF doesn't have to be read. Every rule has its rulebook page number.

## How to answer

1. **Language:** answer in the language the person asks in, or the one they request. The skill is based on the English rulebook only, so in other languages translate naturally and give the English term in brackets the first time (e.g. terraform rating, greenery tile, standard project, milestone, award). Don't present a translated term as the official term of a localized edition.
2. **Look it up, don't rely on memory:** read the relevant reference file(s) below before answering. Answer only from them.
3. **Cite pages:** give the rulebook page, e.g. "(Rulebook p. 11)". Printed page numbers equal PDF page numbers (16 pages, cover = p. 1).
4. **Gaps:** if the rulebook doesn't cover something, say so plainly. Known gaps are marked in the references ("the rulebook doesn't say …", "interpretation", "follows from the rule"). Point to the card's own text in parenthesis and to the publisher's website (FryxGames) for official clarifications. Label your own reading as an interpretation, never as an official rule.
5. **Individual cards:** the rulebook describes only a handful of example cards. For any other card, ask for the card's text (the explanation in parenthesis) and apply the general rules to it. Don't describe card effects from memory.
6. **Precedence:** card text overrides the general rules where a card is marked with **(\*)** (p. 10); otherwise the text in parenthesis on the card explains how it works (p. 6, 10, 12).
7. **Expansions:** this skill covers the base game with its Corporate Era, solo and draft variants. Expansions (other maps, Venus Next, Prelude, Colonies, Turmoil …) are not covered; say so if asked.
8. **Choose the format to fit the request:**
   - *Single rules question:* short, direct answer, then the details/edge cases, then page reference(s).
   - *Teach the game / full explanation:* follow the "Teaching order" below; keep it concrete, use the rulebook's examples.
   - *Quick reference / summary:* the quick overview plus the action list, standard project costs, milestones and awards in compact form.
   - *Setup help:* walk through the setup steps for the chosen variant (standard game, Corporate Era, solo), and mention the Beginner Corporations for new players.

## Reference files

| File | Content | Rulebook pages |
|---|---|---|
| `references/components.md` | Game overview, global parameters, game board (tracks, bonus steps, reserved areas), tiles (ocean, greenery, city, special), markers, player boards, card anatomy, components list | p. 3–6, 16 |
| `references/setup.md` | Setup steps for the standard game, Beginner Corporations, setup example, differences in the variants | p. 7 |
| `references/generations.md` | The 4 phases of a generation: player order, research, action (1–2 actions, passing), production; examples | p. 8 |
| `references/actions.md` | The 7 actions: playing a card (requirements, paying, effects, card placement, example cards A–E), standard projects, milestones, awards, blue card actions, converting plants and heat | p. 9–11 |
| `references/game-end.md` | End condition, final greenery conversion, final scoring, tiebreak, scoring example, simultaneous effects | p. 12 |
| `references/variants.md` | Corporate Era (extended game), solo variant, draft variant | p. 13 |
| `references/symbols.md` | The rulebook's symbol glossary: VPs, parameters, resources, production, cards, tags, tile symbols, red border on icons | p. 14–15 |

## Quick overview (for orientation; details are in the references)

- **Goal:** most VPs at the end. VPs come from your terraform rating (TR), your tiles, awards, milestones and played cards. (p. 3, 12)
- **Global parameters:** temperature (−30 °C → +8 °C in 2 °C steps), oxygen (0 % → 14 %), oceans (9 tiles). Raising one raises your TR by the same number of steps; a parameter at its goal gives no TR. (p. 3–4, 14)
- **Setup essentials:** TR 20, 1 production of each resource (standard game only), choose 1 of 2 corporations, buy any of 10 project cards for 3 M€ each. New players take a Beginner Corporation: 42 M€ and 10 cards. (p. 7)
- **Generation:** 1) player order (first player marker moves clockwise), 2) research (draw 4 cards, buy any for 3 M€ each), 3) actions, 4) production. The first generation skips phases 1 and 2. (p. 8)
- **Action phase:** on your turn take 1 or 2 actions or pass; passing puts you out for the generation. Actions: play a card, standard project, claim a milestone (8 M€), fund an award (8 / 14 / 20 M€), use a blue card action (once per generation), 8 plants → greenery, 8 heat → temperature. (p. 8–11)
- **Paying:** steel = 2 M€ for building tags, titanium = 3 M€ for space tags. (p. 6)
- **Production phase:** energy becomes heat, then M€ income = TR + M€ production, then the other resources; reset used action cards. (p. 8)
- **Tiles:** oceans only on reserved areas (TR +1, later neighbours get 2 M€ each); greenery next to your own tile if possible (oxygen +1, 1 VP); cities not next to another city (1 VP per adjacent greenery). (p. 5)
- **Game end:** when all three parameters are at their goal, finish the generation including production; then one last plants-to-greenery conversion in player order and the final scoring. Tiebreak: most M€. (p. 12)

## Teaching order (for a full explanation to new players)

1. Theme and goal: corporations terraform Mars; TR is both income and score; other VP sources (components.md → Game overview)
2. Global parameters and the end condition (components.md → Global parameters; game-end.md)
3. Game board: tracks, bonus steps, map, reserved areas, standard projects, milestones and awards (components.md → Game board)
4. Player board: six resources, production tracks, M€ income = TR + production, steel/titanium values, energy → heat (components.md → Player boards)
5. Cards: corporation and project cards, card anatomy, tags, requirements, the three colours (components.md → Cards; symbols.md → Tags)
6. Tiles and placement bonuses (components.md → Tiles)
7. Setup, with Beginner Corporations for new players (setup.md)
8. The generation: research, action phase with 1–2 actions and passing, production (generations.md)
9. The actions one by one, with playing a card first, then standard projects, plant and heat conversion, blue card actions, and milestones and awards last (actions.md)
10. Red-bordered icons and how to read card text (symbols.md → Red border on icons)
11. Game end and final scoring with the example (game-end.md)
12. Mention the variants for later games: Corporate Era, draft, solo (variants.md)

## Sources

- English rulebook (PDF, FryxGames): https://fryxgames.se/wp-content/uploads/2023/04/TMRULESFINAL.pdf
- Product page (FryxGames): https://fryxgames.se/product/terraforming-mars/

If a player wants to check the original text, give them the page number and the PDF link.
