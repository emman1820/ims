<?php
if(isset($_POST['admin'])){
  echo "<script>if(confirm('Welcome to Admin Login, Please Click OK')){document.location.href='index.php'};</script>";
}
if(isset($_POST['employee'])){
    echo "<script>if(confirm('Welcome to Employee Login, Please Click OK')){document.location.href='index.php'};</script>";
  }
?>    
  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="mycss.css">
    <style type="text/css">
    body{ 
            font-family: Comic Sans MS;
        }
    
        .pic1{
            
            position:absolute;
            width:500px;
            height:250;
            top:160px;
            left:640px;
        }
        .pic2{
            
            position:absolute;
            width:500px;
            height:250;
            top:160px;
            left:790px;
        }
        body{
    background-image:url("p/l.png");
    background-repeat: no-repeat;
    background-attachment: fixed;
}

.p1{
    border-style:solid;
    border-color: #000;
    border-radius: 20px;
    position:absolute;
    padding:10px;
    width:70px;
    height:50px;
    left:65px;
    top:360px;
    text-align:center;
}
.p2{
    border-style:solid;
    border-color: #000;
    border-radius: 20px;
    position:absolute;
    padding:10px;
    width:90px;
    height:50px;
    left:210px;
    top:360px;
    text-align:center;
}
.p1:hover{
    background-color: #FFC0CB;
}
.p2:hover{
    background-color: #FFC0CB;
}
.l1{
            border-style:solid;
            border-color: #000;
            border-radius: 20px;
            position: absolute;
            width: 350px;
            height: 470px;
			padding: 20px;
			opacity:0.9	;
			left:790px;
            top:150px;
			padding: 10px;
			box-shadow: 5px 5px black;
            text-align:center;
}
.logo{
    
    width:300px;
    height:300px;
}

    </style>
</head>  
<body>
<form method="post">     
<img src="p/2.png" class="pic1">
<img src="p/1.png" class="pic2">
    <div class="l1">
    <h2>Welcome to Pink Tea Panda</h2>
    <h3>Choose your type</h3>
    <input type ="submit" class="p1" value="Admin" name="admin">
    <input type ="submit" class="p2" value="Employee" name="employee">

    <div>
</form>    
</body>
</html>