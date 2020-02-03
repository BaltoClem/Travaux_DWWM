/*1*/SELECT * FROM employe
/*2*/SELECT * FROM dept
/*3*/SELECT nom, dateemb, nosup, nodep, salaire FROM employe
/*4*/SELECT titre FROM employe
/*5*/SELECT DISTINCT titre FROM employe
/*6*/SELECT nom, noemp, nodep FROM employe WHERE titre = "secrétaire"
/*7*/SELECT nom,nodep from employe where nodep > 40
/*8*/SELECT nom, prenom FROM employe where nom < prenom
/*9*/SELECT nom, salaire, nodep FROM employe WHERE titre = "Représentant" AND nodep = 35 AND salaire>20000
/*10*/SELECT nom, titre, salaire FROM employe WHERE titre = "représentant" OR titre = "président"
/*11*/SELECT nom, titre, nodep FROM employe where nodep = 34 AND (titre = "représentant" OR titre = "secrétaire")
/*12*/SELECT nom, titre,nodep, salaire, FROM employe WHERE titre = "représentant" OR (titre="secrétaire" AND nodep = 34)
/*13*/SELECT nom, salaire from employe where salaire >20000 AND salaire <30000
/*15*/SELECT nom from employe where nom LIKE "h%"
/*16*/SELECT nom from employe where nom LIKE "%n"
/*17*/SELECT nom from employe where nom LIKE "__u%"
/*18*/SELECT nom, salaire from employe where nodep = 41 ORDER BY salaire ASC
/*19*/SELECT nom, salaire from employe where nodep = 41 ORDER BY salaire DESC
/*20*/SELECT titre, salaire, nom FROM employe order by titre asc salaire desc
/*21*/SELECT tauxcom, salaire, nom from employe order by tauxcom asc
/*22*/SELECT nom, salaire,tauxcom, titre from employe where tauxcom is null
/*23*/SELECT nom, salaire, tauxcom, titre from employe where tauxcom is not null
/*24*/SELECT nom, salaire,tauxcom, titre from employe where tauxcom <15
/*25*/SELECT nom, salaire,tauxcom, titre from employe where tauxcom >15
/*26*/SELECT nom, salaire, tauxcom, salaire * tauxcom AS commission from employe where tauxcom is not null 
/*27*/SELECT nom, salaire, tauxcom, salaire * tauxcom AS commission from employe where tauxcom is not null  order by tauxcom asc
/*28*/SELECT CONCAT (prenom, nom) AS PrenomNom from employe
/*29*/SELECT SUBSTRING (nom,1,5) from employe
/*30*/SELECT LOCATE  ("r", nom) from employe
/*31*/SELECT nom, UPPER (nom), LOWER (nom) from employe WHERE nom ="Vrante"
/*32*/SELECT nom, LENGTH (nom) FROM employe

SELECT employe.nom, dept.noregion
FROM employe
INNER JOIN dept
ON employe.nodept = dept.nodept

SELECT dept.nodept AS "Numéro Département", dept.nom AS "Nom du Département", employe.nom AS "Nom de l'employé"
FROM employe
INNER JOIN dept
ON employe.nodept = dept.nodept
ORDER BY dept.nodept

SELECT employe.nom AS "Nom employé", dept.nom AS "Nom Département"
FROM employe
INNER JOIN dept
ON employe.nodept = dept.nodept
WHERE dept.nom = "Distribution"

SELECT t1.nom, t1.salaire, t2.
SELF JOIN 