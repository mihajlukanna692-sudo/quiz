<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "quiz";

$conn = mysqli_connect($host, $user, $pass, $db);

if(!$conn){
    die("Błąd połączenia z bazą: " . mysqli_connect_error());
}
?>
