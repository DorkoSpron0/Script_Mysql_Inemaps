<?php
require '../../conexion/conn.php';
$nombre = $_POST['nombre'];
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
                <td>Nombre</td>
                <td>Contenido del Comentario</td>
                <td>Id del Dueño de la Publicacion comentada</td>
            </tr>
            <?php
            if(isset($nombre)) {
                $query = "SELECT * FROM InformacionComentarios WHERE Nombre LIKE '%" . $nombre . "%'";
            } else {
                $query = "SELECT * FROM InformacionComentarios";
            }
            $response = MYSQLI_QUERY($xcon, $query);
            while($datos = MYSQLI_FETCH_ASSOC($response)) {
                echo "<tr>
                        <td>" . $datos["Nombre"] . "</td>
                        <td>" . $datos["Contenido_Comentario"] . "</td>
                        <td>" . $datos["ID_Post_Comentado"] . "</td>
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