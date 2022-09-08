<?php

    require "../conexion/conn.php";
    $contrasena = $_POST["contrasena"];
    $nombre = $_POST["nombre"];
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
        $query3 = "SELECT p.idpost FROM posts p CROSS JOIN estudiantes e ON p.codigoEstudiante = e.codigoEstudiante WHERE e.contraseña LIKE $contrasena and e.NombreEstudiante LIKE $nombre";
        $result = MYSQLI_QUERY($xcon, $query3);

        while($datos = MYSQLI_FETCH_ASSOC($result)) {
            echo "<p>ID del post: " . $datos["idpost"] . "</p>";
        }

    ?>


</body>
</html>