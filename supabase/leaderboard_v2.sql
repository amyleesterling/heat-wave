-- Beat the Heat — leaderboard v2: splash-focused scoring
-- Run once in the Supabase SQL editor (same project as before).
-- Adds the puddle count so the board can show splash-vs-puddle ratios.
alter table public.heatwave_scores
  add column if not exists melted int not null default 0
  check (melted between 0 and 100000);
