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



    <!-- k -->


   <?php
	  include 'functions.php';
  	  $quesions = $db->get_questions();
   ?>


    <div class="container">

        <div class="form-group">
            <form action="score.php" method="post">
<?php
foreach($quesions as $ques) {
$options = $db->quiz_options($ques[0]);
}
?>

<h4><?php echo $ques[1]; ?></h4>
<div class="input-group-text" style="text-align: left; font-size: 18px;">
<ol>

<?php
foreach($options as $option) { 
echo "<li><input type='radio' name='".$option[2]."' value='".$option[1]."' required/> ".$option[3]."</li>";
}
?>
                    </ol>
                </div>

        </div>
        <div class="form-group">
            <input type="submit" value="Submit" name="submit" class="btn btn-primary" />
        </div>
        </form>
    </div>
    <!-- k -->




</body>

</html>