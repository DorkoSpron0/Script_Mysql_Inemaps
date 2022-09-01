<?php
    require '../../conexion/conn.php';

    $post = $_POST['post'];

    $sql = "SELECT e.nombreEstudiante, p.descripcion
	from estudiantes e, posts p
    WHERE e.codigoEstudiante = p.codigoEstudiante
		AND p.descripcion like'%".$post."%';";
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
    <p>Creador de los posts</p> 
    <table border="1">
        <tr>
            <td><b>Creador del post</b></td>
            <td><b>Post</b></td>
        </tr>
        <?php
            $result = MYSQLI_QUERY($xcon, $sql);
            while($datos = MYSQLI_FETCH_ASSOC($result)){
                echo "<tr>
                        <td>".$datos["nombreEstudiante"]."</td>
                        <td>".$datos["descripcion"]."</td>
                    </tr>";
            }
        ?>
        </table>

    <p><a href="../../formularios/form-jimena.php">Volver</a></p>
</body>
</html>