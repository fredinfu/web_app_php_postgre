	<?php

	require "config.php";


	$action = isset($_GET["action"]) ? $_GET["action"] : (isset($_POST["action"]) ? $_POST["action"] : "");

	switch ($action) {
		case 'a1':
			echo json_encode(array('success'=>false, 'message'=>'SERVER_ERROR'));
			break;
		
		case 'get_motivos':
			$results = array();
			$result = pg_query($con_postgres, "SELECT * FROM motivos_es_gt ");

			if (!$result) {
			  echo json_encode(array('success'=>false, 'message'=>'SERVER_ERROR'));
			  exit;
			}

			while ($row = pg_fetch_array($result, null, PGSQL_ASSOC) ) {
				$results[] = $row;
			}

			$result = json_encode(array('success'=>true, 'results'=>$results));
			echo $result;
			
			break;

		case 'a3':
			echo "A3.\n";
			break;


		default:
			echo json_encode(array('success'=>false, 'message'=>'BAD_REQUEST'));
			break;
	}

