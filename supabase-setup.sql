-- Morocco Trip Wallet — Supabase setup
-- Run this once in your Supabase project: Dashboard → SQL Editor → New query → paste → Run.

create table public.wallet (
  user_id    uuid primary key default auth.uid() references auth.users(id) on delete cascade,
  data       jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.wallet enable row level security;

create policy "own row select" on public.wallet
  for select using (auth.uid() = user_id);

create policy "own row insert" on public.wallet
  for insert with check (auth.uid() = user_id);

create policy "own row update" on public.wallet
  for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
