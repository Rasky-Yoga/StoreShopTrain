<?php
include 'koneksi.php';

	if(isset($_POST['upload'])){

		$target = "pict/penyanyi/".basename($_FILES['image']['name']);

		$image = $_FILES['image']['name'];
		$nama =$_POST['nama'];

		$sql = "INSERT INTO gambar (nama, foto) VALUES ('$nama', '$image')";

		mysqli_query($conn, $sql);

		if(move_uploaded_file($_FILES['image']['tmp_name'], $target)){
			echo 'Success';
		}else{
			echo 'Failed';
		}
	}
?>