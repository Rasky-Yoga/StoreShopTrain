<?php
	require_once 'koneksi.php';

	if(isset($_POST['btn-login'])){

		$_username = $_POST['logusername'];
		$_password = $_POST['logpassword'];

		$sql="SELECT * FROM `user` WHERE username='$_username' AND password_user='$_password'";
		$result=mysqli_query($conn,$sql)or die(mysqli_error());
		$num_row=mysqli_num_rows($result);
		$row=mysqli_fetch_assoc($result);
				$row=mysqli_fetch_assoc($result);
				$row+mysql_affected_rows ($result);
		if($num_row>=1){
				echo "ok";
				$_SESSION['logged_in'] = $row['id_user'];

		}else{
			echo  "no";
		}
}
?>