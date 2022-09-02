<?php
    require '../../conexion/conn.php';

    $idestudiante = $_POST['idestudiante'];
    $sql = "SELECT * FROM estudiantescomentario WHERE codigoEstudiante = ".$idestudiante;
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
    <?php     
        $result = mysqli_query($xcon, $sql);

        while($datos = mysqli_fetch_assoc($result)) {
            echo $datos["nombreEstudiante"]. "<br>";
            echo $datos["idComentario"]. "<br>";
            echo $datos["descripcion"]. "<br> <hr>";
        }
    ?>

</body>
</html>