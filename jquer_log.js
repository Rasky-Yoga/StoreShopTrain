$(document).ready(function(){
		$('.logdata').hide();

		 $(".login").validate({
          rules:
       {
       logpassword: {
       required: true,
       },
       logusername: {
                required: true,
                },
        },
           messages:
        {
                logpassword:{
                          required: "please enter your password"
                         },
                logusername: "please enter your username",
           },
        submitHandler: submitForm 
           });
	 function submitForm(){  
       var data = $(".login").serialize();
        
       $.ajax({
        
       type :'POST',
       url  :'get_data.php',
       data : data,
      
       success :  function(response){      
       		if(response == "ok"){
					   $('.unlog').hide();
					   alert('Login Success!');
					   $('#modal-close').click();
					   window.location.href = "home.php";
				  }else{
					   alert('Username atau Password Salah!');
					   window.location.href = "index.php";
				  }
         }
       });

        return false;
      }


	
})

