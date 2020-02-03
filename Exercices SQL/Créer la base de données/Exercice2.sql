DROP DATABASE IF EXISTS exercice2;

CREATE DATABASE exercice2;
USE exercice2;

/*Création de la base "Station"*/
CREATE TABLE station (
	stat_num 		INT PRIMARY KEY AUTO_INCREMENT,
	stat_nom		VARCHAR(50)
);

/*Création de la base "Hotel"*/
CREATE TABLE hotel (
	hot_capa 		INT,
	hot_categ 		VARCHAR(50),
	hot_nom 		VARCHAR(50),
	hot_add 		VARCHAR(50),
	hot_num 		INT PRIMARY KEY AUTO_INCREMENT,
	stat_num 		INT,
	FOREIGN KEY (stat_num) REFERENCES station (stat_num)
);

/*Création de la base "Chambre"*/
CREATE TABLE chambre (
	chamb_capa 			INT,
	chamb_degconf 		INT,
	chamb_expo 			VARCHAR(50),
	chamb_type 			VARCHAR(50),
	chamb_num 			INT PRIMARY KEY AUTO_INCREMENT,
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
