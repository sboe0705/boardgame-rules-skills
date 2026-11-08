# Minion Turn

Page references: **EN** = English rulebook, **DE** = German Spielanleitung (same page layout).

## When does a minion turn happen?
**Rulebook:** EN p. 11–12 · DE S. 11–12

- At a player's **Check Threat** step (step 6), if minions are in play and **dice on the threat track ≥ number of minions in play**.
- Immediately after a **surge** that brought minions into play (EN p. 11).
- (Storybook text can also trigger extra effects; follow the book.)

## Minion Turn Overview
**Rulebook:** EN p. 12 · DE S. 12

1. **Minion Activation** – for each minion: **Roll → Move → Target → Attack**
2. **Discard Threat and Refresh Dice**

---

## 1. Minion Activation
**Rulebook:** EN p. 12 · DE S. 12

- Start with the minion **at the top of the minion column** and activate minions **one at a time**, top to bottom, until **each minion in play has activated once**.
- Each activation, in order:

### Roll
- Take **one black die off the threat track** and roll it.
- Match the result to an **action** on the minion's card (e.g. "1-3: Rush", "4-6: Clickety"). That action sets the minion's **speed**, **range** and **strength** for this activation, plus any special rules.

### Move (speed icon: four-pointed arrow)
1. If the minion is **already adjacent to a stuffy**, it does **not move**.
2. Otherwise it moves toward the **nearest stuffy** (the stuffy it needs the fewest moves to become adjacent to) until it is **adjacent** to that stuffy **or** has moved spaces equal to its **speed**, whichever comes first.
   - Ties: if several stuffies are equally close, the **current bookkeeper** chooses which one it moves toward.
   - Minions **can move across solid colored lines** without penalty, **except solid white lines**.
   - DE S. 12 adds: a minion otherwise moves like a stuffy, along the shortest path.

### Target (range icon: crosshair)
1. **No stuffy within range** → the minion does not attack.
2. **Exactly 1 stuffy within range** → it targets that stuffy.
3. **Several stuffies within range** → it targets the **closest**. If equally close, the **bookkeeper** decides.
- Minions **can target across solid colored lines** (except solid white lines).
- **Collapsed stuffies are ignored** (EN p. 13; DE S. 12 says so explicitly here too).

### Attack (strength icon: starburst)
1. The minion deals **damage equal to its strength**.
2. If the target stuffy has a **die stored on its card**, it **may defend**: roll that stored die and **block damage up to the roll result** (item bonuses for defending apply, e.g. +1 to blue dice).
3. The stuffy loses **1 stuffing per unblocked damage**. If it loses all its stuffing it **collapses** (see damage-status-end.md).
4. If the stuffy defended and blocked **ALL** damage (lost no stuffing), the die **returns to its card**. Otherwise the defending die is **discarded**.

After the activation, **discard the black threat die** used for it and activate the **next minion** in the column.

### Notes and special cases
- Each minion uses **one** threat die. The minion turn is triggered when threat dice ≥ minions, so normally there's one die per minion.
- Stitch's **Distract** (earned ability) can skip a **normal** minion's activation by removing a yellow die stored on Stitch's card (components.md).
- Minion special text applies, e.g. Crawly's Clickety: "After this crawly attacks, move it 3 spaces toward the closest minion start space."
- Bosses: defeating them removes dark stuffing first (setup.md → Encountering a Boss).

## 2. Discard Threat and Refresh Dice
**Rulebook:** EN p. 13 · DE S. 13

- Once all minions have activated once: **discard any black threat dice still on the threat track**, **return all dice in the discard pool to the dice bag**, and continue with the **next player's turn** (to the left).
