<?php
    require '../../conexion/conn.php';

    $fecha = $_POST['fechaPostMin'];
    $fecha2 = $_POST['fechaPostMax'];
    $sql = "SELECT * FROM postsCategoria WHERE fecha BETWEEN '".$fecha."' AND '".$fecha2."'";
    echo $sql;
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
            echo $datos["post"]. "<br>";
            echo $datos["categoria"]. "<br>";
            echo $datos["fecha"]. "<br> <hr>";
        }
    ?>

</body>
</html>