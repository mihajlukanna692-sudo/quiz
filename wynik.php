<?php
include 'db.php';

$username = mysqli_real_escape_string($conn, $_POST['username'] ?? '');
$category = mysqli_real_escape_string($conn, $_POST['category'] ?? '');

$score = 0;
$total = 0;

$sql = "SELECT * FROM questions WHERE category='$category'";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {

    $id = $row['id'];

    if (isset($_POST["q" . $id])) {

        $total++;

        if ($_POST["q" . $id] == $row['correct_answer']) {
            $score++;
        }
    }
}

$sql2 = "INSERT INTO results(username, category, score, total_questions)
VALUES('$username', '$category', '$score', '$total')";

mysqli_query($conn, $sql2);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wynik</title>
    <link rel="stylesheet" href="styl2.css">
</head>
<body>
    <div class="card">
<h2>Wynik quizu</h2>

<p><b>Użytkownik:</b> <?php echo htmlspecialchars($username); ?></p>
<p><b>Kategoria:</b> <?php echo htmlspecialchars($category); ?></p>
<p><b>Wynik:</b> <?php echo $score . " / " . $total; ?></p>

<a href="index.php">Strona główna</a>
<a href="ranking.php">Ranking najlepszych wyników</a>

</div>
</body>
</html>

