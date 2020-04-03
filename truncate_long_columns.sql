UPDATE person_info
SET  info = LEFT(info, 7999)
WHERE LEN(info) > 7999

ALTER TABLE person_info ALTER COLUMN info varchar(7999);

UPDATE movie_info
SET  info = LEFT(info, 7999)
WHERE LEN(info) > 7999

ALTER TABLE movie_info ALTER COLUMN info varchar(7999);