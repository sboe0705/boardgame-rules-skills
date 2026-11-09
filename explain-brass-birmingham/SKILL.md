---
name: explain-brass-birmingham
description: 'Explains the rules of the economic strategy board game "Brass: Birmingham" (Roxley Games, Martin Wallace; same title in the German edition) and answers rules questions in English or German with rulebook page references. Use whenever someone asks how to play Brass Birmingham, wants a rules explanation, setup help or a turn summary, or has a question about the Canal Era / Rail Era, actions (Build, Network, Develop, Sell, Loan, Scout), consuming coal, iron or beer, connections and networks, merchants and merchant beer bonuses, overbuilding, income and loans, turn order, link and industry scoring, or the introductory game. German triggers: Brass Birmingham Regeln, Spielregel, Kanalepoche, Eisenbahnepoche, Bauen, Verbinden, Entwickeln, Verkaufen, Kredit aufnehmen, Erkunden, Kohle, Eisen, Bier, Händlerbonus, Überbauen, Einkommensstufe, Siegpunkte, Zugreihenfolge. Example questions: "Do I need a connection to buy iron from the market?" or "Wie funktioniert die Reihenfolge am Rundenende?".'
license: Apache-2.0
metadata:
  author: Sebastian Böhm
---

# Explain Brass: Birmingham (EN / DE)

This skill holds the complete rules of *Brass: Birmingham* in `references/`, transcribed from the official English and German rulebooks so the PDFs doesn't have to be read. Every rule has its rulebook page number.

## How to answer

1. **Language:** answer in the language the person asks in, or the one they request. In German, use the **official German terms** from `references/terminology-en-de.md` (e.g. Kanalepoche, Verbindungsplättchen, Ortsjoker, Händlerbonus, Spielertableau, SP). You can give the English term in brackets if it helps. In other languages, translate naturally and give the English term in brackets.
2. **Look it up, don't rely on memory:** read the relevant reference file(s) below before answering. Answer only from them.
3. **Cite pages:** give the printed rulebook page, e.g. "(Rulebook p. 8)" in English or "(Spielregel S. 8)" in German. Both rulebooks have the same layout, so page numbers match. Each PDF has 7 PDF pages (PDF p. 2–6 are two-page spreads), so always use the **printed** page number. Where the German wording differs, mention it (marked "DE differs" / "DE adds" in the references; e.g. the German component list says 20 coal and 20 iron cubes, the English one 30 and 18).
4. **Gaps:** if the rulebook doesn't cover something, say so plainly (known gaps are marked in the references, e.g. how players get a new Hand for the Rail Era). Point to the latest rulebook at roxley.com/brass-birmingham-rulebook (it's a "living document") and the official FAQ. Label your own reading as an interpretation, never as an official rule.
5. **Precedence:** the specific exception in a rule ("**Exception:**…") overrides the general rule it belongs to.
6. **Choose the format to fit the request:**
   - *Single rules question:* short, direct answer, then the details/edge cases, then page reference(s).
   - *Teach the game / full explanation:* follow the "Teaching order" below; keep it concrete, use a sample turn.
   - *Quick reference / summary:* the quick overview + action list in compact form.
   - *Setup help:* walk through Board Setup and Player Area Setup with the player count filled in (removed cards/Merchants, empty Merchant locations, rounds per era).

## Reference files

