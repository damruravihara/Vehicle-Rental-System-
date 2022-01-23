<?php
    include_once 'config.php';
?>

<?php
    $first = $_POST["fname"];
    $last = $_POST["lname"];
    $tel = $_POST["phone"];
	$Gender = $_POST["radio"];
    $address = $_POST["address"];
    $dob = $_POST["day"];
    $email = $_POST["email"];
    $psw = $_POST["Pass"];
    $repeatpsw = $_POST["rePass"];

    $sql = "insert into register(First_name, Last_name,Gender,Phone no, Address, DateOfBirth, Email, Password, RepeatPassword ) values('$first','$last','$Gender','$gender','$tel','$address','$dob','$email','$psw','$repeatpsw')";

    if(mysqli_query($conn,$sql)) {
        header("location:homepage.html");

    }
    else{
        echo"<script>alert('Error in insert records')</script>";
    }
    mysqli_close($conn);

?>