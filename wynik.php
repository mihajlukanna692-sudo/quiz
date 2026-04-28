<?php
include 'db.php';

$username = mysqli_real_escape_string($conn, $_POST['username']);

$score = 0;
$total = 0;

$sql = "SELECT * FROM questions";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {

$id = $row['id'];

if (isset($_POST["q" . $id])) {

$total = $total + 1;

if ($_POST["q" . $id] == $row['correct_answer']) {
$score = $score + 1;
}

}}

$sql2 = "INSERT INTO results(username, score, total_questions)
VALUES('$username', '$score', '$total')";

mysqli_query($conn, $sql2);

echo "Wynik: " . $score . " / " . $total;
?>