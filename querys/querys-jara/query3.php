<?php
    require '../../conexion/conn.php';

    $nombre = $_POST['nombre'];
    $desc = $_POST['desc_post'];


    $sql = "select e.nombreEstudiante nombre, c.descripcion comentarios
	from comentarios c
		natural join estudiantes e
			where c.descripcion like '%".$desc."%'
				and e.nombreEstudiante like '%".$nombre."%';";
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
    <p>Tal vez esta es la publicación que buscas:</p> 
    <table border="1">
        <tr>
            <td><b>Nombre del estudiante</b></td>
            <td><b>Publicación</b></td>
        </tr>
        <?php
            $result = MYSQLI_QUERY($xcon, $sql);
            while($datos = MYSQLI_FETCH_ASSOC($result)){
                echo "<tr>
                        <td>".$datos["nombre"]."</td>
                        <td>".$datos["comentarios"]."</td>
                    </tr>";
            }
        ?>
    </table>

    <p><a href="../../formularios/form-jara.php">Volver</a></p>
</body>
</html>