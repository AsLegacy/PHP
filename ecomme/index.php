<?php 
error_reporting(E_ALL);
ini_set('display_errors', '1');
?>
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
	if (isset($_GET['resetsuccess'])){
			echo "Password Successfully Changed.";
	}
  ?>
  <div id="pageContent">
  <table width="100%" border="0" cellspacing="0" cellpadding="10">
  <tr>
    <td width="32%" valign="top"><h3>About the SRT</h3>
      <p><b>Nos magasins près de chez vous !<br />
	SRT est l'une des principales sociétés de vente de Materiels Informatique, Caméra de Surveillance et Fourniture de Bureaux<br />
	Retirez immédiatement vos achats en magasin !<br />
	Commandez en ligne chez vous retirez vos achats sur place.<br /></p></td>
    <?php
error_reporting(E_ERROR | E_WARNING | E_PARSE);

session_start();
if(!isset($_SESSION['user']))
{
 ?>
     <td width="33%" valign="top"><h3><a href="http://localhost/ecomme/user_registration.php">New User? Register Here!!</a></h3>
      <p>Already a <b>SRT</b> Customer? Well come login and shop from our exclusive products.</p>
<a href="http://localhost/ecomme/user_login.php" class="myButton">Login Now</a>






      <p></p></td>
<?php } ?>
   
  </tr>
</table>

  </div>
  <?php include_once("template_footer.php");?>
</div>
</body>
</html>