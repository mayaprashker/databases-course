use imdb_ijs;

# selecting 100 good recommendations
# first, I'll recommend movies that someone who likes Oceans Eleven might like

select id
from movies
where
name = "Ocean's Eleven"
and year = 2001
;

# Ocean's Elaven's ID is 238072
# selecting movies with more at least 3 common actors

with target_cast as (
select actor_id
from
roles as r
where
r.movie_id = 238072
)
select r.movie_id
from
roles as r
join
target_cast as tg
on
r.actor_id = tg.actor_id
where
r.movie_id <> 238072
group by
r.movie_id
having 
count(*) > 2
;

# we got 21 recommendations: 14132, 238073, 56304, 317437, 335872, 1674, 4642, 107385, 160473, 245103, 337404, 846, 13751,
# 69391, 299317, 166939, 351187, 2603, 290086, 257522, 121528

# now we suggest movies by the same director

with target_d as (
select director_id
from
movies_directors
where
movie_id = 238072
)
select md.movie_id
from
movies_directors as md
join
target_d as td
where 
md.director_id = td.director_id
and
movie_id <> 238072
;

# we got 19 recommendations: 60107, 102514, 102653, 121528, 133382, 172073, 177456, 190951, 238073, 245103, 290086, 296024,
# 307274, 337404, 346299, 366383, 371340, 388254, 394001
# 40 so far, now we suggest movies with at least 3 shared genres

with target_genres as (
select genre
from
movies_genres
where 
movie_id = 238072
)
select mg.movie_id
from
movies_genres as mg
join 
target_genres as tg
on 
mg.genre = tg.genre
where mg.movie_id <> 238072
group by mg.movie_id
having
count(*) > 2
order by count(*) desc
limit 30
;

# we got 30 recommendations: 361, 955, 1369, 2174, 2250, 2597, 2763, 2840, 4294, 5148, 9084, 13224, 17934, 18015, 20882, 
# 25924, 27168, 27171, 27928, 32080, 36824, 37473, 38553, 48777, 48909, 49306, 49312, 59293, 59829, 60148
# 70 so far, now we suggest movies that someone who likes Forrest Gump might like

select id
from
movies
where
name = "Forrest Gump"
;

# Forrest Gump's ID is 117874
# selecting movies with at least 3 common actors, using the same logic as earlier

with target_cast as (
select actor_id
from
roles
where
movie_id = 117874
)
select r.movie_id
from
roles as r
join
target_cast as tc
on
r.actor_id = tc.actor_id
where
r.movie_id <> 117874
group by r.movie_id
having
count(*) > 2
limit 30 # to get 100 recommendations
;

# we got 30 recommendations: 65501, 389416, 1404, 18979, 69895, 87699, 116950, 203572, 333182, 383666, 385285, 6029, 90932,
# 233307, 306364, 31944, 212716, 923, 34648, 35629, 105721, 118271, 151093, 167324, 210854, 274620, 359185, 410168, 329522,
# 105723
# now we have 100 good recommendations

# now, 100 not good but resonable recommendations
# we suggest movies that are reasonable for someone who likes Men in Black to like as well

select id
from
movies
where
name = "Men in Black"
and year = 1997;

# Men in Black's ID 210739
# selecting movies with 2 common actors, using the same logic as earlier

with target_cast as (
select actor_id
from
roles
where
movie_id = 210739
)
select r.movie_id
from
roles as r
join
target_cast as tg
on
r.actor_id = tg.actor_id
where
r.movie_id <> 210739
group by
r.movie_id
having 
count(*) = 2
;

# we got 49 recommendations: 26442, 184859, 212653, 79875, 123034, 126555, 171278, 400236, 215813, 160492, 1681, 51661, 
# 67988, 127237, 305379, 385174, 97360, 157240, 167324, 329401, 362716, 192100, 111783, 386966, 19294, 30440, 56748, 83789,
# 141051, 246260, 386414, 28635, 248132, 276201, 136510, 348303, 50866, 379716, 406621, 6248, 185648, 210740, 82055, 
# 365642, 35764, 24429, 30967, 170982, 37473
# now, we suggest movies with 2 shared genres with Men in Black

with target_genres as (
select genre
from
movies_genres
where
movie_id = 210739
)
select mg.movie_id
from
movies_genres as mg
join
target_genres as tg
on
mg.genre = tg.genre
where
mg.movie_id <> 210739
group by mg.movie_id
having
count(*) = 2
limit 51
;

# we got 51 recommendations: 50, 52, 53, 94, 322, 328, 344, 382, 465, 510, 516, 517, 527, 881, 892, 1018, 1294, 1432, 1490,
# 1581, 1642, 1710, 1712, 1715, 1750, 1756, 1799, 1921, 2045, 2134, 2136, 2178, 2182, 2206, 2250, 2414, 2511, 2537, 2597, 
# 2730, 2763, 2964, 2989, 2995, 2999, 3097, 3109, 3241, 3315, 3421, 3983
# now we got 100 not good but reasonable recommendations

