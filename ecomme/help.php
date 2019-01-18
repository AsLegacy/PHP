<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Store Home Page</title>
<link rel="stylesheet" href="style/style.css" type="text/css" media="screen" />
</head>
<body>
<div align="center" id="mainWrapper">
  <?php include_once("template_header.php");
  	if (isset($_GET['success'])){
			echo "Successful Registration.";
	}
  	if (isset($_GET['userloginsuccess'])){
			echo "Successful Login.";
	}
	
  ?>
  <div id="pageContent">
  <table width="100%" border="0" cellspacing="0" cellpadding="10">
  <tr>
    <td width="94%" valign="top"><h3>Help Section</h3>
      <p><b>SRT</b> sert également les clients en ligne. Au lieu de faire des achats physiques, les clients peuvent s'inscrire auprès de nous et obtenir un compte grâce auquel ils peuvent faire leurs achats en ligne. Tous les articles que nous fournissons sont affichés sur notre site Web. Les clients peuvent choisir les articles qu'ils veulent, la quantité qu'ils veulent et ils peuvent choisir l'option de livraison à domicile avec des frais supplémentaires pour la livraison ou comme leur liste de souhaits quand ils nous visitent la prochaine fois. </ P>
      <p> Chaque utilisateur qui s'est inscrit reçoit un panier virtuel qui affiche tous les éléments qu'il a choisis. Peu d'articles bénéficient de réductions qui sont automatiquement ajoutées aux articles dans le panier. Le prix net est affiché en bas. </P>
      <p> Grâce à notre site Web convivial, vous pouvez facilement commander des articles. </p>
      <p> <ul>
  <li> En cliquant sur les produits, on peut commencer par choisir des articles. </li>
  <li> Tous les éléments sont affichés en mode grille. En cliquant sur un
article, dirige vers la page avec des détails sur le produit. </li>
  <li> En cliquant sur ajouter au panier, ajoute cet article au panier et l'utilisateur peut choisir l'option du produit tout rabais disponible est automatiquement ajouté à cet article et le prix net est évalué, ce qui est indiqué en bas. </li>
  <li> En cliquant sur la livraison ci-dessous, l'utilisateur peut choisir les adresses auxquelles les articles dans le panier doivent être livrés, par défaut l'adresse donnée au moment de l'inscription est utilisée. </li>

</ul> </p>
      <p><br />
</td>
    <td width="3%" valign="top"><p><br />
        </p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    <?php
error_reporting(E_ERROR | E_WARNING | E_PARSE);

session_start();
if(!isset($_SESSION['user']))
{
 ?>
     <td width="3%" valign="top"><h3>&nbsp;</h3>
<p></p></td>
<?php } ?>
   
  </tr>
</table>

  </div>
  <?php include_once("template_footer.php");?>
</div>
</body>
</html>