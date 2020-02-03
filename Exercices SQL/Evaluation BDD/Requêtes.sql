/* 1 - Requête pour la liste des contacts français*/

/* On sélectionne dans un premier temps les colonnes concernées 
tout en les renommant avec AS*/
SELECT CompanyName AS Société, ContactName AS Contact, ContactTitle AS Fonction, Phone AS Téléphone 
/*On indique à partir de quel tableau on sélectionne les colonnes avec FROM*/
FROM customers 
WHERE Country = "France"

/* 2 - Requête produits vendus par le fournisseur "Exotic Liquids"*/

SELECT ProductName AS Produit,  UnitPrice AS Prix 
FROM products
/*Afin de faire le lien entre la table products et suppliers, 
on utilise un INNER JOIN.
Cela permettra de chercher l'information que l'on désire*/
INNER JOIN suppliers
/* Le ON va permettre de définir la clé étrangère qui permettra 
de faire le lien entre les deux tableau*/
ON products.SupplierID = suppliers.SupplierID
WHERE CompanyName = "Exotic Liquids"

/* 3 - Nombre de produits vendus par les fournisseurs français 
dans l'ordre décroissant*/

SELECT CompanyName AS "Fournisseurs",
/*Pour compter le nombre de produits, 
on choisit COUNT auquel on précise la colonne à compter*/ 
COUNT(products.ProductName) AS "Nbre Produits"
FROM suppliers 
INNER JOIN products 
ON suppliers.SupplierID = products.SupplierID
WHERE Country = "France"
/*La commande GROUP BY est utilisée en SQL 
pour grouper plusieurs résultats et utiliser une fonction de totaux 
sur un groupe de résultat. 
Sur une table qui contient toutes les ventes d’un magasin, 
il est par exemple possible de regrouper les ventes par clients identiques 
et d’obtenir le coût total des achats pour chaque client.*/
GROUP BY CompanyName
/*On précise ensuite l'ordre de classement avec DESC*/
ORDER BY COUNT(products.ProductName) DESC
/*On peut aussi utiliser ASC pour définir un ordre croissant*/

/* 4 - Liste des clients Français ayant plus de 10 commandes*/

SELECT CompanyName AS "Client", COUNT(orders.CustomerID) AS "Nbre commandes"
FROM customers
INNER JOIN orders
ON customers.CustomerID = orders.CustomerID
WHERE Country = "France"
GROUP BY CompanyName
/*La condition HAVING est similaire à WHERE 
mais est utilisé pour SUM, COUNT, AVG, MIN, MAX*/
HAVING COUNT(orders.CustomerID) >10

/* 5 - Liste des clients ayant un chiffre d’affaires > 30.000*/

SELECT customers.CompanyName AS "Client", SUM(order_details.Quantity*order_details.UnitPrice) AS "CA", customers.Country AS "Pays"
FROM customers
INNER JOIN orders
ON customers.CustomerID = orders.CustomerID
INNER JOIN order_details
ON orders.OrderID = order_details.OrderID
GROUP BY customers.CustomerID
/*Ayant déjà défini le SUM plus tôt avec un alias AS, 
on peut utiliser ce dernier pour nommer le calcul*/
HAVING CA > 30000
ORDER BY CA DESC

/* 6 - Liste des pays dont les clients ont passé commande de produits fournis par "Exotic Liquids"*/

SELECT DISTINCT ShipCountry AS "Pays" /*Afin d'éviter les doublons des pays 
que l'on veut voir apparaître, 
la fonction DISTINCT permet d'éviter cela en réunissant 
toutes les données en une seule*/
FROM orders
INNER JOIN order_details
ON orders.OrderID = order_details.OrderID
INNER JOIN products
ON order_details.ProductID = products.ProductID
INNER JOIN suppliers
ON products.SupplierID = suppliers.SupplierID
WHERE CompanyName = "Exotic Liquids"
ORDER BY ShipCountry ASC

/* 7 - Montant des ventes de 1997*/

SELECT SUM(order_details.UnitPrice * order_details.Quantity) AS "Montant Ventes 1997"
FROM order_details
INNER JOIN orders
ON orders.OrderID = order_details.OrderID
WHERE OrderDate BETWEEN  "1997-01-01" AND "1997-12-31"
/*Ici, BETWEEN et AND réunis toutes les dates qui nous intéressent,
faire attention à la façon d'écrire la date*/


/* 8 - Montant des ventes de 1997 mois par mois*/

/*MONTH permet, comme son nom l'indique, de sélectionner les mois
d'une fourchette de dates séléctionnées*/
SELECT MONTH(orders.OrderDate) AS "Mois 1997", SUM(order_details.UnitPrice * order_details.Quantity) AS "Montant Ventes 1997"
FROM order_details
INNER JOIN orders
ON orders.OrderID = order_details.OrderID
WHERE OrderDate BETWEEN  "1997-01-01" AND "1997-12-31"
GROUP BY MONTH(orders.OrderDate)
/*La commande GROUP BY est utilisée en SQL pour grouper plusieurs résultats 
et utiliser une fonction de totaux sur un groupe de résultat.*/

/* 9 - Depuis quelle date le client "Du Monde Entier" n'a plus commandé*/

/*La fonction MAX est ici utilisé pour indiquer la valeur maximum désirée,
nous voulons ici la dernière date, donc la valeur maximum*/
SELECT MAX(orders.OrderDate) AS "Date de Dernière Commande"
FROM orders
INNER JOIN customers
ON orders.CustomerID = customers.CustomerID
WHERE customers.CompanyName = "Du monde entier"

/* 10 - Quel est le délai moyen de livraison en jours ?*/

SELECT ROUND(AVG(DATEDIFF(ShippedDate,OrderDate))) AS "Délai moyen de livraison en jours"
FROM orders

/* La fonction DATEDIFF permet de calculer un intervalle entre deux dates
définies entre parenthèses*/
/*La fonction AVG permet ensuite de calculer la moyenne de cet intervalle*/
/*Enfin, la fonction ROUND permet d'arrondir 
le résultat trouvé par la fonction AVG précédente*/