<?php
	session_start();
	require_once 'koneksi.php';

	if(isset($_POST['btn-login'])){

		$_username = $_POST['admin'];
		$_password = $_POST['admin123'];

		$sql="SELECT * FROM `admin` WHERE `username`='$_username' AND `password`='$_password'";
		$result=mysqli_query($conn,$sql)or die(mysqli_error());
		$num_row=mysqli_num_rows($result);
		$row=mysqli_fetch_assoc($result);

		if($num_row>=1){
				echo "ok";
				$_SESSION['logged_in'] = $row['id_admin'];

		}else{
			echo  "no";
		}
}
?>