<?php 

include('db/dbcon.php');

$get_id=$_GET['conductorrid'];

mysql_query("delete from conductor where conductorid = '$get_id' ")or die(mysql_error());
echo "<script>alert('Successfully Delete'); window.location='conductor.php'</script>";
?>