<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz start</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="form">
    <form action="quiz.php" method="post">

        <label for="username">User name</label>
        <input type="text" name="username" id="username">

        <br><br>

        <label>Kategoria:</label>
        <select name="category">
            <option value="geografia">Geografia</option>
            <option value="historia">Historia</option>
            <option value="programowanie">Programowanie</option>
        </select>

        <br><br>

        <input type="submit" value="Start">

    </form>
</div>

</body>
</html>