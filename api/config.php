<?php
	$host 		= 'localhost';
	$dbname 	= 'test';
	$user 		= 'root';
	$password 	= '';
	

	$con_postgres = pg_connect("host=$host dbname=$dbname user=$user password='$password'");
	