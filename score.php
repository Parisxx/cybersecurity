<?php
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
$score = 0;

foreach($_POST as $k=>$v)
{
	$answer = $db->answer($k);
	if($answer[0][2] == $v) { // option is correct
		$score++;
	}
}
$score = $score	/ 4 *100;

if($score < 50)
{
	echo '<h2>Better luck next time! You scored '.$score.' out of 10.</h2>';
}
else {
	echo '<h2>You did well! You scored '.$score.' out of 10.</h2>';
}
?>





</body>

</html>