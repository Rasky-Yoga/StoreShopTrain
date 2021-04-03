<?php

	include 'koneksi.php';

	if(isset($_POST['regusername'])){

		$_nama_user = $_POST['regnama'];
		$_email_user = $_POST['regemail'];
		$_username_user = $_POST['regusername'];
		$_password_user = $_POST['regpassword'];
		$_notlp_user = $_POST['regnotlp'];

		$valid ="SELECT username FROM user WHERE username='".$_username_user."'";
		$hasil = mysqli_query($conn, $valid);
	

		if(!$_username_user & !$_password_user){
			echo	"<script type='text/javascript'>
        					alert('Username atau Password tidak Boleh Kosong');
        			</script>";
		}else if(!$_username_user){
			echo	"<script type='text/javascript'>
        					alert('Username tidak Boleh Kosong');
        			</script>";
		}else if(!$_password_user){
			echo	"<script type='text/javascript'>
        					alert('Password tidak Boleh Kosong');
        			</script>";

		}else if(mysqli_num_rows($hasil)>0){
			echo	"<script type='text/javascript'>
        					alert('Username telah digunakan');
        			</script>";
		}else{
			$query = "INSERT INTO `user` (nama, email, username, password_user, no_tlp) VALUES ('".$_nama_user."', '".$_email_user."', '".$_username_user."', '".$_password_user."', '".$_notlp_user."')";
			$result = mysqli_query($conn,$query);

			echo	"5";
		}


	}else{
		echo	"<script type='text/javascript'>
        					alert('Gagal');
        		</script>";
	}
?>