<DOCTYPE html>
<body>
    <head>
        <style>
            body{
                font-family:helvetica;
            }
            a{
                color:#fdb813;
            }
			
        </style>   
</head>   
<!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 20px; background-color:#1e3883;">
            <div class="navbar-header">
			<img src="../p/oscormart.png" style="height:50px; left:20px; width:50px;  position:fixed;">
			<a href="../admin/index.php" class="navbar-brand" style=" margin-left:70px; color:#fdb813;">E.C. Drugmart</a>
            </div>
			
			<ul class=" nav navbar-nav">
				<li>
                   <a href="index.php"><i class="fa fa-product-hunt fa-fw"></i> My Products</a>
                </li>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						<span class="fa fa-copy fa-fw"></span> Reports <i class="fa fa-caret-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li><a href="sales.php"><span class="fa fa-money fa-fw"></span>  Sales Report</a></li>
						<li class="divider"></li>
						<li><a href="inventory.php"><span class="fa fa-barcode"></span>  Inventory Report</a></li>
                    </ul> 
				</li>
			</ul>
			
            <ul class="nav navbar-top-links navbar-right">
                
                        <li><a href="../admin/index.php" data-toggle="modal"><i class="fa fa-sign-out fa-fw"></i> Back</a></li>
                    </ul>   
                </li>
            </ul>
        </nav>