<?php
    require '../conexion/conn.php';

    $nombre = $_POST['nombreEstudiante'];
    $paswword = $_POST['passwordEstudiante'];
    $sql = "SELECT * FROM estudiantesComentario WHERE nombreEstudiante = '".$nombre."' AND contraseña '".$paswword."'";
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
    <p>La fecha es: <?php echo $fecha ?></p>
    <?php     
        $result = mysqli_query($xcon, $sql);

        while($datos = mysqli_fetch_assoc($result)) {
            echo $datos["nombreEstudiante"]. "<br>";
            echo $datos["contraseña"]. "<br>";
            echo $datos["idComentario"]. "<br>";
            echo $datos["descripcion"]. "<br> <hr>";
        }
    ?>

</body>
</html>