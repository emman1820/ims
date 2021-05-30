<?php include('conn.php'); ?>
<?php include('header.php'); ?>
<?php
	session_start();
	
	if (isset($_SESSION['id'])){
		$query=mysqli_query($conn,"select * from user where userid='".$_SESSION['id']."'");
		$row=mysqli_fetch_array($query);
		
		if ($row['access']==1){
			header('location:admin/');
		}
		else{
			header('location:user/');
		}
	}
?>
<!DOCTYPE html>
<head>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<title>login</title>
<link href="main/css/bootstrap-responsive.css" rel="stylesheet">
<link rel="icon shortcut" href="./p/oscormart.png">
<style>

* {
	margin: 0;
	padding: 0; 
}

 body{
	background-color: #eee;
}
/*.box{			
			
			color: #fdb813;
			font-family: helvetica;
			border-style:solid;
            border-color: #fdb813;
            border-radius: 20px;
            position: absolute;
            width: 400px;
            height: 450px;
			padding: 20px;
			opacity:0.9	;
			left:770px;
            top:190px;
			box-shadow: 5px 5px #fdb813;
			background-color: #1e3883;
			padding-bottom: 200px;
            
}*/

	.login__con{
		height: 100vh;
		width: 100%;
		display: flex;
		align-items: center;
		justify-content: center; 
	}

	.box{
		width: 360px;
		background-color: #1e3883;
		display: flex;
		justify-content: center;
		flex-direction: column;
		align-items: center;
		border-radius: 15px;
		border: 5px solid #fdb813;
		padding: 30px 30px 50px 30px; 
	}

	.forms, form, .login__btn{
		width: 100%;
	}

	h2, p {
		color: white;
	}

	h2 {
		margin: 0;
		padding: 1rem  0 1.5rem 0;
		color: #fdb813;
		font-weight: 600;
	}

	.user, .pass {
		padding-bottom: 1.5rem
	}

	button.btn-primary{
		margin-top: 1rem;
		font-size: 20px;
		width: 100%;
		background-color: #337ab7;
		height: 50px;
	}

	button.btn-primary:hover{
		transition: 300ms all;
		background-color: #fdb813;
	}

	input[type="text"], input[type="password"]{
		height: 40px;
	}

	.logos{
		width: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	.logos > img {
		width: 80%;
	}
</style>

</head>
<body>

<div class="login__con">
	<div class="box">
		<div class="logos">
			<img src="p/oscormart1.jpg"/>
		</div>
		<div class="text__login">
			<h2>Login</h2>
		</div>
		<div class="forms">
			<form method="POST" action="login.php">
				<div class="user">
					<p>Please Enter Username:</p>
					<input type="text" name="username" class="form-control"  placeholder="Username" required>
				</div>
				<div class="pass">
					<p>Please Enter Password:</p>
					<input type="password" name="password" class="form-control"  placeholder="Password" required>
				</div>
				<div class="login__btn">
					<button type="submit" class="btn btn-primary"></span> Login</button>
				</div>
			</form>
		</div>
	</div>

</div>
		

<!-- <div class="box">
	<div id="login_form" style="top:unset">
	
	<div class="logo">
		<div class="logo1">
		<img src="p/oscormart1.jpg"/>
		</div>
		<div class="logo2"><h2><center><span class="glyphicon glyphicon-lock"></span> Please Login</center></h2></div>

	 </div>
		
		<hr>
		<form method="POST" action="login.php"><i class='fas fa-user-circle' style='font-size:20px'></i>
		Please Enter Username <input type="text" name="username" class="form-control"  placeholder="Username" required>
		<div style="height: 20px;"></div><i class='far fa-user-circle' style='font-size:20px'></i>		
		Please Enter Password <input type="password" name="password" class="form-control" placeholder="Password" required> 
		<div style="height: 20px;"></div>
		<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-log-in"></span> Login</button>
		</form>
		<div style="height: 15px;"></div>
		<div style="color: red; font-size: 15px;">
			<center>
			<?php
				
				if(isset($_SESSION['msg'])){
					echo $_SESSION['msg'];
					unset($_SESSION['msg']);
				}
			?>
			</center>
		</div>
	</div>
</div> -->
<?php include('script.php'); ?>
</body>
</html>