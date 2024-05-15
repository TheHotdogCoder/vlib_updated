<?php

$mysqli = new mysqli("srv1364.hstgr.io", "u729347526_admin", "Wally2023@", "u729347526_vlib", 3306);
if ($mysqli->connect_error) {
  exit('Could not connect');
}
$sql = "SELECT id, title, tags FROM rspapers";

$stmt = $mysqli->prepare($sql);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($id, $title, $tags);
$idArray = array();
$titleArray = array();
$tagsArray = array();
while ($stmt->fetch()) {
  array_push($idArray, $id);
  array_push($titleArray, $title);
  array_push($tagsArray, $tags);
}
$stmt->close();
echo implode("---", $idArray), implode("---", $titleArray), implode("---", $tagsArray);