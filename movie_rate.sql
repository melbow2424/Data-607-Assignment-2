CREATE DATABASE IF NOT EXISTS data_607_assignments;
USE data_607_assignments;

DROP TABLE IF EXISTS rater;
CREATE TABLE IF NOT EXISTS rater
(
    rater_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);
INSERT INTO rater (
    first_name,
    last_name
    )
VALUES ('Melissa', 'Bowman'),
	   ('Nicolas', 'Schiff'),
       ('John', 'Smith'),
       ('Maria', 'Lovely'),
       ('Thomas', 'Green');

DROP TABLE IF EXISTS movie_rate;
CREATE TABLE IF NOT EXISTS movie_rate
(
    rater_id INT PRIMARY KEY AUTO_INCREMENT,
    the_batman INT NOT NULL DEFAULT 0,
    turning_red INT NOT NULL DEFAULT 0,
    top_gun_maverick INT NOT NULL DEFAULT 0,
    elvis INT NOT NULL DEFAULT 0,
    thor_love_and_thunder INT NOT NULL DEFAULT 0,
    minions_the_rise_of_gru INT NOT NULL DEFAULT 0,
    FOREIGN KEY fk_movie_rate_rater (rater_id)
        REFERENCES rater (rater_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

INSERT INTO movie_rate (
    the_batman,
    turning_red,
    top_gun_maverick,
    elvis,
	thor_love_and_thunder,
    minions_the_rise_of_gru
    )
VALUES (4, 5, 1, 1, 5, 1),
	   (5, 4, 3, 3, 4, 1),
       (5, 2, 5, 3, 5, DEFAULT),
       (DEFAULT, 5, 1, 3, 1, 4), 
       (5, 4, DEFAULT, DEFAULT, 4, DEFAULT);