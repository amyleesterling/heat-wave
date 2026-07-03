# Beat the Heat 🥵

**▶️ PLAY IT NOW: [amyleesterling.github.io/heat-wave](https://amyleesterling.github.io/heat-wave/)** · best on a phone, in portrait

**🌍 Tiny World (beta): [amyleesterling.github.io/heat-wave/world.html](https://amyleesterling.github.io/heat-wave/world.html)** — a rotatable pastel-Escher diorama: spin the little world until the walkways agree

A tiny, oddly satisfying mobile browser game for surviving the heat wave from the safety of your couch.

It's 104°F outside. The dress code, tragically, survives. Guide little business-casual coworkers from **Hot Desk Inc.** across the shimmering plaza to **THE PUBLIC POOL** before they melt into pastel puddles. Survivors cannonball in, khakis and all. *Monument Valley* meets *Lemmings*, with lanyards.

## How to play

Every level is two phases, Monument Valley style:

1. **🧩 Solve the path.** The elevated walkway is broken by rotundas — tap to spin them until the path connects. Later levels gear rotundas together (spinning one spins its partner). Pre-place your tools in peace, then hit **OPEN THE DOORS**.
2. **🚶 Run the commute.** Coworkers stream out Lemmings-style and their heat meters climb in the sun:
   - ⛱️ **Parasol** — portable shade; pauses the cooking
   - ⛲ **Sprinkler** — aggressive moisture; actively cools everyone nearby
   - 🍧 **Paleta cart** — hands out a limited stock of emergency popsicles
   - **Tap a person to fan them** with your finger. They love that.
   - **⏩ fast-forward** once your setup is down.

Watch for **scorch zones** (glowing asphalt = double cooking), **joggers** (fast, but they cook faster), and the **Regional VP** (slow, gold tie, worth 3 — baby them). Hit the quota to clock out; melted colleagues leave a puddle, their tie, and a memo from HR.

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
