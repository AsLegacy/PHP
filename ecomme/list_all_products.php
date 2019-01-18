<?php
if(isset($_GET['sortby'])){
	$sortby = $_GET['sortby'];
} else {
	$sortby = "date_added";
}
if(isset($_GET['way'])){
	$way = $_GET['way'];
} else {
	$way = "DESC";
}
if(isset($_GET['filterby'])){
	$filterby = $_GET['filterby'];
}
else {
	$filterby = NULL;	
}
include "storescripts/connect_to_mysql.php";
if($filterby == NULL){
	$sql = mysql_query("SELECT * FROM products ORDER BY $sortby $way");
}
else {
	$sql = mysql_query("SELECT * FROM products WHERE category='$filterby' ORDER BY $sortby $way");	
}
$i = 0;
$dyn_table = '<table align="left" border="1" cellpadding="10" table width="100%">';
while($row = mysql_fetch_array($sql)){ 
    
    $id = $row["id"];
    $product_name = $row["product_name"];
	$price = $row["price"];
	$date_added = strftime("%b %d, %Y", strtotime($row["date_added"]));
    if ($i % 3 == 0) { 
        $dyn_table .= '<tr>
						<td width="17%" valign="top"><a href="product.php?id=' . $id . '"><img style="border:#666 1px solid;" src="inventory_images/' . $id . '.jpg" alt="' . $product_name . '" width="77" height="102" border="1" /></a>
						<b>' . $product_name . '</b><br/>
						' . $price . ' DHs<br/>
						<a href="product.php?id=' . $id . '">View Details</a>
						</td>';
    } else {
        $dyn_table .= '<td width="17%" valign="top"><a href="product.php?id=' . $id . '"><img style="border:#666 1px solid;" src="inventory_images/' . $id . '.jpg" alt="' . $product_name . '" width="77" height="102" border="1" /></a>
						<b>' . $product_name . '</b><br/>
						' . $price . ' DHs<br/>
						 <a href="product.php?id=' . $id . '">View Details</a>
						</td>';
    }
    $i++;
	if ($i%3 == 0)
		$dyn_table .= '</tr>';
}
$dyn_table .= '</table';	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Store Home Page</title>
<link rel="stylesheet" href="style/style.css" type="text/css" media="screen" />
<style>
img{
float: left;
margin-right: 5px;	
}
</style>
</head>
<body>
<div align="center" id="mainWrapper">
  <?php include_once("template_header.php");?>
  <div id="pageContent">
 Filter By: 
<select name="menu" onChange="window.document.location.href=this.options[this.selectedIndex].value;" value="Choose">
		<option value = ''> Choose </option>
         <option value="http://localhost/ecomme/list_all_products.php">Rien</option>
          <option value="http://localhost/ecomme/list_all_products.php?filterby=Mat_Info&sortby=<?php 
		if(isset($_GET['sortby']))
			echo $sortby; 
		else
			echo "date_added";
		?>&way=<?php 
		if(isset($_GET['way']))
			echo $way; 
		else
			echo "DESC";
		?>">Matériel informatique</option>
          <option value="http://localhost/ecomme/list_all_products.php?filterby=Cam_Surv&sortby=<?php 
		if(isset($_GET['sortby']))
			echo $sortby; 
		else
			echo "date_added";
		?>&way=<?php 
		if(isset($_GET['way']))
			echo $way; 
		else
			echo "DESC";
		?>">Caméra de Surveillance</option>
          <option value="http://localhost/ecomme/list_all_products.php?filterby=Four_Bur&sortby=<?php 
		if(isset($_GET['sortby']))
			echo $sortby; 
		else
			echo "date_added";
		?>&way=<?php 
		if(isset($_GET['way']))
			echo $way; 
		else
			echo "DESC";
		?>">Fournitures Bureau</option>

 </select> 
    </p>
    <?php echo $dyn_table; ?>
  </div>
  <?php include_once("template_footer.php");?>
</div>
</body>
</html>