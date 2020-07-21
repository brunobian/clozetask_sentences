<!DOCTYPE html>
<html>
	<head>
		<title>MORFEMAS</title>
	</head>
	<body>
		<div style="margin-top:10%, align:center ">
			<input type="palabras" name="Morfema" placeholder="insertá el morfema a buscar" required> 
		</div>
		<?php
			include_once 'db.php'
		?>
<!--
		<?php
			$dbServername = "localhost";
			$dbUsername = "brunobian";
			$dbPassword = "tusam.vive";
			$dbName = "morfemas";

			$conn = pg_connect(host=$dbServername, 
							   user=$dbUsername, 
							   password=$dbPassword, 
							   dbname=$dbName);

			if (!$conn) {
			  echo "An error occurred.\n";
			  exit;
			}
			if ($conn) {
			  echo "FUNCIONA!.\n";
			  exit;
			}
		
		
			$sql = "SELECT * FROM morfema;";
			$result = pg_query($conn, $sql);
			
			if (!$result) {
			  echo "An error occurred.\n";
			  exit;
			}

			while ($row = pg_fetch_assoc($result)) {
			  echo $row['morfema'];
			  echo $row['frecuencia'];
			}			
		?>
-->
		
	</body>
</html>
