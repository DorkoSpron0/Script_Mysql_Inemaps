<?php
    require '../../conexion/conn.php';

    $fecha1 = $_POST['fechaInicio'];
    $fecha2 = $_POST['fechaFinal'];

    $sql = "SELECT e.contraseña, c.fechaPublicacion
	FROM estudiantes e
		RIGHT JOIN comentarios c ON e.codigoEstudiante = c.codigoEstudiante
	WHERE c.fechaPublicacion BETWEEN '".$fecha1."' AND '".$fecha2."';";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>Ingreso correcto</h2>
    <p>Contraseña de los usuarios que han publicado post en los meses consultados</p> 
    <table border="1">
        <tr>
            <td><b>Contraseña</b></td>
            <td><b>Fecha de publicación</b></td>
        </tr>
        <?php
            $result = MYSQLI_QUERY($xcon, $sql);
            while($datos = MYSQLI_FETCH_ASSOC($result)){
                echo "<tr>
                        <td>".$datos["contraseña"]."</td>
                        <td>".$datos["fechaPublicacion"]."</td>
                    </tr>";
            }
        ?>
        </table>

    <p><a href="../../formularios/form-jara.php">Volver</a></p>
</body>
</html>