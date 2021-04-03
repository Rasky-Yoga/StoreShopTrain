<?php
session_start();

if(!isset($_SESSION['logged_in']))
{
 header("Location: index.php");
}else if(isset($_SESSION['logged_in'])){
	require_once ('koneksi.php');

$session = $_SESSION['logged_in'];

$query  = "SELECT * FROM `admin` WHERE id_admin = '$session'";
$result = mysqli_query($conn,$query)or die(mysqli_error());
$row     = mysqli_fetch_array($result);
}



?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
	<script src="https://kit.fontawesome.com/4937a42348.js" crossorigin="anonymous"></script>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"rel="stylesheet"  integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> 
	<link href="admin1.css" rel="stylesheet" type="text/css">
	<link href="fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	
	<script type="text/javascript" src="recorduser.js"></script>
</head>
  <body>
	   <nav class="navbar navbar-expand-lg navbar-light bg-warning fixed-top">
		  <a class="navbar-brand" href="#">Selamat Datang ADMIN EZ Karaoke</a>
			<form class="form-inline my-2 my-lg-0 ml-auto">
			  <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
			  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
			<div class="icon ml-4">
			<h5>
			<a href="logoutadmin.php"><i class="fas fa-sign-out-alt mr-3" data-toggle="tooltip" title="sign out"></i></a>
			</h5>
			</div>
		</nav>
		
		<div class="row no-gutters mt-5">
			<div class="col-md-2 bg-dark mt-2 pr-3 pt-4">
				<ul class="nav flex-column ml-3 mb-5">
				  <li class="nav-item">
					<a class="nav-link active text-white" href="dashboard.php"><i class="fas fa-user-circle mr-2"></i>Dashboard</a><hr class="bg-secondary">
				  </li>
				  <li class="nav-item">
					<a class="nav-link active text-white" href="record_pemesanan.php"><i class="fas fa-chart-line mr-2"></i>Record Pemesanan</a><hr class="bg-secondary">
				  </li>
				  <li class="nav-item">
					<a class="nav-link text-white" href="input_lagu.php"><i class="fas fa-music mr-2"></i>Input lagu</a><hr class="bg-secondary">
				  </li>
				  <li class="nav-item">
					<a class="nav-link text-white" href="#"><i class="fas fa-database mr-2"></i>Record user</a><hr class="bg-secondary">
				  </li>
				</ul>
			</div>
			<div class="col-md-10 p-5 pt-2">
				<h3 class="text-warning"><i class="fas fa-database mr-2 text-warning"></i>RECORD USER</h3><hr>
				
				<div class="row text-white">

						<div class="container" style="background-color:grey;">
				<br>
							<div class="jumbotron" style="padding:auto; padding-right:0px;padding-left: 0px; padding-top:30px;">

								<center>
									<form method ='get'>
										<div class="result">
										</div>
									</form>
								</center>
							</div>
						</div>
					</div>
				</div>
			</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   
  </body>
</html>