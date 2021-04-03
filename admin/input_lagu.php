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
					<a class="nav-link text-white" href="#"><i class="fas fa-music mr-2"></i>Input lagu</a><hr class="bg-secondary">
				  </li>
				  <li class="nav-item">
					<a class="nav-link text-white" href="record_user.php"><i class="fas fa-database mr-2"></i>Record user</a><hr class="bg-secondary">
				  </li>
				</ul>
			</div>
			<div class="col-md-10 p-5 pt-2">
				<h3 class="text-warning"><i class="fas fa-music mr-2 text-warning"></i>INPUT LAGU</h3><hr>
				
				<div class="row text-white">
					
					<div class="card bg-danger ml-5" style="width: 18rem;">
					  <img src="logoL.jpg" class="card-img-top">
					  <div class="card-body">
						<div class="card-body-icon">
							<i class="fas fa-music mr-2"></i>
						</div>
						<h5 class="card-title">INPUT LAGU</h5>
						<div class="display-4">coba tebak berapa banyaknya?</div>
						<a href=""><p class="card-text text-white">Lihat Detail <i class="fas fa-angle-double-right ml-2"></i></p></a>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					  </div>
					</div>
				</div>
			</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script type="text/javascript" src="admin.js"></script>
  </body>
</html>