# recommendation rating:
# movies with at least 3 shared actors will be rated as 8
# movies with the same director will be rated as 9
# movies with at least 3 shared genres will be rated as 8
# movies with 2 shared actors will be rated 4
# movies with 2 shared genres will be rated 4

# inserting the recommendations into the movies_recommendations table

# Ocean's Eleven - >2 shared actors

insert into imdb_ijs.movies_recommendations
values
(238072, 14132, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 238073, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 56304, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 317437, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 335872, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 1674, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 4642, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 107385, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 160473, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 245103, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 337404, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 846, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 13751, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 69391, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 299317, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 166939, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 351187, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 2603, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 290086, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 257522, 8, "Omri Naftali", "> 2 shared actors", NULL),
(238072, 121528, 8, "Omri Naftali", "> 2 shared actors", NULL)
;

# Ocean's Eleven - same director

insert into imdb_ijs.movies_recommendations
values
(238072, 60107, 9, "Omri Naftali", "same director", NULL),
(238072, 102514, 9, "Omri Naftali", "same director", NULL),
(238072, 102653, 9, "Omri Naftali", "same director", NULL),
(238072, 121528, 9, "Omri Naftali", "same director", NULL),
(238072, 133382, 9, "Omri Naftali", "same director", NULL),
(238072, 172073, 9, "Omri Naftali", "same director", NULL),
(238072, 177456, 9, "Omri Naftali", "same director", NULL),
(238072, 190951, 9, "Omri Naftali", "same director", NULL),
(238072, 238073, 9, "Omri Naftali", "same director", NULL),
(238072, 245103, 9, "Omri Naftali", "same director", NULL),
(238072, 290086, 9, "Omri Naftali", "same director", NULL),
(238072, 296024, 9, "Omri Naftali", "same director", NULL),
(238072, 307274, 9, "Omri Naftali", "same director", NULL),
(238072, 337404, 9, "Omri Naftali", "same director", NULL),
(238072, 346299, 9, "Omri Naftali", "same director", NULL),
(238072, 366383, 9, "Omri Naftali", "same director", NULL),
(238072, 371340, 9, "Omri Naftali", "same director", NULL),
(238072, 388254, 9, "Omri Naftali", "same director", NULL),
(238072, 394001, 9, "Omri Naftali", "same director", NULL)
;

# Ocean's Eleven - >2 shared genres

insert into imdb_ijs.movies_recommendations
values
(238072, 361, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 955, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 1369, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 2174, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 2250, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 2597, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 2763, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 2840, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 4294, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 5148, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 9084, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 13224, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 17934, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 18015, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 20882, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 25924, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 27168, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 27171, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 27928, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 32080, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 36824, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 37473, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 38553, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 48777, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 48909, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 49306, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 49312, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 59293, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 59829, 8, "Omri Naftali", "> 2 shared genres", NULL),
(238072, 60148, 8, "Omri Naftali", "> 2 shared genres", NULL)
;

# Forrest Gump - >2 shared actors

insert into imdb_ijs.movies_recommendations
values
(117874, 65501, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 389416, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 1404, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 18979, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 69895, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 87699, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 116950, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 203572, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 333182, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 383666, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 385285, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 6029, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 90932, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 233307, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 306364, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 31944, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 212716, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 923, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 34648, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 35629, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 105721, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 118271, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 151093, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 167324, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 210854, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 274620, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 359185, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 410168, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 329522, 8, "Omri Naftali", "> 2 shared actors", NULL),
(117874, 105723, 8, "Omri Naftali", "> 2 shared actors", NULL)
;

# Men in Black - 2 shared actors

insert into imdb_ijs.movies_recommendations
values
(210739, 26442, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 184859, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 212653, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 79875, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 123034, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 126555, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 171278, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 400236, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 215813, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 160492, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 1681, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 51661, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 67988, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 127237, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 305379, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 385174, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 97360, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 157240, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 167324, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 329401, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 362716, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 192100, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 111783, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 386966, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 19294, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 30440, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 56748, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 83789, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 141051, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 246260, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 386414, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 28635, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 248132, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 276201, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 136510, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 348303, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 50866, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 379716, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 406621, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 6248, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 185648, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 210740, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 82055, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 365642, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 35764, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 24429, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 30967, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 170982, 4, "Omri Naftali", "2 shared actors", NULL),
(210739, 37473, 4, "Omri Naftali", "2 shared actors", NULL)
;

# Men in Black - 2 shared genres

insert into imdb_ijs.movies_recommendations
values
(210739, 50, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 52, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 53, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 94, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 322, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 328, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 344, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 382, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 465, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 510, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 516, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 517, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 527, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 881, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 892, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 1018, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 1294, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 1432, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 1490, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 1581, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 1642, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 1710, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 1712, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 1715, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 1750, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 1756, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 1799, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 1921, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2045, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2134, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2136, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2178, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2182, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2206, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2250, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2414, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2511, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2537, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2597, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2730, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2763, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2964, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2989, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2995, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 2999, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 3097, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 3109, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 3241, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 3315, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 3421, 4, "Omri Naftali", "2 shared genres", NULL),
(210739, 3983, 4, "Omri Naftali", "2 shared genres", NULL)
;




