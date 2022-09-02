<?php
    require '../../conexion/conn.php';

    $idMin = $_POST['idMin'];
    $idMax= $_POST['idMax'];
    $sql = "SELECT * FROM comentariosPosts WHERE idpost BETWEEN ".$idMin." AND ".$idMax;

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
    <?php     
        $result = mysqli_query($xcon, $sql);

        while($datos = mysqli_fetch_assoc($result)) {
            echo $datos["idComentario"]. "<br>";
            echo $datos["descripcion"]. "<br>";
            echo $datos["idpost"]. "<br>";
            echo $datos["categoria"]. "<br> <hr>";
        }
    ?>

</body>
</html>