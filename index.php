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
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>	
			</ol>
 
			<!-- deklarasi carousel -->
			<center>
			<div class="carousel-inner" role="listbox" style="padding-right: 0px; padding-left: 0px;">
				<div class="item active">
					<a href ="aboutus.php"><img src="pict/banner1.png" alt="home.php" style="width:1393.92px;height:400.48px;"></a>
				</div>
				<div class="item">
					<a href ="home.php"><img src="pict/banner2.png" alt="home.php" style="width:1393.92px;height:400.48px;"></a>
				</div>
				<div class="item">
					<a href = "panduan.php"><img src="pict/banner4.png" alt="ezchart.php" style="width:1393.92px;height:400.48px;"></a>
				</div>
				<div class="item">
					<a href = "ezchart.php"><img src="pict/banner3.png" alt="ezchart.php" style="width:1393.92px;height:400.48px;"></a>
				</div>
				</div>				
			</div>
			<center>
 
			<!-- membuat panah next dan previous -->
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev" style="width:10%;">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" style="width:10%;">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
</div>


	<nav class="navbar container navbar-expand-sm navbar-inverse" style="margin-bottom:auto;">
			<div class="navbar-header">
				<a class="navbar-brand text-white" href="home.php" id="logo">EZ Karaoke</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="home.php">Home</a></li>
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
				<button type="submit" class="btn btn-danger" id="btn-logout" name="btn-logout">Login</button>

			</div>
	</nav>
	
	
	<div class="container" style="background:#ffffff;height:9px;"></div>

	<div class="container" style="background-color:grey;">
		<br>
		<div class="jumbotron" style="padding:auto; padding-right:0px;padding-left: 0px; padding-top:30px;">
			<center>
				<img  class="image" src = "pict/logo_fix.png" style="width: 200px; height: 200px;">
				<h2 class="text-primary">Selamat datang di EZ Karaoke!</h2>
				<p>Booking tempat Karaoke Segera,<br>di tempat karaoke favorite anda</p>
			</center>
			
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<img src="pict/nav_fix.png">
				<div class="caption">
					<h3>NAV Karaoke</h3>
					<p style="text-align: justify;">NAV Karaoke Keluarga adalah tempat hiburan karaoke yang tepat dan lengkap untuk seluruh anggota keluarga Anda, mulai dari anak-anak hingga orang dewasa, bahkan para manula. Dengan suasana interior yang sangat menyenangkan dan dilengkapi dengan fasilitas sound system yang canggih serta menggunakan teknologi layar sentuh. </p>
					<br>
					<p><a href="http://nav.co.id/" class="btn btn-primary" role="button">Lihat</a></p>
				</div>
			</div>
		</div>
 
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<img src="pict/diva_fix.jpg">
				<div class="caption">
					<h3>DIVA Karaoke</h3>
					<p style="text-align: justify;">Diva Karaoke adalah tempat hiburan keluarga yang bersih , sopan, berkelas dan modern. Sangat tepat untuk mengajak patner bisnis, anggota keluarga, dan kolega dalam suasana hiburan bernyanyi, dengan fasilitas yang dilengkapi oleh komputer pencari lagu berteknologi tinggi, audio dan sound system yang modern serta ruangan yang nyaman.</p>
					<br>
					<p><a href="http://www.divakaraoke.co.id/" class="btn btn-primary" role="button">Lihat</a></p>
				</div>
			</div>
		</div>

		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<img src="pict/zero_fix.jpg">
				<div class="caption">
					<h3>Zero 4 Karaoke</h3>
					<p style="text-align: justify;">Zero 4 Karaoke merupakan karaoke keluarga pertama di Indonesia yang memadukan pengalaman bernyanyi dan bersenang-senang bersama keluarga maupun teman. Zero-4 Family Karaoke mengusung konsep Utage, yakni bernyanyi, bersantap dan bersenang-senang bersama teman dan keluarga. Zero-4 Family Karaoke di Bali memiliki 45 ruangan yang terbagi dalam 6 kelas berbeda.
					</p>

					<br>
					<p><a href="https://family-karaoke-zero4.business.site/" class="btn btn-primary" role="button">Lihat</a></p>
				</div>
			</div>
		</div>
 
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<img src="pict/inul_fix.jpg">
				<div class="caption">
					<h3>Inul Vizta</h3>
					<p style="text-align: justify;">VIZTA Karaoke memposisikan sebagai "karaoke keluarga yang trendy dan selebizz". Karaoke ini memang ditargetkan untuk memenuhi selera masyarakat kelas menengah metropolis trendy yang menginginkan bernyanyi, hang out, maupun berpesta pada tempat dan suasana yang colourful, cozy, fun, nyaman, dan sopan, namun dengan biaya yang terjangkau.</p>
					<br>
					<p><a href="https://www.vizta.co.id/" class="btn btn-primary" role="button">Lihat</a></p>
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
					<form class="daftar" action="register.php?" method="post">
						<input type ="text" name="regnama" class="form-control" placeholder="Nama"><br>
						<input type ="text" name="regemail" class="form-control" placeholder="Email"><br>
						<input type ="text" name="regusername" class="form-control" placeholder="Username"><br>
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