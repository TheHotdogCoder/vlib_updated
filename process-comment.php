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

    $userComment = $_POST['userComment'];
    
    $sql_1 = "SELECT pw FROM users WHERE username = '" . $_POST["username"] . "'";

    $stmt = $conn->stmt_init();

    if (! $stmt -> prepare ($sql_1)) {
        die("SQL Error". $conn -> error);
    }
    $currCommentSet = mysqli_fetch_assoc($conn -> query($sql_1));
?>