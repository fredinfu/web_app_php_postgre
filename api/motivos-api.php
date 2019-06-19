	<?php

	require "config.php";


	$action = isset($_GET["action"]) ? $_GET["action"] : (isset($_POST["action"]) ? $_POST["action"] : "");

	switch ($action) {
		
		case 'add_motivo':

			$des_motivo = isset($_GET["des_motivo"]) 	? $_GET["des_motivo"] 	: (isset($_POST["des_motivo"]) 	? $_POST["des_motivo"] : "");
			$estado 	= isset($_GET["estado"]) 		? $_GET["estado"] 		: (isset($_POST["estado"]) 		? $_POST["estado"] : "");
			$tipo 		= isset($_GET["tipo"]) 			? $_GET["tipo"] 		: (isset($_POST["tipo"]) 		? $_POST["tipo"] : "");

			$query = pg_query($con_postgres, "SELECT MAX(motivo)+1 AS motivo FROM motivos_es_gt ");
			$max = pg_fetch_array($query, null, PGSQL_ASSOC);
	

			$query = "INSERT INTO motivos_es_gt VALUES (
				 $max[motivo]
				,'$des_motivo'
				,'$estado'
				,'$tipo'
			)";

			$result = pg_query($con_postgres, $query);

			if (!$result) {
			  echo json_encode(array('success'=>false, 'message'=>'SERVER_ERROR'));
			  exit;
			}

			$result = json_encode(array('success'=>true, 'results'=>array("motivo" => $max['motivo'])));
			echo $result;
			
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

