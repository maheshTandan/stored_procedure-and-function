<!DOCTYPE html>
<html>
<head>
	<title>function</title>
</head>
<body>
<?php
	$db_host = "localhost";
	$db_user = "root";
	$db_password = "";
	$db_name = "pro";
	$conn = mysqli_connect($db_host, $db_user, $db_password, $db_name);
	for($m = 1; $m < 5; $m++){
		$query = "SELECT tandan($m)";
	
	$result = mysqli_query($conn, $query);
	
	$num = mysqli_num_rows($result);

	$run = mysqli_fetch_assoc($result);
			echo $run["tandan($m)"] . "<br />";
			echo $num;
			$num++;
	}


?>
</body>
</html>