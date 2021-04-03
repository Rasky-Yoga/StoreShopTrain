$(document).ready(function(){
	$('.daftar').on('submit', function(e){
		e.preventDefault();
		
		
		$.ajax({
			type:$(this).attr('method'),
		//url pengiriman
			url:$(this).attr('action'),
		//data form yang akan dikirimkan
			data:$(this).serialize(),
			success: function(data){
				alert('Registrasi Berhasil, Silahkan Login');
				resetForm();
				$('#login').click();
				
			}

		})

	})
})

function resetForm(){
	$('[type=text]').val('');
	$('[type=password]').val('');
	$('[name=regnama]').focus();
	//$('form').attr('action', 'register.php');
}


