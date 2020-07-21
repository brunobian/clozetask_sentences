<!DOCTYPE html>
<html>
	<head>
		<title>MORFEMAS</title>
	</head>
	<body id="main_body" class="container">
    <div id="form_container">
        <form class="form-signin" method="get" >
			<div class="navbar navbar-inverse navbar-static-top fondo" role="navigation"> 
				<div style="margin-top:5%;margin-bottom:2%;margin-left:10%;margin-right:10%;">
					<h2 class="form-signin-heading">Diccionario de morfemas (BETA)</h2>
					<h4>Gracias por utilizar nuestro diccionario de morfemas</h4> 
					<p>Buscá el morfema (por ahora solo sufijos derivativos) que necesites y obtendrás su frecuencia y las palabras que lo utilizan</p>
					<p>También podés buscar una determinada palabra y obtener qué sufijo derivativo o pseudosufijo la comforma</p>
					<br>
					<div style="margin-bottom:1%">
						<input class="form-control" name="Sufijo" placeholder="Sufijo"> 
						<input class="btn btn-lg btn-loggin btn-block" style ="margin-top:20px" type="submit" value="Buscar por sufijo">
					</div>

					<div style="margin-bottom:1%">
						<input class="form-control" name="palabra" placeholder="Palabra"> 
						<input class="btn btn-lg btn-loggin btn-block" style ="margin-top:20px" type="submit" value="Buscar por palabra">
					</div>
				</div>
			</div>
        </form>	
    </div>	

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

		
	</body>
</html>
