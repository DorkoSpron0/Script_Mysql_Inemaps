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
        <form action="../querys/query-garcia.php" method="post">
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






    </main>
</body>
</html>