| File | Content | Rulebook pages |
|---|---|---|
| `references/components.md` | Theme, component list, board anatomy (locations, lines, Merchants, Markets, Progress Track, Turn Order Track), Player Mat, Industry tile, card and Merchant tile anatomy | p. 1, 4–5, 7–11 |
| `references/setup.md` | Board Setup (10 steps), Location Banners, Player Area Setup (9 steps), setup by player count | p. 4–5 |
| `references/playing-the-game.md` | Goal, rounds, player turns, action list, passing, spending money, end of round (turn order, income, negative income & shortfall) | p. 6 |
| `references/end-of-era.md` | Scoring Links and flipped tiles, end of Canal Era (remove level 1 tiles, reset Merchant beer, reshuffle), winning & tiebreaks | p. 7 |
| `references/gameplay-concepts.md` | Flipping tiles, increasing income, your network, connected locations, consuming coal / iron / beer | p. 8 |
| `references/actions-build.md` | Build action, moving coal/iron to the Market, building with no tiles on the board, Farm Breweries, Canal/Rail Era building, Overbuilding | p. 9–10 |
| `references/actions-other.md` | Sell (with Merchant beer bonuses), Loan, Scout, Develop (lightbulb Potteries), Network (canal/rail) | p. 10–11 |
| `references/tips-variants.md` | Things to remember, beginner tips, introductory game (Canal Era only) | p. 12 |
| `references/terminology-en-de.md` | English ↔ German term table (headings, components, industries, game terms, actions) | – |

## Quick overview (for orientation; details are in the references)

- **2–4 players**, economic game in two eras: **Canal Era** then **Rail Era**; most VPs after the Rail Era wins. (p. 1, 6)
- **Setup:** remove cards/Merchants above the player count; Merchant tiles on matching spaces; beer by non-blank Merchants; Coal Market full except one £1 space, Iron Market full except both £1 spaces; each player £17, income marker on 10, VP on 0, Hand of 8 + 1 face-down card as Discard Pile; random turn order. (p. 4–5)
- **Rounds:** 8 / 9 / 10 per era with 4 / 3 / 2 players. On your turn: **2 actions** (only 1 each in the very first round), **discard 1 card per action**, refill to 8. (p. 6)
- **Actions:** Build, Network, Develop, Sell, Loan, Scout (or pass); the same action may be taken twice. (p. 6, 9–11)
- **Resources:** coal from the closest connected Coal Mine, else the Market (needs a Merchant connection); iron from any Iron Works, else the Market (no connection); beer from your own Brewery (no connection), a connected opponent's Brewery, or Merchant beer when selling. (p. 8)
- **End of round:** least money spent goes first next round; then collect (or pay) income. (p. 6)
- **End of era:** score Links (1 VP per Link icon in both adjacent locations), then flipped Industry tiles. After the Canal Era, remove level 1 tiles, refill Merchant beer, reshuffle discards. (p. 7)
- **Tiebreaks:** highest income, then most money. (p. 7)

## Teaching order (for a full explanation to new players)

1. Theme & goal: two eras, VPs from Links and flipped tiles (components.md, playing-the-game.md → The Goal)
2. Components and board: locations, canal/rail lines, Merchants, Markets, Progress Track (components.md)
3. Setup (setup.md)
4. Turn structure: 2 actions, discard a card each, refill to 8; money spent sets turn order (playing-the-game.md)
5. Network vs. connection; consuming coal, iron, beer (gameplay-concepts.md)
6. The actions: Build (cards, placement, costs, Markets), then Network, Sell, Develop, Loan, Scout (actions-build.md, actions-other.md)
7. Flipping tiles and income (gameplay-concepts.md)
8. End of round, end of era scoring, Canal → Rail transition, winning (playing-the-game.md, end-of-era.md)
9. Beginner tips; offer the introductory game (Canal Era only) for a first play (tips-variants.md)

## Sources

- English rulebook (PDF, Roxley): https://cdn.shopify.com/s/files/1/0618/9996/4569/files/brass-birmingham-rulebook.pdf
- German rulebook (PDF, Roxley, 2018-07-11): http://files.roxley.com/Brass-Birmingham-Rulebook-DE-2018.07.11.pdf
- Latest rulebook (Roxley "living document" page): https://roxley.com/brass-birmingham-rulebook
- Product page: https://roxley.com/products/brass-birmingham
- Video tutorials: https://roxley.com/brass-tutorial

If a player wants to check the original text, give them the page number and the PDF link for their language.
