CREATE TABLE ratings (
	watcher_id INTEGER REFERENCES users(watcher_id),
	movie_id INTEGER REFERENCES movies(movie_id),
	rating INTEGER
);

SELECT *
FROM users ;

INSERT INTO users(name)
VALUES
	('michael'),
	('channa'),
	('dimitri'),
	('chris'),
	('kathy')

SELECT *
FROM movies;

INSERT INTO movies(title)
VALUES 
    ('KPDH'),
	('Sinners'),
	('Zoo_2'),
	('Captain_AmericaBNW'),
	('Thunderbolts'),
	('AvatarWOF')

SELECT *
FROM movies;

INSERT INTO ratings(watcher_id, movie_id, rating)
VALUES
	(1,1,4),
	(1,2,5),
	(1,3,3),
	(1,4,3),
	(1,5,4),
	(1,6,NULL),
	(2,1,4),
	(2,2,3),
	(2,3,4),
	(2,4,4),
	(2,5,4),
	(2,6,4),
	(3,1,5),
	(3,2,5),
	(3,3,3),
	(3,4,2),
	(3,5,2),
	(3,6,4),
	(4,1,3),
	(4,2,3),
	(4,3,1),
	(4,4,3),
	(4,5,4),
	(4,6,4),
	(5,1, NULL),
	(5,2,4),
	(5,3,3),
	(5,4,5),
	(5,5,5),
	(5,6,3);




SELECT *
FROM ratings;

DELETE FROM ratings
WHERE watcher_id = 1 AND movie_id= 1
RETURNING ratings


INSERT INTO ratings(watcher_id, movie_id, rating)
VALUES
	(1,1,4)

SELECT
	users.name AS watcher_name,
	movies.title AS movie_title,
	ratings.rating
FROM ratings
JOIN users ON ratings.watcher_id = users.watcher_id
JOIN movies ON ratings.movie_id = movies.movie_id;


	


