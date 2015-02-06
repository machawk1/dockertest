<?php

$host = "localhost";
$username = "admin";
$password = "5pR1nG2OlS";
$db = "lecture4";

$db = new mysqli($host,$username,$password,$db);

$res = $db->query("SELECT * from heroes");

while($row = $res->fetch_assoc()){
    echo $row['id']." ".$row['lair_id']." ".$row['name']." ".$row['real_name'];
}

?>
