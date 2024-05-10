<?php
$mysqli = new mysqli("srv1364.hstgr.io", "u729347526_admin", "Wally2023@", "u729347526_vlib");
if($mysqli->connect_error) {
  echo "<script>alert('Could Not Connect')</script>";
  exit('Could not connect');
}
$sql = "SELECT title, abstract, imgref, syear, gsec, tags FROM rspapers WHERE rsID = " . $_GET['id'];

$stmt = $mysqli->prepare($sql);
$stmt->bind_param("s", $_GET['id']);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($title, $abstract, $imgref, $syear, $gsec, $tags);
$stmt->fetch();
$stmt->close();

echo "<script>document.querySelector('.rsTitle').innerHTML = " . $title . "</script>";
echo "<script>document.querySelector('.rsAbstract').innerHTML = " . $abstract . "</script>";
echo "<script>document.querySelector('.rsImage').innerHTML = " . $imgref . "</script>";
echo "<script>document.querySelector('.rsYr').innerHTML = " . $syear . "</script>";
echo "<script>document.querySelector('.rsTags').innerHTML = " . $tags . "</script>";
?>