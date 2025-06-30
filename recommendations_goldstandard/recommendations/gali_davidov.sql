insert into imdb_ijs.movies_recommendations

with Crime_Movies as (
  select 2 as movie_id
  union select 12
  union select 20
  union select 33
  union select 37
  union select 53
  union select 108
  union select 167
  union select 168
  union select 184
)
select 
  c1.movie_id, 
  c2.movie_id, 
  9, 
  'Gali Davidov', 
  'Crime movies', 
  null
from 
  Crime_Movies as c1,
  Crime_Movies as c2
where 
  c1.movie_id < c2.movie_id;  -- 🔹 avoids duplicate/reverse pairs
  
  insert into imdb_ijs.movies_recommendations

with Doctors_Movies as (
  select 28092 as movie_id
  union select 70960
  union select 257744
  union select 349375
  union select 263076
  union select 85524
  union select 263403
  union select 288493
  union select 33492
  union select 203481
)
select 
  d1.movie_id, 
  d2.movie_id, 
  9, 
  'Gali Davidov', 
  'Medical-themed movies', 
  null
from 
  Doctors_Movies as d1,
  Doctors_Movies as d2
where 
  d1.movie_id < d2.movie_id;



insert into imdb_ijs.movies_recommendations

with Comedy as (
  select 2 as movie_id
  union select 6
  union select 8
  union select 11
  union select 15
  union select 18
),
Horror as (
  select 62 as movie_id
  union select 73
  union select 117
  union select 118
  union select 133
  union select 156
  union select 230
  union select 262
  union select 302
  union select 337
)
select 
  c.movie_id as base_movie_id,
  h.movie_id as recommended_movie_id,
  1 as recommendation,
  'Gali Davidov' as suggested_by,
  'Too different in mood and theme' as justification,
  null as comment
from 
  Comedy c,
  Horror h;

insert into imdb_ijs.movies_recommendations

with
Family as (
  select 6 as movie_id
  union select 10
  union select 73
  union select 124
  union select 130
  union select 140
),
Adults as (
  select 24 as movie_id
  union select 535
  union select 621
  union select 743
  union select 745
  union select 746
  union select 754
  union select 755
  union select 759
  union select 760
)
select
  f.movie_id as base_movie_id,
  a.movie_id as recommended_movie_id,
  1 as recommendation,
  'Gali Davidov' as suggested_by,
  'Target audience mismatch' as justification,
  null as comment
from
  Family f,
  Adults a;
