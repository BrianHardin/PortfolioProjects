/* What does the app's SQL look like? */

CREATE TABLE players (
    id integer primary key AUTOINCREMENT,
    first_name text,
    last_name text);
    
INSERT INTO players (first_name, last_name) VALUES ("Brian", "Hardin");
INSERT INTO players (first_name, last_name) VALUES ("LeBron", "James");
INSERT INTO players (first_name, last_name) VALUES ("Steph", "Curry");
INSERT INTO players (first_name, last_name) VALUES ("James", "Hardin");
INSERT INTO players (first_name, last_name) VALUES ("LaMelo", "Ball");


CREATE TABLE games (
    id integer primary key,
    player_id integer,
    points integer,
    assists integer,
    rebounds integer);

INSERT INTO games (player_id, points, assists, rebounds) VALUES (3, 60, 4, 2);    
INSERT INTO games (player_id, points, assists, rebounds) VALUES (1, 40, 10, 3);
INSERT INTO games (player_id, points, assists, rebounds) VALUES (5, 35, 8, 7);
INSERT INTO games (player_id, points, assists, rebounds) VALUES (2, 55, 6, 9);
INSERT INTO games (player_id, points, assists, rebounds) VALUES (4, 65, 10, 10);
INSERT INTO games (player_id, points, assists, rebounds) VALUES (5, 10, 8, 3);


select players.first_name, players.last_name, games.points,games.assists, games.rebounds
    FROM players
    LEFT OUTER JOIN games
    ON player_id = players.id;

/* Update Practice */    
UPDATE players SET last_name = "Harden" where id = 4;
UPDATE games SET points = 63 WHERE id = 3;


select players.first_name, players.last_name, games.points,games.assists, games.rebounds
    FROM players
    LEFT OUTER JOIN games
    ON player_id = players.id;
    
/* Delete Practice */
DELETE FROM games where id = 6;

select players.first_name, players.last_name, games.points,games.assists, games.rebounds
    FROM players
    LEFT OUTER JOIN games
    ON player_id = players.id;
