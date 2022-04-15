<?php

try{
    $bdd= new PDO ("mysql:host=localhost;dbname=tp","root","");
}
catch(Exception $e){
    die("Erreur:".$e->getmessage());
}
?>
<?php
$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>
