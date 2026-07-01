UPDATE foodTruck 
    INNER JOIN categories 
        ON foodTruck.id_foodTruck = categories.id_categorie
SET foodTruck.fk_categorie = categories.id_categorie;

UPDATE formule 
    INNER JOIN foodTruck 
        ON formule.id_tarif = foodTruck.id_foodTruck
SET formule.fk_foodtruck = foodTruck.id_foodTruck;*

UPDATE commentaire 
    INNER JOIN foodTruck 
        ON commentaire.id_com = foodTruck.id_foodTruck
SET commentaire.fk_foodtruck = foodTruck.id_foodTruck;

UPDATE image
    INNER JOIN foodTruck
        ON image.id_img = foodTruck.id_foodTruck
SET image.fk_foodtruck = foodTruck.id_foodTruck;

UPDATE horaire
    INNER JOIN foodTruck
        ON horaire.id_hor = foodTruck.id_foodTruck
SET horaire.fk_foodtruck = foodTruck.id_foodtruck;