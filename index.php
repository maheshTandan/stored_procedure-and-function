<!DOCTYPE html>
<html>
<head>
	<title>Stored Procedure</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>

<?php
	$db_host = "localhost";
	$db_user = "root";
	$db_password = "";
	$db_name = "pro";
	$conn = mysqli_connect($db_host, $db_user, $db_password, $db_name);
	if($conn == false){
		die("Tandan" . mysqli_error($conn));
	}
?>
<div class="container">
	<div class="row border">
		<div class="col-sm-10">
			<?php
				$sql = "call spGettest()";
	$q = mysqli_query($conn, $sql);
	$num = mysqli_num_rows($q);
	if($num > 0){ ?>
		<table class="table">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Roll No</th>
					<th>Class</th>
					<th>Marks</th>
					<th>Function</th>
				</tr>
			</thead>
			<tbody>
			<?php $n = 1; while($row = mysqli_fetch_assoc($q,)){ ?>
				<tr>
					<td><?php echo $row['Id']; ?></td>
					<td><?php echo $row['Stn']; ?></td>
					<td><?php echo $row['Stroll']; ?></td>
					<td><?php echo $row['Class']; ?></td>
					<td><?php echo $row['Marks']; ?></td>
					<td>
						<?php
						do{
							mysqli_store_result($conn);
						}
						while(mysqli_next_result($conn));

							$query = "SELECT tandan($n)";
							
							$result = mysqli_query($conn, $query);

							if($result == false){
								die("Error " . mysqli_error($conn));
							}
							
							/*$num = mysqli_num_rows($result);*/

							$run = mysqli_fetch_assoc($result);
									echo $run["tandan($n)"] . "<br />";
									$n++;
							?>
					</td>
				</tr>
	<?php }
	} else{

	}
	echo "</tbody>";
	echo "</table>";
			?>
		</div>

	</div>
</div>
<div>
	
</div>
</body>
</html>