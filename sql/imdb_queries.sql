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

