<?php

	$dbserver ="localhost";
	$dbusername ="root";
	$dbpass="";
	$dbname="php_db_karaoke";

	$conn = mysqli_connect($dbserver, $dbusername, $dbpass, $dbname);

	if(!$conn){
		die("Koneksi Gagal ... : ".mysqli_connect_error());
	}

?>