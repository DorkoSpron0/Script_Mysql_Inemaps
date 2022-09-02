<?php
require '../../conexion/conn.php';
$correo = $_POST['correo'];
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
        <a href="../../formularios/form-santana.php">Volver</a>
        <br><br>
        <table border="1">
            <tr>
                <td>Correo</td>
                <td>Contenido de la Queja</td>
                <td>Fecha Publicacion</td>
            </tr>
            <?php
            if(isset($correo)) {
                $query = "SELECT * FROM PostsobreQuejas WHERE Correo LIKE '%" . $correo . "%' ORDER BY Contenido_Queja";
            } else {
                $query = "SELECT * FROM PostsobreQuejas ORDER BY Contenido_Queja";
            }
            $response = MYSQLI_QUERY($xcon, $query);
            while($datos = MYSQLI_FETCH_ASSOC($response)) {
                echo "<tr>
                        <td>" . $datos["Correo"] . "</td>
                        <td>" . $datos["Contenido_Queja"] . "</td>
                        <td>" . $datos["Fecha_Publicacion"] . "</td>
                    </tr>";
            }
            ?>
        </table>
    </main>
    <?php
    mysqli_close($xcon);
    ?>
</body>
</html>