<?php 
	session_start();
	require_once __DIR__. '/../../libraries/Database.php';
	require_once __DIR__. '/../../libraries/Function.php';

	$db = new Database;

	if(!isset($_SESSION['hocsinh_id']))
	{
		header("location:/teakwondo/hocsinh/login.php/");
	}

	define ("ROOT", $_SERVER['DOCUMENT_ROOT']."/teakwondo/public/uploads");

 ?>