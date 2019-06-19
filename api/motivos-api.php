	
<?php
	header('Access-Control-Allow-Origin: *');
	header("Access-Control-Allow-Credentials: true");
	header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
	header("Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With");
	header("Content-Type: application/json; charset=utf-8");	
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

			$response = json_encode(array('success'=>true, 'results'=>array("motivo" => $max['motivo'])));
			echo $response;
			
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

			$response = json_encode(array('success'=>true, 'results'=>$results));
			echo $response;
			
			break;

		case 'update_motivo':
			$motivo 	= isset($_GET["motivo"]) 		? $_GET["motivo"] 		: (isset($_POST["motivo"]) 		? $_POST["motivo"] : "");
			$des_motivo = isset($_GET["des_motivo"]) 	? $_GET["des_motivo"] 	: (isset($_POST["des_motivo"]) 	? $_POST["des_motivo"] : "");
			$estado 	= isset($_GET["estado"]) 		? $_GET["estado"] 		: (isset($_POST["estado"]) 		? $_POST["estado"] : "");
			$tipo 		= isset($_GET["tipo"]) 			? $_GET["tipo"] 		: (isset($_POST["tipo"]) 		? $_POST["tipo"] : "");

			$query = "UPDATE motivos_es_gt SET 				 
				des_motivo 	= '$des_motivo',
				estado 		= '$estado',
				tipo 		= '$tipo'
				WHERE motivo = $motivo
			";

			$result = pg_query($con_postgres, $query);

			if (!$result) {
			  echo json_encode(array('success'=>false, 'message'=>'SERVER_ERROR'));
			  exit;
			}

			$response = json_encode(array('success'=>true, 'results'=>array(
				"motivo" 		=> $motivo,
				"des_motivo" 	=> $des_motivo,
				"estado" 		=> $estado,
				"tipo" 			=> $tipo,
				))
			);

			echo $response;
			
			break;

		case 'delete_motivo':

			$motivo 	= isset($_GET["motivo"]) 		? $_GET["motivo"] 		: (isset($_POST["motivo"]) 		? $_POST["motivo"] : "");

			$query = "DELETE FROM motivos_es_gt WHERE motivo = $motivo";

			$result = pg_query($con_postgres, $query);

			if (!$result) {
			  echo json_encode(array('success'=>false, 'message'=>'SERVER_ERROR'));
			  exit;
			}

			$response = json_encode(array('success'=>true, 'results'=>array(
				"message" 		=> "motivo eliminado correctamente"
				))
			);
			
			echo $response;
			
			break;			


		default:
			echo json_encode(array('success'=>false, 'message'=>'BAD_REQUEST'));
			break;
	}

