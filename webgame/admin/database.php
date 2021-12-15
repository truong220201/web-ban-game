<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "web_game";
    $conn = new PDO("mysql:host=$servername;dbname=$dbname;", $username, $password);
    if(!$conn){
        die("Connect database failed");
    }
?>