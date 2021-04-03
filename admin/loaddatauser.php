<?php

	include 'koneksi.php';

	$sql="SELECT * FROM `user`";
	$result=mysqli_query($conn,$sql);

	if(mysqli_num_rows($result)>0){
		echo '<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th align=center>NAMA</th>
						<th align=center>EMAIL</th>
						<th align=center>USERNAME</th>
						<th align=center>PASSWORD</th>
						<th align=center>NO TELEPON</th>
						
					</tr>
				</thead>
				<tbody>'; 	
		//menampilkan record data
		while($row=mysqli_fetch_assoc($result)){
			echo '<tr>
					<td align=center>'.$row['nama'].'</td>
					<td align=center>'.$row['email'].'</td>
					<td align=center>'.$row['username'].'</td>
					<td align=center>'.$row['password_user'].'</td>
					<td align=center>'.$row['no_tlp'].'</td>
					
				  </tr>';
			
		}
		echo '</tbody>
		</tabel>';
	}

?>