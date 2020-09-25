<?php 

$target_dir = "uploads/";

$target_file = $target_dir . $_POST['data'];

unlink($target_file);

$response = new StdClass();

if (file_exists($target_file)) {
	$response->state = 1;
}else{
	$response->state = 0;
}

echo json_encode($response);