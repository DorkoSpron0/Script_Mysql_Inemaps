<?php
    require '../conexion/conn.php';
    $fecha1 = $_POST['fecha1'];
    $fecha2 = $_POST['fecha2'];
    $nombre = $_POST['name'];
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
    <main>
        <h2><b>Resultado de la busqueda:</b></h2>
        <table border="1">
            <tr>
                <td><b>Nombre estudiante</b></td>
                <td><b>Fecha primer post:</b></td>
            </tr>
            <?php
                $query2 = "SELECT e.nombreEstudiante, p.fechaPublicacion FROM estudiantes e CROSS JOIN posts p ON e.codigoEstudiante = p.codigoEstudiante WHERE p.fechaPublicacion BETWEEN '" . $fecha1 . "' AND '" . $fecha2 . "' AND e.nombreEstudiante LIKE '%" . $nombre . "%'";


                $response = MYSQLI_QUERY($xcon, $query2);
                while($datos = MYSQLI_FETCH_ROW($response)) {
                    echo "<tr><td>" . $datos[0] . "</td><td>" . $datos[1] . "</td></tr>";
                }
            ?>
        </table>
        
        
    </main>
    <?php
    mysqli_close($xcon);
    ?>
</body>
</html>