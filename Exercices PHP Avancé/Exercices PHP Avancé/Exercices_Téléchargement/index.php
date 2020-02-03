<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Formulaire d'upload</title>
</head>
<body>
    <form action="recup_donnees.php" method="post" enctype="multipart/form-data">
    
    <p>

     <label for="fileName">Nom du fichier après upload</label>   
    <input type="text" id= "fileName" name="fileName" value="">

    </p>
    
    <input type="hidden" name="MAX_FILE_SIZE" value="104857600">
    <p><input type="file" name="fichier" id=""></p>

    <p><input type="submit" value="Enregistrer"></p>
    
    </form>
</body>
</html>