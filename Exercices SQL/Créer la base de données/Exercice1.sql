DROP IF EXISTS exercice1;

CREATE DATABASE exercice1;
USE exercice1;

/* Création de la table "personne"*/

CREATE TABLE personne (
	per_num INT PRIMARY KEY AUTO_INCREMENT,
	per_prenom VARCHAR(50) NULL DEFAULT NULL,
	per_adresse VARCHAR(50) NULL DEFAULT NULL,
	per_ville VARCHAR(50) NULL DEFAULT NULL
	);

/*Création de la table "groupe"*/

CREATE TABLE groupe (
	gro_num INT(11) NOT NULL IDENTITY(1, 1),
	gro_libelle VARCHAR (50) NULL DEFAULT NULL,
	PRIMARY KEY (gro_num)
);

/*Création de la table "appartient" avec les deux Foreign Key*/

CREATE TABLE appartient (
	per_num INT(11) NOT NULL,
	gro_num INT(11) NOT NULL,
	PRIMARY KEY (per_num, gro_num),
	INDEX gro_num (gro_num),
	CONSTRAINT appartient_ibfk_1 FOREIGN KEY (per_num) REFERENCES personne (per_num),
	CONSTRAINT appartient_ibfk_2 FOREIGN KEY (gro_num) REFERENCES groupe (gro_num)
);

