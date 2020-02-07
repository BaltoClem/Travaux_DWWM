<html>
<head>
<title>Téléchargement photo</title>
</head>
<body>

<h3>Votre photo a été téléchargé avec succès!</h3>

<ul>
<?php foreach ($upload_data as $item => $value):?>
<li><?php echo $item;?>: <?php echo $value;?></li>
<?php endforeach; ?>
</ul>

<p><?php echo anchor('form_produits_ajout', 'Upload Another File!'); ?></p>

</body>
</html>