<!DOCTYPE html>
<html>
<head>

	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link href="style_home.css" rel="stylesheet" type="text/css">
	<link rel="shortcut icon" href="pict/logo_fix.png">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="jquery_reg.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
	<script type="text/javascript" src="jquer_log.js"></script>
	<title>EZ Karaoke, Find Your Favorite Places for Karaoke</title>

</head>
<body style="background-color:#e1e1e1;">
	<div class="container" style="background:#222222a6;height:9px;"></div>

	<div class="container" style="padding-left: 0px; padding-right: 0px;">
		<div class="col-md-12 col-md-offset-0"  style="padding-left: 0px; padding-right: 0px;">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators 
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>		
			</ol> -->
 
			<!-- deklarasi carousel -->
			<center>
			<div class="carousel-inner" role="listbox" style="padding-right: 0px; padding-left: 0px;">
				<div class="item active">
					<img src="pict/banner1.png" alt="aboutus.php" style="width:1393.92px;height:400.48px;">
				</div>			
			</div>
			<center>
 
		</div>
	</div>
</div>


	<nav class="navbar container navbar-expand-sm navbar-inverse" style="margin-bottom:auto;">
			<div class="navbar-header">
				<a class="navbar-brand text-white" href="home.php" id="logo">EZ Karaoke</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="home.php">Home</a></li>
				<li><a class ="text-white" href="aboutus.php">About Us</a></li>
				<li><a class ="text-white" href="booking.php">Online Booking</a></li>
				<li><a class ="text-white" href="ezchart.php">EZChart</a></li>
				<li><a class ="text-white" href="panduan.php">Panduan</a></li>

			</ul>
			<div class ="unlog">
				<ul class="nav navbar-nav navbar-right">
					<li>
						<a class ="text-white" href="#daftar" data-toggle="modal"><span class="glyphicon glyphicon-user"></span> Daftar</a>
					</li>
					<li>
						<a class ="text-white" href="#login" data-toggle="modal"><span class="glyphicon glyphicon-log-in"></span> Login</a>
					</li>
				</ul>
			</div>

			<div class="logdata">
				<ul class="nav navbar-nav navbar-right">

				</ul>
			</div>
	</nav>
	
	
	<div class="container" style="background:#ffffff;height:9px;"></div>

	<div class="container" style="background-color:grey;">
		<br>
		<div class="jumbotron" style="padding:auto; padding-right:0px;padding-left: 0px; padding-top:0.1px;">
			<center>
				<br><br>
				<h2 class="alert alert-danger text-center">
					HARUS LOGIN DAHULU !
				</h2>

			</center>
		
		</div>
	</div>
	
	<div class="container" style="background:#ffffff;height:9px;"></div>

	<div class="container" style="padding-left: 0px; padding-right: 0px;">
		<a href=#>
				<div class="item">
			<img src="pict/banner-kecil.png" style="width:1170.92px;height:150.48px;">
		</a>
	</div>
	<br>

	<div class="d-block d-sm-block d-md-none">
		<div class="mt-4"></div>
	</div>

	<footer class="container py-2">
    	<div class="container small text-center text-black-50" style="">
			<a href="home.php">Home</a> | 
			<a href="aboutus.php">About Us</a> | 
			<a href="booking.php">Online Booking</a> |  
			<a href="ezchart.php">EZChart</a> | 
			<a href="panduan.php">Panduan</a>
     		 <br>Copyright © EZKaraoke. All rights reserved
    	</div>
  	</footer>

  	<br>
  	<div class="text-center p-0 text-black-50">
		<span class="small text-capitalize">Temukan kami di<br></span>
	<h3>
		<a href="https://www.facebook.com/EZ-Karaoke-106412377519617/" target="_blank"> <img src="pict/facebook-icon.png" style="width:25px ;height:25px;"></i></a> 
		<a href="https://www.instagram.com/ezkaraokeofficial/?hl=id" target="_blank"><img src="pict/instagram-icon.png" style="width:25px ;height:25px;"></i></a>
	</h3>
  </div>
 	
 	<div class="modal fade" id="login" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" id="modal-close">&times;</button>
					<h2 class="modal-title">Login</h2>
				</div>

				<div class="modal-body">
					<form class="login" method="post">
						<input type ="text" name="logusername" class="form-control" placeholder="Username" id="userbox">
						<br>
						<input type ="password" name="logpassword" class="form-control" placeholder="Password" id="passbox">
						<br><br>
						<button type="submit" class="btn btn-success" id="btn-login" name="btn-login">Login</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="daftar" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h2 class="modal-title">Daftar Baru</h2>
				</div>

				<div class="modal-body">
					<form class="daftar" action = "simpan.php" method="post">
						<input type ="text" name="regnama" class="form-control" placeholder="Nama"><br>
						<input type ="text" name="regemail" class="form-control" placeholder="Email"><br>
						<input type ="text" name="reggusername" class="form-control" placeholder="Username"><br>
						<input type ="password" name="regpassword" class="form-control" placeholder="Password"><br>
						<input type ="text" name="regnotlp" class="form-control" placeholder="No Telepon"><br>
						<br>
						<button type="submit" class="btn btn-success" id="#btn-daftar">Daftar</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>