<html>
<head>
<title>My Form</title>
</head>
<body>

<?php echo validation_errors(); ?>

<?php echo form_open('form_ajout'); ?>

<h5>Libellé</h5>
<input type="text" name="pro_libelle"><br>

<h5>Référence</h5>
<input type="text" name="pro_ref"><br>

<div><input type="submit" value="Ajouter" /></div>

</form>

</body>
</html>