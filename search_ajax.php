<?php
	include 'koneksi.php';

	if(isset($_POST['search'])){

		$parameter = $_POST['search'];

		$query = "SELECT foto, nama_penyanyi, judul_lagu, tanggal_rilis, asal_lagu, status_tersedia FROM lagu JOIN penyanyi ON lagu.`id_penyanyi`=penyanyi.`id_penyanyi`JOIN gambar ON gambar.`id_gambar`=penyanyi.`id_gambar`  WHERE nama_penyanyi LIKE '%".$parameter."%' OR judul_lagu LIKE '%".$parameter."%'";

		$executeQuery = mysqli_query($conn, $query);

		if(mysqli_num_rows($executeQuery)>0){
			echo '<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th class = "text-center">Gambar</th>
							<th class = "text-center">Penyanyi</th>
							<th class = "text-center">Judul Lagu</th>
							<th class = "text-center">Tanggal Rilis</th>
							<th class = "text-center">Asal Lagu</th>
							<th class = "text-center">Sudah Tersedia di</th>
						</tr>
						</thead>
				<tbody>';
			while ($result = mysqli_fetch_assoc($executeQuery)){
				echo '<tr>
					<td class = "text-center">
						<img src= "pict/penyanyi/'.$result['foto'].'" style = "width:150px; height:150px;"  
					</td>
					<td class = "text-center">'.$result['nama_penyanyi'].'</td>
					<td class = "text-center">'.$result['judul_lagu'].'</td>
					<td class = "text-center">'.$result['tanggal_rilis'].'</td>
					<td class = "text-center">'.$result['asal_lagu'].'</td>
					<td class = "text-center">'.$result['status_tersedia'].'</td>
				  </tr>';
			}
			echo '</tbody>
			</tabel>';
		}else{
			echo '<h3>Data Pencarian Tidak Ditemukan !</h3>';
		}
	}
?>