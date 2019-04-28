<?php
$database_server = "sophia.cs.hku.hk";
$user_name = "yylin";
$password = "hhhh0828";
$your_db = "yylin";
//Connect to database
$conn=mysqli_connect($database_server, $user_name, $password) or die('Error! '. mysqli_error($conn));
//Select database
mysqli_select_db($conn, $your_db) or die('Error! '. mysqli_error($conn));

if ($_GET['show']=='initial'){

  $queryForCategory="SELECT itemCategory FROM catalog";
  $value=mysqli_fetch_array(mysqli_query($conn, $queryForCategory))[0];

  $query="SELECT * FROM catalog WHERE itemCategory = '$value' ORDER BY itemName LIMIT 3";

  $query2="SELECT COUNT(*) FROM catalog WHERE itemCategory = '$value'";

}else if($_GET['show']=='specialPage'){

  $offset = ($_GET['page']-1)*3;
  $value = $_GET['category'];
  $query="SELECT * FROM catalog WHERE itemCategory = '$value' ORDER BY itemName LIMIT $offset, 3";


}else if($_GET['show']== 'specialCategory'){

  $value = $_GET['category'];
  $query="SELECT * FROM catalog WHERE itemCategory = '$value' ORDER BY itemName LIMIT 3";
  $query2="SELECT COUNT(*) FROM catalog WHERE itemCategory = '$value'";

}

$result = mysqli_query($conn, $query) or die('Error! '. mysql_error($conn));

$item_array=array();

while($row = mysqli_fetch_array($result)) {

  $item_array[] = array('itemID'=>$row['itemID'], 'itemName'=>$row['itemName'], 'itemDescription'=>$row['itemDescription'],
  'itemCategory'=>$row['itemCategory'], 'itemImage'=>$row['itemImage'], 'itemPrice'=>$row['itemPrice']);
}
$count = mysqli_fetch_array(mysqli_query($conn, $query2));
$item_array[] = array('itemCount'=> $count[0]);

echo json_encode($item_array);
?>
