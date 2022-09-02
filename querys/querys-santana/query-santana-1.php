<?php
require '../../conexion/conn.php';
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
    <link rel="shortcut icon" href="https://i.postimg.cc/j5wK5dpr/unnamed.png%22%3E" type="image/x-icon">
    <title>El inemap</title>
</head>

<body>
    <nav>
        <ul>
            <li><a href="form-jara.php">Formulario Jara</a></li>
            <li><a href="form-santana.php">Formulario Santana</a></li>
            <li><a href="form-jimena.php">Formulario Jimena</a></li>
            <li><a href="form-garcia.php">Formulario Garcia</a></li>
            <li><a href="form-nicky.php">Formulario Nicky</a></li>
        </ul>
    </nav>
    <main>
        <h2><b>Resultado de la busqueda:</b></h2>
        <a href="../../formularios/form-santana.php">Atrás</a>
        <br><br>
        <table border="1">
            <tr>
                <td colspan="2"><b>Cantidad de resultados:</b></td>
                <?php 
                    $query2 = "SELECT " . "COUNT(Nombre)" . "FROM FechaPrimerPost
                    WHERE FechaPublicacionPrimerPost BETWEEN '" . $fecha1 . "' AND '" . $fecha2 . "'
                        AND Nombre LIKE '%" . $nombre . "%'";
                        
                    $res = MYSQLI_QUERY($xcon, $query2);
                    echo "<tr><td colspan='3'><center>" . implode(mysqli_fetch_row($res)) . "</center></tr></td>";
                ?>
            </tr>
            <tr>
                <td><b>Nombre estudiante</b></td>
                <td><b>Fecha primer post</b></td>
            </tr>
            <?php
            $query = "SELECT * FROM FechaPrimerPost
                        WHERE FechaPublicacionPrimerPost BETWEEN '" . $fecha1 . "' AND '" . $fecha2 . "'
                            AND Nombre LIKE '%" . $nombre . "%'";
            
            $response = MYSQLI_QUERY($xcon, $query);
            while ($datos = MYSQLI_FETCH_ROW($response)) {
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