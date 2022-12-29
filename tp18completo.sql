// tp 18
// 1-
// titulo y genero de series
select title, genre_id, name from series inner join genres where movies.genre_id = genres.id;

// actor y titulos por episodios
select actor_id, first_name, last_name, episode_id, title from actor_episode inner join episodes inner join actors;
// 2-
// actores y actrices de guardiales de las galaxias
select DISTINCT first_name , last_name from actors inner join movies where title like "%galaxias%";

// 3-
// titulo y genero con coalesce para los valores nulos = "no tiene genero"
select movies.id, title, coalesce(genre_id, 'no tiene genero'), name from movies inner join genres order by movies.genre_id and genres.id;

// 4-
// motras dias de duracion de la series 
select id, title, datediff(release_date, end_date) as duracion from series;

// 5-
// nombre actor mayor a 6 caracteres
select first_name from actors where length(first_name) > 6

// episodios totales en la base de datos
SELECT count(*) FROM movies_db.episodes;

// título de todas las series y el total
de temporadas que tiene cada una de ellas.
SELECT series.title, count(seasons.id) as seasons FROM movies_db.series inner join seasons on serie_id = series.id group by series.title;

//Mostrar, por cada género, la cantidad total de películas que posee, 
siempre que sea mayor o igual a 3
SELECT genres.name, count(movies.id) as movies 
FROM movies_db.genres inner join movies on genre_id = genres.id group by genres.name having count(movies.id) >= 3;