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
    <td width="86%" valign="top"><h3>Contact us at:</h3>

      <p>SRT,<br />
        Casablanca ,<br />
        MAROC - 20070</p>
      <p>+212661000000</p>
      <p>email us at - info@srt.com</p>
      <p>Tariq,<br />
        <a href="mailto:tariq@srt.com">tariq@srt.com</a>,<br />
        +212654000000</p>
      <p>Sara,<br />
        <a href="mailto:sara@srt.com">sara@srt.com</a>,<br />
        +212662000000<br />
	  <p>Rihabe,<br />
        <a href="mailto:rihabe@srt.com">rihabe@srt.com</a>,<br />
        +21263000000<br />
</p></td>
    <td width="4%" valign="top"><p><br />
        </p>
		<div align="right">
	<img src="mgl.png" width="302" height="207" alt="Master Génie Logiciel" />
	</div>
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
     <td width="10%" valign="top"><h3>&nbsp;</h3>
<p></p></td>
<?php } ?>
   
  </tr>
</table>

  </div>
  <?php include_once("template_footer.php");?>
</div>
</body>
</html>