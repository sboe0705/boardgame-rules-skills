---
name: explain-stuffed-fables
description: 'Explains the rules of the cooperative board game "Stuffed Fables" (German edition "Der Herr der Träume", Plaid Hat / Z-Man / Asmodee) and answers rules questions with rulebook page references. Use whenever someone asks how to play Stuffed Fables / Der Herr der Träume, wants a rules explanation, setup help or a turn summary, or has a question about stuffies/Stoffis, minions/Monster, dice colors, threat track/Bedrohungsleiste, surges, encounters, skill tests/Würfelproben, group tasks, items, sleep cards, collapsing, buttons and hearts, e.g. "How does the minion turn work?" or "Was passiert, wenn mein Stoffi keine Watte mehr hat?".'
license: Apache-2.0
metadata:
  author: Sebastian Böhm
---

# Explain Stuffed Fables (Der Herr der Träume)

This skill holds the complete rules of *Stuffed Fables* in `references/`, transcribed from the official rulebooks so the PDFs don't have to be read. Every rule has the rulebook page number.

## How to answer

1. **Language:** answer in the language the person asks in, or the one they request. In German, use the **official German terms** from the German edition (see `references/terminology-en-de.md`; e.g. Stoffi, Monster, Watte, Bedrohungsleiste, Buchwächter, *pink* dice instead of purple). You can give the English term in brackets if it helps.
2. **Look it up, don't rely on memory:** read the relevant reference file(s) below before answering. Answer only from them.
3. **Cite pages:** give the rulebook page, e.g. "(Rulebook p. 9)" in English or "(Spielanleitung S. 9)" in German. Both rulebooks have 16 pages with the same layout, so page numbers match. When a German-edition wording differs, mention it (these spots are marked in the references, e.g. "DE differs").
4. **Gaps:** if the rulebook doesn't cover something, say so plainly. Point to (a) the current **Storybook page** (SETUP / SPECIAL RULES / sidebar, which override the general rules) and (b) the official FAQ/forums. Label your own reading as an interpretation, never as an official rule. Story contents (what happens in a section) are not part of this skill; don't invent them.
5. **Precedence:** specific text on the Storybook page or a card overrides the general rulebook.
6. **Choose the format to fit the request:**
   - *Single rules question:* short, direct answer, then the details/edge cases, then page reference(s).
   - *Teach the game / full explanation:* follow the "Teaching order" below; keep it friendly and concrete, use an example turn.
   - *Quick reference / summary:* use the turn overview in compact list form.
   - *Setup help:* walk through the 10 setup steps with the player count filled in (e.g. 3 stuffies → 4 white + 4 black dice).

## Reference files

| File | Content | Rulebook pages |
|---|---|---|
| `references/components.md` | Object of the game, component list, Storybook, sideboard, character cards (incl. abilities of Theadora, Stitch, Flops, Lumpy), minion card, discovery deck, status/environment/Lost/item/sleep cards, dice, tokens | EN/DE p. 2–5 |
| `references/setup.md` | Game setup (10 steps), bookkeeper, page setup, reading a map (lines, Lost, points of interest, vendors, bracketed spaces), leaving a page, random/named encounters, bosses | EN/DE p. 5–7 |
| `references/player-turn.md` | Player turn: draw dice, find stuffing, place threat, actions by die color (move, reserve, encourage, skill test, group task, melee/ranged attack, search), equipment slots, party items, bonuses & purple dice, discard, check threat & surges | EN/DE p. 8–11 |
| `references/minion-turn.md` | When minions act; activation: roll, move, target, attack; discard threat & refresh dice | EN/DE p. 11–13 |
| `references/damage-status-end.md` | Defending, status cards, collapsed, sleep deck (Sleeping/Restless/Waking), buttons, hearts, winning/losing | EN/DE p. 13 |
| `references/glossary.md` | Full glossary with German terms | EN/DE p. 14 |
| `references/terminology-en-de.md` | English ↔ German term table (characters, components, actions, abilities, items) | – |

## Quick overview (for orientation; details are in the references)

- **Cooperative, 2–4 players** (in a 2-player game each player may run 2 stuffies). You play stuffed animals protecting a sleeping girl from Crepitus's minions, through a campaign of stories in the **Storybook**, whose pages are the maps. (p. 2, 5)
- **Dice bag:** attribute dice (red, green, yellow, blue, purple), plus white stuffing dice and black threat dice, (number of stuffies + 1) of each. (p. 5)
- **Player turn** (p. 8–11): **1** draw 5 dice → **2** roll white dice to find stuffing (result ≥ current stuffing → +1) → **3** put black dice on the threat track → **4** spend the colored dice on actions (any color: move/reserve/encourage/skill test/group task; red = melee, green = ranged, yellow = search, purple = wild) → **5** discard leftovers → **6** check threat.
- **Check threat** (p. 11): with minions in play, threat dice ≥ number of minions → **minion turn**. With no minions in play, threat dice ≥ number of stuffies → **surge** (page effect, often a new encounter or a sleep card), then clear the track and refresh the bag.
- **Minion turn** (p. 12–13): top to bottom of the minion column, each minion rolls a threat die → its action sets speed/range/strength → it moves toward the nearest stuffy → targets the closest stuffy in range → attacks (the stuffy may defend with its stored die). Then discard the remaining threat dice and refresh the bag.
- **Losing stuffing:** at 0 stuffing a stuffy **collapses** (discards statuses/buttons/hearts, reveal a sleep card); it comes back by gaining stuffing. **All stuffies collapsed at once = loss.** The **Waking** sleep card changes the ending you get if you win. (p. 13)
- **Rewards:** buttons for defeated minions (spent at vendors), hearts from the story (spent on earned abilities), items from searching. (p. 6, 10, 13)

## Teaching order (for a full explanation to new players)

1. Theme & goal, cooperative, the Storybook as the board (components.md → Object of the Game)
2. Components at a glance: character card, dice colors, sideboard (components.md)
3. Setup (setup.md → Game Setup)
4. Reading a map: lines, start spaces, Lost, points of interest, vendors, search number (setup.md)
5. Player turn, step by step, with a short example turn (player-turn.md)
6. Threat & surges → encounters (player-turn.md → Check Threat, setup.md → Encounters)
7. Minion turn (minion-turn.md)
8. Damage, defending, collapsing, sleep deck, hearts & buttons, winning/losing (damage-status-end.md)
9. "Just start story 1, *The Big Girl Bed*; the Storybook teaches the rest."

## Sources

- English rulebook (PDF): https://cdn.svc.asmodee.net/production-zman/uploads/2024/10/ph2200-rulebook_web.pdf
- German rulebook (PDF): https://asmodee-resources.azureedge.net/media/germanyprod/Produkte/Der%20Herr%20der%20Tr%C3%A4ume/Download/Der%20Herr%20der%20Tr%C3%A4ume_REGEL%20DE.pdf
- Product pages: https://www.zmangames.com/game/stuffed-fables/ (EN) · https://www.asmodee.de/produkte/der-herr-der-traume (DE)

If a player wants to check the original text, give them the page number and the PDF link for their language.
