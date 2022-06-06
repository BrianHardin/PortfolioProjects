/* Create table about the people and what they do here */


/* Singers Table */
CREATE TABLE singers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT);
    
INSERT INTO singers (name) VALUES ("Jack Harlow");
INSERT INTO singers (name) VALUES ("Logic");
INSERT INTO singers (name) VALUES ("DaBaby");
INSERT INTO singers (name) VALUES ("Drake");
INSERT INTO singers (name) VALUES ("Kendrick Lamar");


/* Hometown Table */
CREATE TABLE hometown (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    singer_id INTEGER,
    city TEXT,
    state TEXT);
    
INSERT INTO hometown (singer_id, city, state) VALUES (1, "Louisville", "Kentucky");
INSERT INTO hometown (singer_id, city, state) VALUES (2, "Rockville", "Maryland");
INSERT INTO hometown (singer_id, city, state) VALUES (3, "Cleveland", "Ohio");
INSERT INTO hometown (singer_id, city, state) VALUES (5, "Compton", "California");


/* Songs Table */
CREATE TABLE songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    singer_id INTEGER,
    name TEXT);
    
INSERT INTO songs (singer_id, name) VALUES (1, "Way Out");
INSERT INTO songs (singer_id, name) VALUES (1, "First Class");
INSERT INTO songs (singer_id, name) VALUES (1, "WHATS POPPIN");
INSERT INTO songs (singer_id, name) VALUES (2, "44 More"); 
INSERT INTO songs (singer_id, name) VALUES (2, "Ballin");
INSERT INTO songs (singer_id, name) VALUES (2, "Perfect");
INSERT INTO songs (singer_id, name) VALUES (3, "BOP"); 
INSERT INTO songs (singer_id, name) VALUES (3, "ROCKSTAR"); 
INSERT INTO songs (singer_id, name) VALUES (3, "BBall If I Want To"); 
INSERT INTO songs (singer_id, name) VALUES (4, "Hotline Bling");
INSERT INTO songs (singer_id, name) VALUES (4, "One Dance");
INSERT INTO songs (singer_id, name) VALUES (4, "Fair Trade");
INSERT INTO songs (singer_id, name) VALUES (5, "HUMBLE"); 
INSERT INTO songs (singer_id, name) VALUES (5, "DNA"); 
INSERT INTO songs (singer_id, name) VALUES (5, "All The Stars"); 


SELECT singers.name, hometown.state, songs.name 
    FROM singers
    LEFT OUTER JOIN hometown
    ON singers.id = hometown.singer_id
    JOIN songs
    ON singers.id = songs.singer_id;