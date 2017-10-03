<?php
	include 'connect.php';

	//Connection to talk to the DB
	$db = new Database();
	$con = $db->getConnection();

	//Creating the structure of CSV file
	$delimiter = ",";
	$filename = "data_".date('Y-M-d').".csv";
	$f = fopen('php://memory', 'w');
	$fields = array('Droid ID', 'Damage Done', 'Fight Intensity');
	fputcsv($f, $fields, $delimiter);
  
	//Query Construction and Execution
	$query = "SELECT droid_id, avg(damage_done) as damage_done, avg(fight_intensity) as fight_intensity FROM droid_fight_data GROUP BY droid_id, damage_done;";
	$rows = $con->query($query);

	//Parsing results into CSV
	while ($row = $rows->fetch_assoc()) {
		$lineData = array($row['droid_id'], $row['damage_done'],$row['fight_intensity']);
		fputcsv($f, $lineData, $delimiter);
	}

	//Moving to the beginning of the file
	fseek($f, 0);
	
	//set headers to download file rather than displayed
	header('Content-Type: text/csv');
	header('Content-Disposition: attachment; filename="' . $filename . '";');
	
	//output all remaining data on a file pointer
	fpassthru($f);

	$command = escapeshellcmd($filename);
	$output = shell_exec($command);
	var_dump($output);
?>