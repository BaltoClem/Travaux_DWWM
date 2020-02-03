DROP DATABASE IF EXISTS entrainement;

CREATE DATABASE entrainement CHARACTER SET utf8;

USE entrainement;

CREATE TABLE commercial (
    id_commercial           INT AUTO_INCREMENT,
    com_nom                 VARCHAR (50),
    com_prenom              VARCHAR (50),
    com_email               VARCHAR (50),
    PRIMARY KEY (id_commercial)
) ENGINE = InnoDB;

CREATE TABLE client (
    id_client               INT AUTO_INCREMENT,
    cli_nom                 VARCHAR (50),
    cli_prenom              VARCHAR (50),
    cli_adrlivr             VARCHAR (50),
    cli_villelivr           VARCHAR (50),
    cli_adrfact             VARCHAR (50),
    cli_villefact           VARCHAR (50),
    cli_tel                 VARCHAR (50),
    cli_email               VARCHAR (50),
    id_commercial           INT,
    PRIMARY KEY (id_client),
    FOREIGN KEY (id_commercial) REFERENCES commercial(id_commercial)
) ENGINE = InnoDB;

CREATE TABLE commande (
    id_commande             INT AUTO_INCREMENT,
    com_datecom             DATE,
    com_datefact            DATE,
    com_reduc               FLOAT,
    com_regl                BOOLEAN,
    id_client               INT,
    PRIMARY KEY (id_commande),
    FOREIGN KEY (id_client) REFERENCES client (id_client)
) ENGINE = InnoDB;

CREATE TABLE livraison (
    id_livraison            INT AUTO_INCREMENT,
    liv_date                DATE,
    id_commande             INT,
    PRIMARY KEY (id_livraison),
    FOREIGN KEY (id_commande) REFERENCES commande (id_commande)
) ENGINE = InnoDB;

CREATE TABLE fournisseur (
    id_fournisseur          INT AUTO_INCREMENT,
    four_nom                VARCHAR (50),
    four_adresse            VARCHAR (50),
    four_ville              VARCHAR (50),
    PRIMARY KEY (id_fournisseur)        
) ENGINE = InnoDB;

CREATE TABLE famille (
    id_famille              INT AUTO_INCREMENT,
    fam_nom                 VARCHAR(50),
    PRIMARY KEY (id_famille)
) ENGINE = InnoDB;

CREATE TABLE produit (
    id_produit              INT AUTO_INCREMENT,
    prod_ref                VARCHAR (50),
    prod_lib                VARCHAR (50),
    prod_descr              VARCHAR (50),
    prod_prix               INT,
    prod_tva                FLOAT,
    id_fournisseur          INT,
    id_famille              INT,
    PRIMARY KEY (id_produit),
    FOREIGN KEY (id_fournisseur) REFERENCES fournisseur (id_fournisseur),
    FOREIGN KEY (id_famille) REFERENCES famille (id_famille)
) ENGINE = InnoDB;

CREATE TABLE concerne (
    quantite                INT,
    id_livraison            INT,
    id_produit              INT,
    PRIMARY KEY (id_livraison, id_produit),
    FOREIGN KEY (id_livraison) REFERENCES livraison(id_livraison),
    FOREIGN KEY (id_produit) REFERENCES produit(id_produit)
) ENGINE = InnoDB;

CREATE TABLE compose (
    quantite                INT,
    prix                    INT,
    id_commande             INT,
    id_produit              INT,
    PRIMARY KEY (id_commande, id_produit),
    FOREIGN KEY (id_commande) REFERENCES commande (id_commande),
    FOREIGN KEY (id_produit) REFERENCES produit (id_produit)
) ENGINE = InnoDB;