SELECT 'name'
FROM 'movies'
WHERE 'year'=1995;


SELECT a.name
FROM actors a
JOIN roles r ON r.actor_id=a.id
JOIN movies m ON r.movie_id=m.id
WHERE m.name ='Lost in Translation';


SELECT a.first_name
FROM actors a
JOIN roles r ON r.actor_id=a.id
JOIN movies m ON r.movie_id=m.id
WHERE m.name ='Lost in Translation';


SELECT d.first_name,
       d.last_name
FROM directors d
JOIN movies_directors md ON d.id = md.director_id
JOIN movies m ON m.id=md.movie_id
WHERE m.name = 'Fight Club';

SELECT COUNT(*) FROM movies m
JOIN movies_directors md ON md.movie_id=m.id
JOIN directors d ON d.id=md.director_id
WHERE d.first_name='Clint' AND d.last_name='Eastwood';


SELECT DISTINCT d.first_name FROM directors d 
JOIN directors_genres dj ON d.id=dj.director_id
WHERE dj.genre = 'horror';


SELECT a.first_name FROM actors a
JOIN roles r ON r.actor_id=a.id
JOIN movies m ON m.id=r.movie_id
JOIN movies_directors md ON md.movie_id=m.id
JOIN directors d ON d.id = md.director_id
WHERE d.first_name='Christopher' AND d.last_name='Nolan';