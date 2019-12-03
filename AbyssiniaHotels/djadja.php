
<?php

include_once 'dbconnect2.php';


if(!isset($_SESSION['user'])){
    header("Location: customersignin.html");
}else{
    $user = $_SESSION['user'];	


			header('location:dashboard.php');
					exit;








}

mysqli_close($con);


?>

