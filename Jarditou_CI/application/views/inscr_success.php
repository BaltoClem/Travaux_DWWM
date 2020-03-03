<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="<?=base_url('assets\css\style.css')?>">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title>Modification de produit</title>
</head>
<body>
    
<script> 

swal({
  title: "Bienvenue!",
  text: "Vous êtes inscrit sur Jarditou !",
  icon: "success",
  button: false,
});
window.setTimeout("location=('<?=site_url("produits/liste")?>');",3000);
</script>
<style>
.swal-overlay {
  background-color: rgba(63, 191, 63, 0.45);
}
</style>
    
</body>
</html>







