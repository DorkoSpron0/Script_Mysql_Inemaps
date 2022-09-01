<?php
    require '../../conexion/conn.php';

    $idPost2 = $_POST['idPost2'];

    $sql = "select count(c.idComentario) ComentariosConPost7 
	from comentarios c
		cross join posts p on c.idpost = p.idpost
			where p.idpost = ".$idPost2.";";
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
    <?php
        $result = MYSQLI_QUERY($xcon, $sql);
        $datos = MYSQLI_FETCH_ASSOC($result);
            echo "<p>La publicación consultada cuenta con <b>".$datos["ComentariosConPost7"]."</b></p>";
    ?>

    <p><a href="../../formularios/form-jara.php">Volver</a></p>
</body>
</html>