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
        <h2><b>Consultar descripcion de post por correo</b></h2>
        <form action="../querys/querys-garcia/query-garcia.php" method="post">
            <table border=1>
                <tr>
                    <td>
                        <label for="correo1">Inserte su correo </label>
                        <input type="text" name="correo1" placeholder="Correo" autofocus required>
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2">
                        <center><input type="submit" placeholder="Enviar"></center>
                    </td>
                </tr>
            </table>
        </form>

        <h2><b>Consultar correo por codigo de estudiante</b></h2>
        <form action="../querys/querys-garcia/query2-garcia.php" method="post">
            <table border=1>
                <tr>
                    <td>
                        <label for="eid">Inserte su codigo de estudiante </label>
                        <input type="text" name="eid" placeholder="Codigo" autofocus required>
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2">
                        <center><input type="submit" placeholder="Enviar"></center>
                    </td>
                </tr>
            </table>
        </form>

        <h2><b>Consultar id del post por nombre y contrasenia</b></h2>
        <form action="../querys/querys-garcia/query3-garcia.php" method="post">
            <table border=1>
                <tr>
                    <td>
                        <label for="contrasena">Inserte su contrasena </label>
                        <input type="text" name="contrasena" placeholder="contrasena" autofocus required>
                    </td>
                    <td>
                        <label for="nombre">Inserte su nombre de usuario </label>
                        <input type="text" name="nombre" placeholder="nombre" autofocus required>
                    </td>                    
                </tr>
                <tr>
                    <td colspan="2">
                        <center><input type="submit" placeholder="Enviar"></center>
                    </td>
                </tr>
            </table>
        </form>
        <h2><b>Consultar fecha del comentario segun id del comentario</b></h2>
        <form action="../querys/querys-garcia/query4-garcia.php" method="post">
            <table border=1>
                <tr>
                    <td>
                        <label for="cid">Inserte el id del comentario </label>
                        <input type="text" name="cid" placeholder="id del comentario" autofocus required>
                    </td>                  
                </tr>
                <tr>
                    <td colspan="2">
                        <center><input type="submit" placeholder="Enviar"></center>
                    </td>
                </tr>
            </table>
        </form>

    </main>
</body>
</html>