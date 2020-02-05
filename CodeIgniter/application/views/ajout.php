<html>
<head>
    <title>Formulaire d'ajout d'un produit</title>
</head>
<body>
 
<?php echo validation_errors(); ?>

 <?php echo form_open(); ?>
    <input type="text" name="pro_libelle"><br>
    <input type="text" name="pro_ref"><br>
    <input type="submit" value="Ajouter"><br>
</form>
</body>
</html>