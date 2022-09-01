<?php
    require '../../conexion/conn.php';

    $id = $_POST['id'];

    $sql = "SELECT c.fechaPublicacion, c.idComentario
	FROM comentarios c
	WHERE c.idComentario like'%".$id."%';";
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
    <p>Fecha de publicación de los comentarios</p> 
    <table border="1">
        <tr>
            <td><b>Fecha de publicación</b></td>
            <td><b>Id comentario</b></td>
        </tr>
        <?php
            $result = MYSQLI_QUERY($xcon, $sql);
            while($datos = MYSQLI_FETCH_ASSOC($result)){
                echo "<tr>
                        <td>".$datos["fechaPublicacion"]."</td>
                        <td>".$datos["idComentario"]."</td>
                    </tr>";
            }
        ?>
        </table>

    <p><a href="../../formularios/form-jimena.php">Volver</a></p>
</body>
</html>