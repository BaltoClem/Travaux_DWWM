DROP DATABASE IF EXISTS papyrus;

CREATE DATABASE papyrus;

USE papyrus;

CREATE TABLE produit (
	prod_codart CHAR(4) NOT NULL,
	prod_libart VARCHAR(30) NOT NULL,
	prod_stkale INT(10) NOT NULL,
	prod_stkphy INT(10) NOT NULL,
	prod_qteann INT(10) NOT NULL,
	prod_unimes CHAR(5) NOT NULL,
	PRIMARY KEY (prod_codart)
)
;

CREATE TABLE fournis (
	four_num VARCHAR(25) NOT NULL,
	four_nom VARCHAR(25) NOT NULL,
	four_rue VARCHAR(50) NOT NULL,
	four_pos SMALLINT(5) NOT NULL CHECK (four_pos = 5),
	four_vil VARCHAR(30) NOT NULL,
	four_con VARCHAR(15) NOT NULL,
	four_satisf TINYINT(10) DEFAULT 1,
	PRIMARY KEY (four_num)
	
)
;

CREATE TABLE vente (
	ven_delliv SMALLINT(5) NOT NULL,
	ven_qte1 INT(10) NOT NULL,
	ven_prix1 VARCHAR(50)NOT NULL,
	ven_qte2 INT(10),
	ven_prix2 VARCHAR(50),
	ven_qte3 INT(10),
	ven_prix3 VARCHAR(50),
	four_num VARCHAR(25) NOT NULL,
	prod_codart CHAR(4) NOT NULL,
	FOREIGN KEY (four_num) REFERENCES fournis (four_num),
	FOREIGN KEY (prod_codart) REFERENCES produit (prod_codart)
)
;

CREATE TABLE entcom (
	ent_numcom INT(10) NOT NULL AUTO_INCREMENT,
	ent_obscom VARCHAR(50),
	ent_datcom TIMESTAMP NOT NULL,
	four_num VARCHAR(25),
	PRIMARY KEY (ent_numcom),
	FOREIGN KEY (four_num) REFERENCES fournis (four_num),
	INDEX idx_num (four_num)
)
;

CREATE TABLE ligcom (
	lig_numlig TINYINT(3) NOT NULL,
	lig_qtecde INT(10) NOT NULL,
	lig_priuni VARCHAR(50)NOT NULL,
	lig_qteliv INT(10),
	lig_derliv DATETIME NOT NULL,
	ent_numcom INT(10)NOT NULL,
	prod_codart CHAR(4)NOT NULL,
	PRIMARY KEY (lig_numlig),
	FOREIGN KEY (ent_numcom) REFERENCES entcom (ent_numcom),
	FOREIGN KEY (prod_codart) REFERENCES produit (prod_codart)
)
;

CREATE USER "util_1"@"127.0.0.1" IDENTIFIED BY "1Ksable";
GRANT ALL PRIVILEGES 
ON papyrus.* 
TO "util_1"@"127.0.0.1" 
IDENTIFIED BY "1Ksable";

CREATE USER "util_2"@"127.0.0.1" IDENTIFIED BY "1Ksable";
GRANT SELECT 
ON papyrus.* 
TO "util_2"@"127.0.0.1"
IDENTIFIED BY "1Ksable";

CREATE USER "util_3"@"127.0.0.1" IDENTIFIED BY "1Ksable";
GRANT SELECT 
ON papyrus.fournis
TO "util_3"@"127.0.0.1"
IDENTIFIED BY "1Ksable";
