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
$stmt->fetch();
$stmt->close();
echo $id . ":::" . implode("---", $title) . ":::" . implode("@@@", $tags);