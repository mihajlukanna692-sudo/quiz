<?php
include 'db.php';

$categories = mysqli_query($conn, "SELECT DISTINCT category FROM results");
?>

<!DOCTYPE html>
<html lang="pl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ranking</title>
<link rel="stylesheet" href="styl.css">
</head>
<body>

<div class="container">

    <h1> Ranking najlepszych wyników</h1>

    <?php while($cat = mysqli_fetch_assoc($categories)) { 
        $category = $cat['category'];
    ?>

    <div class="box">
        <h2><?php echo htmlspecialchars($category); ?></h2>

        <?php
        $sql = "
            SELECT username, score, total_questions
            FROM results
            WHERE category='$category'
            ORDER BY score DESC, total_questions DESC
            LIMIT 3
        ";

        $result = mysqli_query($conn, $sql);

        $place = 1;

        while($row = mysqli_fetch_assoc($result)) {

            $medal = "";
            if($place == 1) $medal = "gold";
            if($place == 2) $medal = "silver";
            if($place == 3) $medal = "bronze";
        ?>

        <div class="row">
            <div class="place <?php echo $medal; ?>">
                <?php echo $place; ?>
            </div>

            <div class="name">
                <?php echo htmlspecialchars($row['username']); ?>
            </div>

            <div class="score">
                <?php echo $row['score'] . " / " . $row['total_questions']; ?>
            </div>
        </div>

        <?php $place++; } ?>

    </div>

    <?php } ?>

    <a href="index.php" class="home-btn">Strona główna</a>

</div>

</body>
</html>