
<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "";
$Db_name = "myoffers_db";
// Create connection
$conn = mysqli_connect($servername, $username, $password,$Db_name);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }


?>