ALTER TABLE foodTruck AUTO_INCREMENT = 5000;

INSERT INTO foodtruck (nom_FT, tel, site,mdp_FT)
VALUES
('Okayish Burger Smash RENEWAL', '0404040404', 'https://www.youtube.com/watch?v=XfELJU1mRMg', '1234AsItShouldBe'),
('Spoilt Sushi', '0404040404', 'https://www.youtube.com/watch?v=XfELJU1mRMg', '1234AsItShouldBe'),
('Overprocessed Meat', '0404040404', 'https://www.youtube.com/watch?v=XfELJU1mRMg', '1234AsItShouldBe'),
('Pizza3000', '0404040404', 'https://www.youtube.com/watch?v=XfELJU1mRMg', '1234AsItShouldBe'),
('Pizza3002', '0404040404', 'https://www.youtube.com/watch?v=XfELJU1mRMg', '1234AsItShouldBe');

DELETE FROM foodtruck;

LOAD DATA LOCAL INFILE 'C:/IT/Simplon/semaine 1/test sql/data.csv'
INTO TABLE foodTruck
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_foodtruck,nom_FT, tel,email, site,profil,image, mdp_FT);

CREATE USER 'gestionnaire'@'localhost';
GRANT ALL on toutrecommencer to 'gestionnaire'@'localhost';

CREATE USER 'lecteur'@'localhost';
GRANT  SELECT on * to 'lecteur'@'localhost';

CREATE USER 'basique'@'localhost';
GRANT ALL on adresse to 'basique'@'localhost';
REVOKE DELETE on adresse FROM 'basique'@'localhost';

SELECT user FROM mysql.user;

DROP USER 'lecteur'@'localhost';

SELECT user FROM mysql.user;




