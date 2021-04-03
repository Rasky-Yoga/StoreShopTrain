$(document).ready(function (){
	loadData();
	
})

function loadData(){
	//mengambil data dari file get_data.php
	$.get('loaddatauser.php', function(data){
		//menampilkan data pada class
		$('.result').html(data);

	})
}
