<?php
   function connection() {
        $host = '127.0.0.1';
        $db   = 'cybersecurity';
        $user = 'root';
        $pass = '';

        $options = [
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ];

        $conn = new PDO('mysql:host=' . $host . ';dbname=' . $db . ';charset=utf8', $user, $pass);
        return $conn;
   }
 
