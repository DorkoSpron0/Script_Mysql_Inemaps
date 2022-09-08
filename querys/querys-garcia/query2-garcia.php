<?php

    require "../conexion/conn.php";
    $eid = $_POST["eid"];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>El inemap</title>
</head>
<body>
    <nav>
        <ul>
            <li><a href="formularios/form-jara.php">Formulario Jara</a></li>
            <li><a href="formularios/form-santana.php">Formulario Santana</a></li>
            <li><a href="formularios/form-jimena.php">Formulario Jimena</a></li>
            <li><a href="formularios/form-garcia.php">Formulario Garcia</a></li>
            <li><a href="formularios/form-nicky.php">Formulario Nicky</a></li>
        </ul>
    </nav>
    <h2>Resultado:</h2>
    <?php
        $query2 = "SELECT e.codigoEstudiante, e.correo FROM estudiantes e WHERE e.codigoEstudiante LIKE '%" . $eid . "%'";
        $result = MYSQLI_QUERY($xcon, $query2);

        while($datos = MYSQLI_FETCH_ASSOC($result)) {
            echo "<p>Correo: ". $datos["correo"] . "</p>";
        }

    ?>


</body>
</html>