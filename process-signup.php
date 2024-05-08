<?php
    $servername = "localhost:3306";
    $username = "vlibers";
    $password = "5626";
    $dbname = "vlib";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    }

    $sql = "INSERT INTO users (username, pw, email, firstName, lastName, middleInit)
    VALUES (".'"'. implode('", "',$_POST) .'"'.");";
    $conn -> query($sql);

    setcookie("username",$_POST["username"], time() + (86400 * 30), "/");
    setcookie("password",$_POST["password"], time() + (86400 * 30), "/");

    header('Location: /index.html');
    die();