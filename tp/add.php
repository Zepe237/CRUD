<?php
include 'database.php';
echo($_POST['title']);
echo($_POST['kcal']);
echo($_POST['description']);
   
$title = $_POST['title'];
	$kcal = $_POST['kcal'];
	$desc = $_POST['description'];
$link->query("INSERT INTO food(title,kcal,description)VALUES('".$title."','".$kcal."','".$desc."')");

?>