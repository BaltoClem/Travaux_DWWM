SELECT ville_nom_reel, ville_population_2012
FROM villes_france_free
ORDER BY ville_population_2012 DESC
LIMIT 10;

SELECT ville_nom_reel, ville_surface
FROM villes_france_freeORDER 
BY ville_surface ASC
LIMIT 50;

SELECT departement_nom
FROM departement
WHERE departement_code LIKE "97%";

SELECT ville_nom_reel, departement_code
FROM villes_france_free
LEFT JOIN departement
ON departement.departement_code = villes_france_free.ville_departement
ORDER BY ville_population_2012 DESC
LIMIT 10;

SELECT 

