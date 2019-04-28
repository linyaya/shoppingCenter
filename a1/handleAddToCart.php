<?php
ob_start();
session_start();
$cartNum = 0;
if (!isset($_SESSION['shoppingCart'])){
  //first load
  if ($_GET['itemID']=='0'){
    print $cartNum;
  }
  //first add
  else{
    $_SESSION['shoppingCart'][$_GET['itemID']]=$_GET['updateNumber'];
    foreach($_SESSION['shoppingCart'] as $key => $value){
      $cartNum += $value;
    }
    print $cartNum;
  }

}else if(!isset($_SESSION['shoppingCart'][$_GET['itemID']])){
//when check out
  if ($_GET['itemID']== '-1'){
    unset($_SESSION['shoppingCart']);
    print $_GET['updateNumber'];
    exit;
  }
  //load the index page after set session already(send id=0)
  if ($_GET['itemID']=='0'){
    foreach($_SESSION['shoppingCart'] as $key => $value){
      $cartNum += $value;
    }
    print $cartNum;
    exit;
  }
//add a new item
    $_SESSION['shoppingCart'][$_GET['itemID']]+=$_GET['updateNumber'];
    foreach($_SESSION['shoppingCart'] as $key => $value){
      $cartNum += $value;
    }
    print $cartNum;

}else{
//update the existing item quantity
  $_SESSION['shoppingCart'][$_GET['itemID']] += $_GET['updateNumber'];
//when change to 0 delete the item
  if ($_SESSION['shoppingCart'][$_GET['itemID']]==0){
    unset($_SESSION['shoppingCart'][$_GET['itemID']]);
  }
//normal update
  foreach($_SESSION['shoppingCart'] as $key => $value){
    $cartNum += $value;
  }

  print $cartNum;

}

ob_end_flush();

?>
