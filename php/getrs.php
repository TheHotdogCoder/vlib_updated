<?php

$mysqli = new mysqli("srv1364.hstgr.io", "u729347526_admin", "Wally2023@", "u729347526_vlib", 3306);
if($mysqli->connect_error) {
  exit('Could not connect');
}
$sql = "SELECT title, abstract, imgref, syear, tags FROM rspapers WHERE rsID = ?";

$stmt = $mysqli->prepare($sql);
$stmt->bind_param("s", $_GET['id']);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($title, $abstract, $imgref, $syear, $tags);
$stmt->fetch();
$stmt->close();

echo $title .":::". $abstract .":::". $imgref .":::". $syear .":::". $tags;
?>