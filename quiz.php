<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Quiz</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="quiz-app">

    <div class="progress">
        <div class="progress-bar"></div>
    </div>

    <form action="wynik.php" method="post" id="quizForm">

        <div class="questions">

        <?php
        include 'db.php';

        $category = $_POST['category'];
        $username = $_POST['username'];

        $sql = "SELECT * FROM questions WHERE category='$category' ORDER BY RAND() LIMIT 5";
        $result = mysqli_query($conn, $sql);

        $nr = 0;

        while ($row = mysqli_fetch_assoc($result)) {
        ?>

        <div class="question">
            <div class="question-number">Pytanie <?php echo $nr + 1; ?></div>

            <h2><?php echo htmlspecialchars($row['question']); ?></h2>

            <div class="answers">

                <label><input type="radio" name="q<?php echo $row['id']; ?>" value="A">
                    <?php echo htmlspecialchars($row['answer_a']); ?>
                </label>

                <label><input type="radio" name="q<?php echo $row['id']; ?>" value="B">
                    <?php echo htmlspecialchars($row['answer_b']); ?>
                </label>

                <label><input type="radio" name="q<?php echo $row['id']; ?>" value="C">
                    <?php echo htmlspecialchars($row['answer_c']); ?>
                </label>

                <label><input type="radio" name="q<?php echo $row['id']; ?>" value="D">
                    <?php echo htmlspecialchars($row['answer_d']); ?>
                </label>

            </div>
        </div>

        <?php
        $nr++;
        }
        ?>

        </div>

        <input type="hidden" name="username" value="<?php echo htmlspecialchars($username); ?>">

        <div class="footer">
            <input type="button" id="prevBtn" value="Wstecz">
            <input type="button" id="nextBtn" value="Dalej">
            <input type="submit" id="submitBtn" value="Zakończ">
        </div>

    </form>
</div>

<script src="script.js"></script>

</body>
</html>