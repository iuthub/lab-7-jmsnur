<?php

include('connection.php');
$conn = OpenCon();


$username = '';
$fullname = '';
$email = '';
$password = '';
$confirm_pass = '';
 
$pwdpattern = '/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})/';




if(isset($_POST["username"], $_POST["fullname"], $_POST[ "email"],$_POST["pwd"],$_POST["confirm_pwd"]) && ($_POST["confirm_pwd"] == $_POST["pwd"])){
    
    $username = $_POST["username"];
    $fullname = $_POST["fullname"];
    $email = $_POST["email"];
	$password = $_POST["pwd"];
	$confirm_pass = $_POST["confirm_pwd"];

	/*
	$username = $conn->quote($username);
    $fullname = $conn->quote($fullname);
    $email = $conn->quote($email);
	$password = $conn->quote($password);
	$confirm_pass = $conn->quote($confirm_pass);
	*/

	$sql = "INSERT INTO users(username,email,password,fullname,dob)
			VALUES ('$username','$email','$password','$fullname',NOW())";

	echo $sql;	

	if(!$conn->query($sql)){
		$errmsg = "Error description: " . $conn->error;
	}
	else{
		header('Location: index.php',301);   
	}


}
elseif(isset($_POST["username"], $_POST["fullname"], $_POST[ "email"],$_POST["pwd"],$_POST["confirm_pwd"]) && ($_POST["confirm_pwd"] != $_POST["pwd"])){
	$errmsg = "Confirmed password is not correct.";
}
else {
	$errmsg = "Fill the form";
}



CloseCon($conn);

?>


