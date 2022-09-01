<?php
    require '../../conexion/conn.php';

    $comentario = $_POST['com'];

    $sql = "select c.descripcion, c.idpost
    from comentarios c 
    where c.descripcion like '%".$comentario."%';";
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
    <p>Id de los posts</p> 
    <table border="1">
        <tr>
            <td><b>Post</b></td>
            <td><b>Id del post</b></td>
        </tr>
        <?php
            $result = MYSQLI_QUERY($xcon, $sql);
            while($datos = MYSQLI_FETCH_ASSOC($result)){
                echo "<tr>
                        <td>".$datos["descripcion"]."</td>
                        <td>".$datos["idpost"]."</td>
                    </tr>";
            }
        ?>
        </table>

    <p><a href="../../formularios/form-jimena.php">Volver</a></p>
</body>
</html>