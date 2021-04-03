$(document).ready(function(){
	$('.hasil').hide();

	$('#search').keyup(function(){
		var name= $(this).val();

		if(name == ''){
			$('.hasil').hide();
			$('.result_data').html("");
		}else{
			$.ajax({
				type:"post",
				url:"search_ajax.php",
				data:{
					search:name
				},
				success:function(data){
					$('.hasil').show();
					$('.result_data').html(data).show();
				}
			})
		}
	})


})