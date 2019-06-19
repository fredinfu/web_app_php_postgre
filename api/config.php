<?php
	$host 		= 'localhost';
	$dbname 	= 'test';
	$user 		= 'postgres';
	$password 	= '1234';
	

	$con_postgres = pg_connect("host=$host dbname=$dbname user=$user password='$password'");
	