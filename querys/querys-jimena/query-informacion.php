<?php
    require '../../conexion/conn.php';

    $informacion = $_POST['info'];

    $sql = "SELECT cum.codigoEstudiante, es.correo, es.nombreEstudiante
	FROM estudiantes es, comentarios cum
		WHERE cum.codigoEstudiante = es.codigoEstudiante
        AND es.nombreEstudiante like'%".$informacion."%';";
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
    <p>Informacion del estudiante</p> 
    <table border="1">
        <tr>
            <td><b>Codigo</b></td>
            <td><b>Correo</b></td>
            <td><b>Nombre</b></td>
        </tr>
        <?php
            $result = MYSQLI_QUERY($xcon, $sql);
            while($datos = MYSQLI_FETCH_ASSOC($result)){
                echo "<tr>
                        <td>".$datos["codigoEstudiante"]."</td>
                        <td>".$datos["correo"]."</td>
                        <td>".$datos["nombreEstudiante"]."</td>
                    </tr>";
            }
        ?>
        </table>

    <p><a href="../../formularios/form-jimena.php">Volver</a></p>
</body>
</html>