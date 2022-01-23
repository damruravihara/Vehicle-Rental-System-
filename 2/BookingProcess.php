<?php

$servername = "localhost";
$username = "root";
$password = "1234";
$db="vehicle system";

$dbconnect = mysqli_connect($servername,$username,$password,$db);

if(mysqli_connect_errno($dbconnect)){
	echo "Failed to connect to the database";
}
else{
	echo "Database Connection successfuly";
	echo "<br>";
}

$type = $_POST["type"];
$Location = $_POST["location"];
$From = $_POST["from"];
$To = $_POST["to"];
$CName = $_POST["cardname"];
$Cno = $_POST["cardnumber"];
$ExMonth = $_POST["expmonth"];
$ExYear = $_POST["expyear"];
$CVV = $_POST["cvv"];

$sql = mysqli_query($dbconnect,"insert into booking(type,location,from,to,name,cardno,expmonth,expyear,cvv)values('$type','$Location','$From','$To','$CName','$Cno','$ExMonth','$ExYear','$CVV')");

if($sql){
	echo "record inserted successfuly";
}
else{
	echo "Failed to insert";
}

mysqli_close($dbconnect);

?>