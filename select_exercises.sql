SELECT name AS 'The name of all albums by pink Floyd'
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date AS 'The year sgt. Pepper''s lonely hearts'
FROM albums
Where name = 'sgt. pepper''s lonely hearts club band';


SELECT genre AS 'The genres for nevermind'
FROM albums
WHERE name = 'Nevermind';

SELECT name AS 'ALbums released in the 90s'
FROM albums
WHERE release_date BETWEEN 1990 and 1999;
