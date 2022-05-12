<?php
  session_start();
  include 'functions.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cybersecurity Kidz</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="icon" href="media/lock.png" type="image/gif">
</head>

<body>
    <div class="header">
        <img src="media/cattt.gif" alt="Moving cat gif" />
    </div>
    <div>
        <a class="button" href="quiz.php">Back</a>
    </div>




<?php
    $sql = "SELECT * FROM quiz WHERE id= '1'";
    $result = $conn->query($sql);
    while($row = $result->fetch(PDO::FETCH_ASSOC)){
    echo "<h3 class='question'>" . $row['question'] . "</h3>";
    echo "<a href='question2.php' class='button_answer_first'>" . $row['ans1'] . "</a>";
    echo "<a class='button_answer'>" . $row['ans2'] . "</a>";
    echo "<br>";
    echo "<br>";
    echo "<br>";
    echo "<a class='button_answer_first'>" . $row['ans3'] . "</a>";
    echo "<a class='button_answer'>" . $row['ans4'] . "</a>";
    }
?>


</body>

</html>