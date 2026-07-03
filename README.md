# Beat the Heat 🥵

A tiny, oddly satisfying mobile browser game for surviving the heat wave from the safety of your couch.

It's 104°F outside. The dress code, tragically, survives. Guide little business-casual coworkers from **Hot Desk Inc.** across the shimmering plaza to **THE PUBLIC POOL** before they melt into pastel puddles. Survivors cannonball in, khakis and all. *Monument Valley* meets *Lemmings*, with lanyards.

## How to play

- Coworkers walk on their own — Lemmings-style. Out in the sun, their heat meter climbs.
- **Tap a tool, then tap the street** to place it:
  - ⛱️ **Parasol** — portable shade; pauses the cooking
  - ⛲ **Sprinkler** — aggressive moisture; actively cools everyone nearby
  - 🍧 **Paleta cart** — hands out a limited stock of emergency popsicles
- **Tap a person to fan them** with your finger. They love that. (Small cooldown per person.)
- Hit the quota of survivors to clock out. Melted colleagues leave a puddle, their tie, and a memo from HR.

Six handcrafted levels, then **Infinite Summer** endless mode: each day is hotter, and when a day finally defeats you, the run ends — post your `Day reached · total chilled` to the global **Hall of Legends** leaderboard. Progress saves locally.

## Leaderboard setup (one-time)

The global board lives in Supabase. To wire it up:

1. Run `supabase/leaderboard.sql` in the project's SQL editor (creates the `heatwave_scores` table with RLS: public read + insert only).
2. Put the project's **publishable/anon key** in the `LB.key` field near the top of the script in `index.html`.

Without a key the game still works — the Hall of Legends just shows your local best.

## Run it

It's one self-contained `index.html` — no build, no dependencies.

- Open `index.html` in any browser, or
- `npx serve .` and open it on your phone (best in portrait), or
- Enable GitHub Pages on this repo and share the link with everyone hiding indoors.

Stay inside. Hydrate. Fan liberally.
