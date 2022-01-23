<?php

include_once 'config.php';

?>

<?php

$sql = "SELECT * FROM booking";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<br> type: ". $row["type"]. " - Location: ". $row["location"]. "Duration -" ."from" .$row["from"] ."to".$row["to"].
		"Name -".$row["name"]."Card no -".$row["cardno"]."Exp Month -".$row["expmonth"]."Exp Year -".$row["expyear"]."CVV -".$row["cvv"]<br>";
	}
    }
 else {
    echo "0 results";
}

$conn->close();

?>