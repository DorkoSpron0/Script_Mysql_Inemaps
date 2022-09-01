<?php
    require '../../conexion/conn.php';

    $idPost = $_POST['idPost'];

    $sql = "SELECT p.idpost AS Id_Post, e.nombreEstudiante, p.fechaPublicacion
	FROM posts p
		RIGHT JOIN estudiantes e ON p.codigoEstudiante = e.codigoEstudiante
	WHERE p.idpost = ".$idPost.";";
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
    <p>Los datos de la persona que realizó ese post son:</p> 
    <table border="1">
        <tr>
            <td><b>Codigo de la publicación</b></td>
            <td><b>Nombre del estudiante</b></td>
            <td><b>Fecha de publicación</b></td>
        </tr>
        <?php
            $result = MYSQLI_QUERY($xcon, $sql);
            while($datos = MYSQLI_FETCH_ASSOC($result)){
                echo "<tr>
                        <td>".$datos["Id_Post"]."</td>
                        <td>".$datos["nombreEstudiante"]."</td>
                        <td>".$datos["fechaPublicacion"]."</td>
                    </tr>";
            }
        ?>
    </table>

    <p><a href="../../formularios/form-jara.php">Volver</a></p>
</body>
</html>