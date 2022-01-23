<?php

$servername ="localhost";
$username ="root";
$password ="1234";
$db = "vehicle system";

// Create connection
  $conn =newmysqli($servername, $username, $password,$db);
// Check connection
 if($conn->connect_error){
	die("Connection failed: ". $conn->connect_error);
	}
	echo"Connected successfully";
		
?>