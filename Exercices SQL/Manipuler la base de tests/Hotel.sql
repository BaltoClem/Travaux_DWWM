DROP DATABASE IF EXISTS hotel;

CREATE DATABASE hotel;
USE hotel;

/*Création de la base "Station"*/
CREATE TABLE station (
	stat_num 		INT PRIMARY KEY,
	stat_nom		VARCHAR(50)
);

/*Création de la base "Hotel"*/
CREATE TABLE hotel (
	hot_capa 		INT,
	hot_categ 		VARCHAR(50),
	hot_nom 		VARCHAR(50),
	hot_add 		VARCHAR(50),
	hot_num 		INT PRIMARY KEY,
	stat_num 		INT,
	FOREIGN KEY (stat_num) REFERENCES station (stat_num)
);

/*Création de la base "Chambre"*/
CREATE TABLE chambre (
	chamb_capa 			INT,
	chamb_degconf 		INT,
	chamb_expo 			VARCHAR(50),
	chamb_type 			VARCHAR(50),
	chamb_num 			INT PRIMARY KEY,
	hot_num 			INT,
	FOREIGN KEY (hot_num) REFERENCES hotel (hot_num)
);

/*Création de la base "Customer (Client)"*/
CREATE TABLE customer (
	cli_add 			VARCHAR(50),
	cli_nom 			VARCHAR(50),
	cli_prenom 			VARCHAR(50),
	cli_num 			INT PRIMARY KEY AUTO_INCREMENT
);

/*Création de la base "Réservation"*/
CREATE TABLE reservation (
	chamb_num		INT,
	cli_num 			INT,
	res_datedeb			DATE,
	res_datefin 		DATE,
	res_dateres			DATE,
	res_montarr 		INT,
	res_prixtot			INT,
	FOREIGN KEY (chamb_num) REFERENCES chambre (chamb_num),
	FOREIGN KEY (cli_num) REFERENCES customer (cli_num)
);

INSERT INTO station (stat_num,stat_nom)
VALUES (1,"Megève"), (2,"Avoriaz"),(3,"L'Alpe d'Huez");

INSERT INTO hotel (hot_capa, hot_categ, hot_nom, hot_add, hot_num, stat_num)
VALUES (50,1,"Sublime Hotel", "rue de la Montagne",1,1),
(50,1,"Excalibur Hotel", "rue de la Montagne",2,1),
(50,1,"Pyramid Hotel", "rue de la Montagne",3,1),
(50,1,"Marina", "rue de la Montagne",4,2),
(50,1,"Lord's Chasm", "rue de la Montagne",5,2),
(50,1,"Eastern Hill", "rue de la Montagne",6,2),
(50,1,"Deluxe Hotel", "rue de la Montagne",7,3),
(50,1,"Mountview Hotel", "rue de la Montagne",8,3),
(50,1,"Icecap", "rue de la Montagne",9,3);

INSERT INTO chambre (chamb_capa, chamb_degconf, chamb_expo, chamb_type, chamb_num, hot_num)
VALUES (2,5,"sud","double",74104,1),
(2,5,"sud","double",623,1),
(2,5,"sud","double",654,1),
(2,5,"sud","double",354,2),
(2,5,"sud","double",745,2),
(2,5,"sud","double",158,2),
(2,5,"sud","double",469,3),
(2,5,"sud","double",687,3),
(2,5,"sud","double",634,3),
(2,5,"sud","double",436,4),
(2,5,"sud","double",984,4),
(2,5,"sud","double",168,4),
(2,5,"sud","double",26,5),
(2,5,"sud","double",456,5),
(2,5,"sud","double",854,5),
(2,5,"sud","double",3210,6),
(2,5,"sud","double",863,6),
(2,5,"sud","double",30,6),
(2,5,"sud","double",3645,7),
(2,5,"sud","double",496,7),
(2,5,"sud","double",813,7),
(2,5,"sud","double",604,8),
(2,5,"sud","double",169874,8),
(2,5,"sud","double",30146,8),
(2,5,"sud","double",4678,9),
(2,5,"sud","double",69574,9),
(2,5,"sud","double",2,9)


