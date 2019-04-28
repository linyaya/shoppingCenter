<?php
$database_server = "sophia.cs.hku.hk";
$user_name = "yylin";
$password = "hhhh0828";
$your_db = "yylin";
//Connect to database
$conn=mysqli_connect($database_server, $user_name, $password) or die('Error! '. mysqli_error($conn));
//Select database
mysqli_select_db($conn, $your_db) or die('Error! '. mysqli_error($conn));

$query="SELECT DISTINCT itemCategory FROM catalog";
//Execute SQL query
$result = mysqli_query($conn, $query) or die('Error! '. mysql_error($conn));

$item_array=array();

while($row = mysqli_fetch_array($result)) {
  $item_array[] = array('itemCategory'=>$row['itemCategory']);
}

echo json_encode($item_array);
 ?>
