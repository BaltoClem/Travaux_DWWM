
<?php
try {
    $db = new PDO('mysql:host=localhost;dbname=hotel', 'root', '');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    print "Erreur !: " . $e->getMessage() . "<br>";
    die();
}
$requete = $db->prepare("SELECT * FROM station WHERE sta_altitude>:altitude");
$requete->bindValue(":altitude", $altitude);
$requete->execute();
 
while ($ligne = $requete->fetch()) 
{
    echo $ligne["sta_nom"];
}
$requete = $db->prepare("SELECT * FROM station WHERE sta_altitude>:altitude");
$requete->bindValue(":altitude", $altitude);
$requete->execute();
 
$tableau = $requete->fetchAll();
$requete = $db->prepare("INSERT INTO station (sta_nom, sta_altitude) VALUES (:nom, :altitude)");
$requete->bindValue(":altitude", $altitude);
$requete->execute();
?>