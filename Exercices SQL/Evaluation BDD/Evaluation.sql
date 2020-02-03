DROP DATABASE IF EXISTS evaluation;

CREATE DATABASE evaluation;

USE evaluation;

/*Création de la table "Client"*/

CREATE TABLE client (
    cli_num INT PRIMARY KEY AUTO_INCREMENT,
    cli_nom VARCHAR (50),
    cli_adresse VARCHAR (50),
    cli_tel VARCHAR (30),
    INDEX idx_nom (cli_nom)
);

/*Création de la table "Produit"*/

CREATE TABLE produit(
    pro_num INT PRIMARY KEY AUTO_INCREMENT,
    pro_libelle VARCHAR (50),
    pro_description VARCHAR (50)
);

/*Création de la table "Commande"*/

CREATE TABLE commande (
    com_num INT PRIMARY KEY AUTO_INCREMENT,
    cli_num INT,
    com_date DATETIME,
    com_obs VARCHAR (50),
    FOREIGN KEY (cli_num) REFERENCES client (cli_num)
);

/*Création de la table "est_compose"*/

CREATE TABLE est_compose (
    com_num INT,
    pro_num INT,
    est_qte INT,
    PRIMARY KEY (com_num, pro_num),
    FOREIGN KEY (com_num) REFERENCES commande (com_num),
    FOREIGN KEY (pro_num) REFERENCES produit (pro_num)
);