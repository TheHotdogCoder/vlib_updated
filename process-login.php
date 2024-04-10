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

    $sql = "SELECT pw FROM users WHERE username = '" . $_POST["username"] . "'";

    $stmt = $conn->stmt_init();

    if (! $stmt -> prepare ($sql)) {
        die("SQL Error". $conn -> error);
    }
    $userRec = mysqli_fetch_assoc($conn -> query($sql));
    
    if (!$userRec) {
        setcookie("error", 1, time() + (86400 * 30), "/");
        header('Location: /login.html');
        die();
    } else {
        if ($userRec['pw'] == $_POST['password']) {
            setcookie("username",$_POST["username"], time() + (86400 * 30), "/");
            setcookie("password",$_POST["password"], time() + (86400 * 30), "/");
            header('Location: /index.html');
            die();
        } else {
            setcookie("error", 2, time() + (86400 * 30), "/");
            header('Location: /login.html');
            die();
        }
    };