<?php
	session_start();
	unset($_SESSION['logged_in']);
 
	if(session_destroy()){
 	 header("Location: index.php");
}

?>