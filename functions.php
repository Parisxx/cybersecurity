<?php
include("connection.php");

function get_questions(){
    $select = "SELECT * FROM `questions` where is_enabled = '1' ";
    $result = $conn->query($sql);
}


function quiz_options($q_id) {
    $select = "SELECT * FROM `quiz_options` where q_id = '$q_id' AND is_enabled = '1'  ";
    $result = $conn->query($sql);
} 


function answer($q_id) {
    $select = "SELECT * FROM `quiz_answer` where q_id = '$q_id' ";
    $result = $conn->query($sql);
} 