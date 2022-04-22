<?php
  session_start();
  include 'functions.php';
  get_questions();
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




    
    <form action="score.php" method="post">
        <?php
foreach($questions as $quest) {
$options = $db->quiz_options($quest[0]);
}
?>

        <h4><?php echo $quest[1]; ?></h4>
        <div class="input-group-text" style="text-align: left; font-size: 18px;">
            <ol>

                <?php
foreach($options as $option) { 
echo "<p><input type='radio' name='".$option[2]."' value='".$option[1]."' required/> ".$option[3]."</p>";
}
?>
            </ol>

            <input type="submit" value="Submit" name="submit" class="btn btn-primary" />

    </form>




</body>

</html>