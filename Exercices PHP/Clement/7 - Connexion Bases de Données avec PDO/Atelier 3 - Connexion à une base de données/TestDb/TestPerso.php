
    <?php
    $serveur = "localhost";
    $login = "root";
    $password = "";
    $base = "jarditou";

    try{
        $connexion = new PDO('mysql:host='.$serveur, 'dbname='.$base, $login, $password);
        $connexion -> setAttibute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $serveur;
        echo "Connexion à la base de données réussie";
    }

    catch (PDOException $e)
    {
        echo "Echec de la connexion : " .$e->getMessage();
    }
    ?>
</body>
</html>