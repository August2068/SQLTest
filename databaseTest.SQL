CREATE DATABASE databaseTEST;
USE databaseTEST;
CREATE TABLE foodTruck (
    id_foodTruck INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom_FT VARCHAR(255) NOT NULL,
    tel VARCHAR(10) NOT NULL,
    email VARCHAR(255),
    site VARCHAR(255),
    profil TEXT,
    image VARCHAR(255),
    mdp_FT VARCHAR(50) NOT NULL
);

CREATE TABLE horaire(
    id_hor INTEGER AUTO_INCREMENT PRIMARY KEY,
    heure_arrivee TIME NOT NULL,
    heure_depart TIME NOT NULL,
    jour_presence DATE NOT NULL
);

CREATE TABLE formule(
    id_tarif INTEGER AUTO_INCREMENT PRIMARY KEY,
    texte_formule VARCHAR(255),
    tarif_formule FLOAT
);

CREATE TABLE commentaire(
    id_com INTEGER AUTO_INCREMENT PRIMARY KEY,
    pseudo_com TEXT NOT NULL,
    date_post DATETIME NOT NULL,
    texte_com TEXT NOT NULL
);

CREATE TABLE adresse(
    id_adr INTEGER AUTO_INCREMENT PRIMARY KEY,
    ville VARCHAR(255) NOT NULL DEFAULT 'Bruz',
    code_postal VARCHAR(50) NOT NULL DEFAULT '35170',
    rue VARCHAR(255) NOT NULL,
    num_ref INTEGER NOT NULL
);

CREATE TABLE image (
    id_img INTEGER AUTO_INCREMENT PRIMARY KEY,
    lien_img VARCHAR(255)
);

CREATE TABLE livre_or (
    id_livre INTEGER AUTO_INCREMENT PRIMARY KEY,
    pseudo VARCHAR(255) NOT NULL,
    texte_livre TEXT NOT NULL
);

CREATE TABLE categories(
    id_categorie INTEGER AUTO_INCREMENT PRIMARY KEY,
    nom_cat VARCHAR(255) NOT NULL
);


ALTER TABLE foodTruck
ADD fk_categorie INT NULL;

ALTER TABLE foodTruck
ADD FOREIGN KEY (fk_categorie) REFERENCES categories(id_categorie)
ON DELETE CASCADE;


ALTER TABLE formule
ADD fk_foodtruck INT NULL;

ALTER TABLE formule
ADD FOREIGN KEY (fk_foodtruck) REFERENCES foodTruck(id_foodTruck)
ON DELETE CASCADE;


ALTER TABLE commentaire
ADD fk_foodtruck INT NULL;

ALTER TABLE commentaire
ADD FOREIGN KEY (fk_foodtruck) REFERENCES foodTruck(id_foodTruck)
ON DELETE CASCADE;

ALTER TABLE image
ADD fk_foodtruck INT NULL;

ALTER TABLE image
ADD FOREIGN KEY (fk_foodtruck) REFERENCES foodTruck(id_foodTruck)
ON DELETE CASCADE;


ALTER TABLE horaire
ADD fk_foodtruck INT NULL;

ALTER TABLE horaire
ADD FOREIGN KEY (fk_foodtruck) REFERENCES foodTruck(id_foodTruck)
ON DELETE CASCADE;

DROP DATABASE databaseTEST;