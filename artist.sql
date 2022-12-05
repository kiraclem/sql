-- In the artist.sql file, write out the code for the following problems:
-- Add 3 new artists to the artist table. (It already exists.)
INSERT INTO artist (name)
VALUES('Stray Kids'),
('John Powell'),
('Gareth Coker');

-- Select 10 artists in reverse alphabetical order.
SELECT * FROM artist 
WHERE name IN ('Black Sabbath', 'Led Zeppelin', 'Stray Kids','Queen' 'Miles Davis', 'Deep Purple', 'Cake', 'John Powell', 'Gustav Mahler', 'Aaron Goldberg');
-- Select 5 artists in alphabetical order.
SELECT * FROM artist
WHERE name IN('Miles Davis', 'Gustav Mahler', 'Cake', 'Stray Kids', 'Gareth Coker')
ORDER BY name ASC;
-- Select all artists that start with the word ‘Black’.
SELECT * FROM artist
WHERE name LIKE 'Black%';
-- Select all artists that contain the word ‘Black’.
SELECT * FROM artist
WHERE name LIKE '%Black%';