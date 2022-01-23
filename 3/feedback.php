<?php
  include_once 'config.php';
?>
<?php
  $name = $_POST["name"];
  $email = $_POST["email"];
  $number = $_POST["number"];
  $massage = $_POST["massage"];
  
 $sql = "insert into feedback (name,email,number,massage)values('$name','$email','$number','$massage ')";

 if(mysqli_query($conn,$sql)){

	  echo"<script>alert ( 'Feedback inserted sucessfully!')</script>";    
 }
 else {
	 echo"<script>alert('Error in inserthinh massage')</script>";
 }
mysqli_close($conn)
?>