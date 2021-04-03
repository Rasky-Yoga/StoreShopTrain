$(document).ready(function(){

		 $(".admin-login").validate({
          rules:
       {
      passadmin: {
       required: true,
       },
       usernameadmin: {
                required: true,
                },
        },
           messages:
        {
                passadmin:{
                          required: "please enter your password"
                         },
                usernameadmin: "please enter your username",
           },
        submitHandler: submitForm 
           });
	 function submitForm()
       {  
       var data = $(".admin-login").serialize();
        
       $.ajax({
        
       type :'POST',
       url  :'getdata_admin.php',
       data : data,
      
       success :  function(response)
          {      
       		if(response == "ok"){
					alert('Login Success!');
					window.location.href = "dashboard.php";
				}else{
					alert('Username atau Password Salah!');
					window.location.href = "index.php";
				}
         }
       });
        return false;
      }

})

