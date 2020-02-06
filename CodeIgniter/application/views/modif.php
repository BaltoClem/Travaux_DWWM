<html>
<head>
    <title>Formulaire de modification</title>
</head>
<body>
<?php echo form_open('form_modif'); ?>

<h5>Libellé</h5>
    <input type="text" name="pro_libelle" value="<?= $produits->pro_libelle; ?>"><br>

    <h5>Référence</h5>
    <input type="text" name="pro_ref" value="<?= $produits->pro_ref; ?>"><br>
    
    <input type="hidden" name="id" value="<?= $produits->pro_id; ?>"><br>
    <input type="submit" value="Modifier"><br>
</form>
</body>
</html>