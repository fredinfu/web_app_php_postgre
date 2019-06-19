	<?php

	require "config.php";

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