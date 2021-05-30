<DOCTYPE html>
<body>
    <head>
        <style>
            body{
                font-family: Comic Sans MS;
            }
            a{
                color:#fdb813;
                font-size:19px;
            }
        </style>   
</head>   
<!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom:0px;background-color: #1e3883; " >
        <img src="../p/oscormart.png" style="height:50px; left:20px; width:50px; position:absolute;">
            <div class="navbar-header" >      
				<a href="index.php" class="navbar-brand" style="left:60px; position:absolute; color:#fdb813; ">E.C Drugmart</a>   
            </div>
           
            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
						<span class="glyphicon glyphicon-lock"></span> <?php echo $user; ?> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu">
						<li><a href="#account" data-toggle="modal"><span class="glyphicon glyphicon-lock"></span>  My Account</a></li>
						<li class="divider"></li>
                        <li><a href="#logout" data-toggle="modal"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
                    </ul>   
                </li>
            </ul>

            <div class="navbar-default sidebar" role="navigation" style="margin-top:58px;background-color:  #1e3883;height:700px;">
                <div class="sidebar-nav navbar-collapse" >
                    <ul class="nav" id="side-menu">
                    <li>
                    <a href="#"><span class="fa fa-tachometer"></span> Dashboard </a>
                    </li>
                        <li>
                            <a href="index.php"><i class="fa fa-home fa-fw"></i> Home</a>
                        </li>

                                        <li>
                                            <a href="customer.php"> <i class="fa fa-users"></i> Employee</a>
                                        </li>
                                        <li>
                                            <a href="supplier.php"> <i class="fa fa-user"></i> Admin</a>
                                        </li>
                                </li>
                                <li>
                                    <a href="product.php"> <i class="fa fa-product-hunt"></i> Products</a>
                                </li>
                                <li>
                                    <a href="sales.php"><i class="fa fa-money fa-fw"></i> Sales Report</a>
                                </li>
                                <li>
                                    <a href="inventory.php"><i class="fa fa-barcode fa-fw"></i> Inventory Report</a>
                                </li>
                                <li>
                                    <a href="../admin2/index.php"> <i class="fa fa-truck"></i> Supplier</a>
                                </li>
                                <li>
                                <a  href="../user/index.php" onclick = "if (! confirm('Are you sure Access this page?')) { return false; }"> <i class="fa fa-credit-card-alt"></i> Cashiering</a>
                                </li>
                        </li>
						<li><a href="#logout" data-toggle="modal"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        </body>
        </html>