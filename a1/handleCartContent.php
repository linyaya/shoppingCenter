<?php
ob_start();

session_start();
if (!isset($_SESSION['shoppingCart'])){

}else{
  $database_server = "sophia.cs.hku.hk";
  $user_name = "yylin";
  $password = "hhhh0828";
  $your_db = "yylin";
  //Connect to database
  $conn=mysqli_connect($database_server, $user_name, $password) or die('Error! '. mysqli_error($conn));
  //Select database
  mysqli_select_db($conn, $your_db) or die('Error! '. mysqli_error($conn));

  $shop_array=array();

  foreach ($_SESSION['shoppingCart'] as $key => $value){

    $query = "SELECT * FROM catalog WHERE itemID = '$key'";
    $result = mysqli_query($conn, $query) or die('Error! '.mysqli_error($conn));
    $row = mysqli_fetch_array($result);
    $shop_array[] = array('itemID'=>$row['itemID'], 'itemName'=>$row['itemName'],
    'itemDescription'=>$row['itemDescription'], 'itemImage'=>$row['itemImage'], 'itemPrice'=>$row['itemPrice'],
    'itemCount'=>$value);
  }//end of for

  echo json_encode($shop_array);

}//end of else

ob_end_flush();
?>
