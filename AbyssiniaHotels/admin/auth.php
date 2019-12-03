
<?php
$dbhandle = mysqli_connect("localhost","root","", "travel") or die ('unable to connect host');
$selected = mysqli_select_db($dbhandle, 'travel')or die ('unable to connect databse');
?>