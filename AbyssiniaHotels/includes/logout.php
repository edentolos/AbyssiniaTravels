<?php session_start(); ?>
<?php 

$_SESSION['user'] = null;
$_SESSION['s_firstname'] = null;
$_SESSION['s_lastname'] = null;
$_SESSION['s_role'] = null;

header("Location: ../index.php");

?>