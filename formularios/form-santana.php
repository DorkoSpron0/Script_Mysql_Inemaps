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
        <div>
            <h2><b>Buscar la fecha del primer post de un estudiante</b></h2>
            <form name="form1" action="../querys/santana/query-santana-1.php" method="post">
                <table border="1">
                    <tr>
                        <td>Ingresa el nombre del estudiante:</td>
                        <td>
                            <input type="text" name="name" placeholder="Escribe aqui el nombre" autofocus required>
                        </td>
                    </tr>
                    <tr>
                        <td>Ingresa la fecha fecha de inicio</td>
                        <td>
                            <input type="date" name="fecha1" required>
                        </td>
                    </tr>
                    <tr>
                        <td>Ingresa la fecha limite</td>
                        <td>
                            <input type="date" name="fecha2">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><center><input type="submit" value="Enviar"></center></td>
                    </tr>
                    
                    
                </table>
            </form>
        </div>
        <br>
        <div>
            <h2><b>Numero de post por categorias</b></h2>
            <form action="../querys/santana/query-santana-2.php">
                <table border="1">
                    <tr>
                        <td colspan="4"><center>Ingrese la categoria:</center></td>
                    </tr>
                    <tr>
                        <td><input type="radio" name="categoria" value="1"> Informacion<br></td>
                        <td><input type="radio" name="categoria" value="1"> Eventos<br></td>
                        <td><input type="radio" name="categoria" value="1"> Quejas<br></td>
                        <td><input type="radio" name="categoria" value="1"> Dudas<br></td>
                    </tr>
                    <tr>
                        <td colspan="4"><center><input type="submit" value="Enviar"></center></td>
                    </tr>
                </table>
            </form>
        </div>

    </main>
</body>

</html>