-- Beat the Heat — global leaderboard table
-- Run this once in the Supabase SQL editor of the neuron-snake project
-- (https://supabase.com/dashboard/project/amyxocqdfcaeieerqllv/sql).
--
-- Scores are one row per finished Infinite Summer run:
--   day     = the day the run ended on
--   chilled = total coworkers delivered to the pool across the run

create table if not exists public.heatwave_scores (
  id         uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  name       text not null check (char_length(name) between 1 and 16),
  day        int  not null check (day between 1 and 10000),
  chilled    int  not null check (chilled between 0 and 100000)
);

alter table public.heatwave_scores enable row level security;

-- Anyone may read the board and post a score. No updates or deletes:
-- shame, like a melted coworker, is permanent.
create policy "heatwave scores are public"
  on public.heatwave_scores for select using (true);

create policy "anyone can post a heatwave score"
  on public.heatwave_scores for insert with check (true);

create index if not exists heatwave_scores_rank
  on public.heatwave_scores (day desc, chilled desc, created_at asc);
