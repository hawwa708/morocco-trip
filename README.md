# Morocco Trip · Travel Wallet

A single-file travel budget dashboard (FCFA). No build, no dependencies — just open `index.html`.

**Live app:** enable GitHub Pages on this repo (Settings → Pages → Deploy from branch → `main`, `/`), then visit `https://<your-username>.github.io/<repo-name>/`.

## Features

- Balance, budget meter (with a camel 🐪), daily "safe to spend" stats
- Expenses & funds with categories, edit, filters and search
- Data lives in your browser (localStorage) — nothing is stored in this repo
- Optional **cloud sync across devices** via your own free Supabase project

## Cloud sync setup (optional, ~5 minutes)

1. Create a free project at [supabase.com](https://supabase.com).
2. In the project: **SQL Editor → New query**, paste the contents of [`supabase-setup.sql`](supabase-setup.sql), and Run.
3. In the project: **Settings → API**, copy the **Project URL** and the **anon public key**.
4. In the app: click the **☁ cloud button**, paste both values, then create your account (email + password).
5. Repeat step 4 on each device and sign in with the same account. Newest edit wins.

Your data is private to your account (Postgres row-level security); the anon key is designed to be public.
