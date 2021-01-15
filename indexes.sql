use codeup_test_db;

show tables;

describe albums;

ALTER TABLE albums
ADD UNIQUE `unique_pn` (artist,name);

INSERT INTO albums(artist, name)
VALUES ('jcole', 'the warm up');

INSERT INTO albums(artist, name)
VALUES ('jcole', 'the come up');

show index FROM albums;
