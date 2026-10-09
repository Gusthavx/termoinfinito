-- TERMO ∞ · ranking no Supabase
-- Pode rodar mais de uma vez sem erro.

-- Uma linha por partida
create table if not exists public.partidas (
  id bigint generated always as identity primary key,
  nome text not null check (char_length(nome) between 1 and 20),
  modo text not null check (modo in ('Termo', 'Dueto', 'Quarteto')),
  resultado text not null check (resultado in ('vitoria', 'derrota', 'desistencia')),
  tentativas smallint not null check (tentativas between 0 and 9),
  max_tentativas smallint not null check (max_tentativas in (6, 7, 9)),
  acertos smallint not null check (acertos between 0 and 4),
  palavras text[] not null check (cardinality(palavras) between 1 and 4),
  criado_em timestamptz not null default now()
);

-- Segurança: o site só grava partida nova e lê; não edita nem apaga
alter table public.partidas enable row level security;
grant select, insert on table public.partidas to anon;

drop policy if exists "Jogador registra partida" on public.partidas;
create policy "Jogador registra partida" on public.partidas
  for insert to anon with check (true);

drop policy if exists "Todos veem o ranking" on public.partidas;
create policy "Todos veem o ranking" on public.partidas
  for select to anon using (true);

-- Ranking por nome e modo
create or replace view public.ranking with (security_invoker = true) as
select
  nome,
  modo,
  count(*) as jogos,
  count(*) filter (where resultado = 'vitoria') as vitorias,
  round(100.0 * count(*) filter (where resultado = 'vitoria') / count(*)) as pct_vitorias,
  round(avg(tentativas) filter (where resultado = 'vitoria'), 2) as media_tentativas
from public.partidas
group by nome, modo;

grant select on public.ranking to anon;
