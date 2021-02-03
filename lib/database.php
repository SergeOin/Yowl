<?php
    $host = "localhost";
    $username = "root";
    $password = "";
    $DBname = "yowl";

    //connection
    $connexion = new mysqli($host, $username, $password, $DBname)

    //check connection
    if($connexion->connect_error){
    die("Connection Failed: " . $connexion->connect_error);
    return;
    }else{

    }
?>