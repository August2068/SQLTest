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

ALTER TABLE horaire AUTO_INCREMENT = 5000;
LOAD DATA LOCAL INFILE 'C:/IT/Simplon/semaine 1/test sql/data_horaire.csv'
INTO TABLE horaire
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_hor,heure_arrivee,heure_depart,jour_presence);

ALTER TABLE formule AUTO_INCREMENT = 5000;
LOAD DATA LOCAL INFILE 'C:/IT/Simplon/semaine 1/test sql/data_formule.csv'
INTO TABLE formule
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_tarif,texte_formule,tarif_formule);

ALTER TABLE adresse AUTO_INCREMENT = 5000;
LOAD DATA LOCAL INFILE 'C:/IT/Simplon/semaine 1/test sql/data_adresse.csv'
INTO TABLE adresse
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_adr,ville,code_postal,rue,num_ref);

ALTER TABLE image AUTO_INCREMENT = 5000;
LOAD DATA LOCAL INFILE 'C:/IT/Simplon/semaine 1/test sql/data_image.csv'
INTO TABLE image
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_img,lien_img);

ALTER TABLE commentaire AUTO_INCREMENT = 5000;
LOAD DATA LOCAL INFILE 'C:/IT/Simplon/semaine 1/test sql/data_commentaire.csv'
INTO TABLE commentaire
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_com,pseudo_com,date_post,texte_com);

ALTER TABLE livre_or AUTO_INCREMENT = 5000;
LOAD DATA LOCAL INFILE 'C:/IT/Simplon/semaine 1/test sql/data_livre.csv'
INTO TABLE livre_or
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_livre,pseudo,texte_livre);

ALTER TABLE categories AUTO_INCREMENT = 5000;
LOAD DATA LOCAL INFILE 'C:/IT/Simplon/semaine 1/test sql/data_categories.csv'
INTO TABLE categories
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_categorie,nom_cat);

UPDATE foodTruck SET fk_categorie = 5000 WHERE id_foodTruck = 5000;