<?php include('session.php'); ?>
<?php include('header.php'); ?>
<!DOCTYPE html>
<head>
<title></title>
<style>
h1{
	position:absolute;
	font-size:80px;
	text-shadow: 4px 8px #fff;
	left:500px;
}

img {
	width: 75%;
}

div.container-fluid{
	display: flex;
	justify-content: center;
	align-items: center; 
	height: 100vh;
}

</style>
</head>
<body>
<div id="wrapper">
<?php include('navbar.php'); ?>
<div style="height:15px;"></div>
	<div id="page-wrapper">
		<div class="container-fluid" >
			<h1> </h1>
			<img src="../p/oscormartbg.png">
		</div> 
	</div>
</div>
<?php include('script.php'); ?>
<?php include('modal.php'); ?>
</body>
</html>