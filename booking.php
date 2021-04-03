<?php
session_start();

	if(!isset($_SESSION['logged_in'])){

 		header("Location: notlogin.php");
 	
	}else if(isset($_SESSION['logged_in'])){
		require_once ('koneksi.php');

		$session = $_SESSION['logged_in'];

		$query  = "SELECT * FROM `user` WHERE id_user = '$session'";
		$result = mysqli_query($conn,$query)or die(mysqli_error());
		$row     = mysqli_fetch_array($result);
	}
?>

<!DOCTYPE html>
<html>
<head>

	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link href="style_home.css" rel="stylesheet" type="text/css">
	<link rel="shortcut icon" href="pict/logo_fix.png">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="ajax.js"></script>
	
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
							<img src="pict/banner2.png" alt="aboutus.php" style="width:1393.92px;height:400.48px;">
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
				<li class="active"><a class ="text-white" href="booking.php">Online Booking</a></li>
				<li><a class ="text-white" href="ezchart.php">EZChart</a></li>
				<li><a class ="text-white" href="panduan.php">Panduan</a></li>

			</ul>
				
			<ul class="nav navbar-nav navbar-right">
				<div class ="unlog" style="display:none;">
					<li>
						<a class ="text-white" href="#daftar" data-toggle="modal"><span class="glyphicon glyphicon-user"></span> Daftar</a>
					</li>
					<li>
						<a class ="text-white" href="#login" data-toggle="modal" id="modal-login"><span class="glyphicon glyphicon-log-in"></span> Login</a>
					</li>
				</div>
			</ul>
		<ul class="nav navbar-nav navbar-right">
			<div clas="logdata">
				<li>
					<p style="color:white"><span class="glyphicon glyphicon-user"> </span> Welcome, <?php echo $row['nama'] ?> <a href="logout.php">  <button class="btn btn-danger" id="btn-logout" name="btn-logout"> Logout</button><a></p>

				</li>
			</div>
		</ul>

	</nav>
	
	
	<div class="container" style="background:#ffffff;height:9px;"></div>

	<div class="container" style="background-color:grey;">
		<br>
		<div class="jumbotron" style="padding:auto; padding-right:10px;padding-left: 10px; padding-top:10px; padding-bottom: 10px;">
			

			<div style="padding:20px; border-radius:5px;">
				<div class="card" style="background-color: white;">
					<div class="card-body" style="margin:1px;">
						<div class= 'container mt-2 p-2'>
							<center>
								<h2 class="alert alert-warning text-center">
								Booking Online
								</h2>

							</center>
							<strong>FORM BOOKING</strong><br><br>

							<form class="booking" method='post' action="booking_data.php">
								<div class="form-group">
									<label class="label-control">*Tempat Karaoke</label>
									<select class ="form-control text-center">
										<option disabled="disabled" selected="selected">---- Pilihan Tempat Karaoke ----</option>
										<option value="1">Nav Karaoke</option>
										<option value="2">Diva Karaoke</option>
										<option value="3">Zero 4 Karaoke</option>
										<option value="4">Inul Vizta</option>
									</select>
								</div>

								<div class="form-group">
									<label class="label-control">*Tipe Ruang</label>
									<select class ="form-control text-center">
										<option disabled="disabled" selected="selected">---- Tipe Ruang ----</option>
										<option value="5">Small (maks. 3orang)</option>
										<option value="6">Medium (maks. 5orang)</option>
										<option value="7">Large (maks. 8orang)</option>
									</select>
								</div>

								<div class="form-group">
									<label class="label-control">*Tanggal</label>
									
									<div class="input-group container-sm" style="width: cover;">
										<span class="input-group-addon">
										<i class="glyphicon glyphicon-calendar"></i></span>
		 								<input class="form-control" type="date" placeholder="Tanggal Pemesanan">
		 							</div>
								</div>

								<div class="form-group">
									<label class="label-control">*Waktu</label>
									
									<div class="input-group container-sm" style="width:cover;">
										<span class="input-group-addon">
										<i class="glyphicon glyphicon-dashboard"></i></span>
		 								<input class="form-control" type="time" placeholder="Tanggal Pemesanan">
		 							</div>
								</div>

								<div class="form-group">
									<label class="label-control">*Durasi</label>
									<select class ="form-control text-center">
										<option disabled="disabled" selected="selected">---- Lama Durasi ----</option>
										<option value="8">1 jam</option>
										<option value="9">2 jam</option>
										<option value="10">3 jam</option>
										<option value="11">4 jam</option>
										<option value="12">5 jam</option>
									</select>
								</div>
								<br>
								<div class="container-sm">
									<button class="form-control btn btn-success" type="submit">Submit</button>
								</div>
							</form>
							<br><br><br>
							<div style="background-color:#eeeeee; padding: 10px;">
									<ol>
										<li>Pemesanan online yang sudah terbayar tidak dapat di batalkan maupun dirubah jam pemesanannya.</li>
										<li>Untuk Selengkapnya harap membaca <a href="syarat_ketentuan.php" target="_blank"><strong>syarat dan ketentuan</strong></a> yang berlaku.</li>
									</ol>
							</div>
							<br><br>
							<div>
								<center>
									Metode Pemabayaran : <br><br><br>
									<img src="pict/visamastercard.png">
									<img src="pict/bca.png">
								</center>
							</div>
							<br><br><br>

						</div>
					</div>
				</div>
			</div>
		
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
					<form class="login" action = "get_data.php" method="post">
						<input type ="text" name="logusername" class="form-control" placeholder="Username" id="userbox">
						<br>
						<input type ="password" name="logpassword" class="form-control" placeholder="Password" id="passbox">
						<br><br>
						<button type="submit" class="btn btn-success" id="btn-login">Login</button>
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