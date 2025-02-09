<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="Assets\css\style.css">
  <title>Tableau</title>
</head>
<body>
        <div class="container">
                <div class= "row">        
    
        <div class="col-6"><img src="Assets\img\jarditou_logo.jpg" alt="Logo Jarditou" id="logoJarditou" class="logo"></div>           
        <div class="col-6 mt-5"><h3>Tout le jardin</h3></div>
    
        <nav id="navbar" class="col-12 navbar-expand-sm navbar-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="index.php">Accueil</a></li>
                    <li class="nav-item"><a class="nav-link" href="Tableau.php">Tableau</a></li>
                    <li class="nav-item"><a class="nav-link" href="Contact.php">Contact</a></li>
                </ul>
            </div>
        </nav>
    
    <div class="col-12"><img src="Assets\img\promotion.jpg" alt="Promotion" class="promotion"></div>

<table class="table-responsive">
        <table class="table table-striped table-hover table-bordered">
        <thead class="thead-dark">
            <tr valign = "center" >
                <th>Photo</th>
                <th>ID</th>
                <th>Catégorie</th>
                <th>Libellé</th>
                <th>Prix</th>
                <th>Couleur</th>

         <tbody>
             <tr valign = "center">
                 <td><img src = "Assets\img\7.jpg" width="75"></td>
                 <td>7</td>
                 <td>Barbecues</td>
                 <td>Aramis</td>
                 <td>110.00€</td>
                 <td>Brun</td>
             </tr>

             <tr valign = "center">
                <td><img src = "Assets\img\8.jpg" width="75"></td>
                <td>8</td>
                <td>Barbecues</td>
                <td>Athos</td>
                <td>249.99€</td>
                <td>Noir</td>
            </tr>

            <tr valign = "center">
                <td><img src = "Assets\img\11.jpg" width="75"></td>
                <td>11</td>
                <td>Barbecues</td>
                <td>Clatronic</td>
                <td>135.90€</td>
                <td>Chrome</td>
            </tr>
            <tr valign = "center">
                <td><img src = "Assets\img\12.jpg" width="75"></td>
                <td>12</td>
                <td>Barbecues</td>
                <td>Camping</td>
                <td>88.00€</td>
                <td>Noir</td>
            </tr>
            <tr valign = "center">
                    <td><img src = "Assets\img\13.jpg" width="75"></td>
                    <td>13</td>
                    <td>Brouettes</td>
                    <td>Green</td>
                    <td>49.00€</td>
                    <td>Verte</td>
                </tr>

        </tbody>
            </tr>
        </thead>
        </table>
    </table>

    <footer class="col-12 p-3">
    
            <ul>
                    <li>Mentions légales</li>
                    <li>Horaires</li>
                    <li>Plan du site</li>
            </ul>

</footer>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>