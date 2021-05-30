<?php
	include('session.php');
	$pid=$_GET['id'];
	
	mysqli_query($conn,"delete from category where categoryid='$pid'");
	
	header('location:category.php');

?>