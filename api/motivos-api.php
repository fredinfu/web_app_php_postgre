	<?php

	require "config.php";


	$action = isset($_GET["action"]) ? $_GET["action"] : (isset($_POST["action"]) ? $_POST["action"] : "");

	switch ($action) {
		case 'a1':
			echo "An error occurred.\n";
			break;
		
		case 'a2':
			$results = array();
			$result = pg_query($con_postgres, "SELECT * FROM motivos_es_gt ");

			if (!$result) {
			  echo "An error occurred.\n";
			  exit;
			}

			while ($row = pg_fetch_array($result, null, PGSQL_ASSOC) ) {
				$results[] = $row;
			}

			echo json_encode($results);
			
			break;

		case 'a3':
			echo "A3.\n";
			break;


		default:
			# code...
			break;
	}

