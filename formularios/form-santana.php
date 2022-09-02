<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="https://i.postimg.cc/j5wK5dpr/unnamed.png%22%3E" type="image/x-icon">
    <style>
        
        form {
            display: flex;
            justify-content: center;
            text-align: center;
        }
        h2 {
            text-align: center;
        }
    </style>
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
        <div class="form">
            <h2><b>Buscar la fecha del primer post de un estudiante</b></h2>
            <form name="form1" action="../querys/querys-santana/query-santana-1.php" method="post">
                <table border="1">
                    <tr>
                        <td>Ingresa el nombre del estudiante:</td>
                        <td>
                            <input type="text" name="name" placeholder="Escribe aqui el nombre (Opcional)" size="29">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><center>Ingrese los rangos de fechas</center></td>
                    </tr>
                    <tr>
                        <td>Fecha inicial</td>
                        <td>
                            <input type="date" name="fecha1" required>
                        </td>
                    </tr>
                    <tr>
                        <td>Fecha final</td>
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
        <br>

        <div class="form">
            <h2><b>Cantidad de posts por categorias</b></h2>
            <form name="form2" action="../querys/querys-santana/query-santana-2.php" method="post">
                <table border="1">
                    <tr>
                        <td colspan="5"><center>Ingrese la categoria:</center></td>
                    </tr>
                    <tr>
                        <td>
                            <select name="categoria">
                                <option value="5" selected>Todas</option>
                                <option value="1">Informacion</option>
                                <option value="2">Eventos</option>
                                <option value="3">Quejas</option>
                                <option value="4">Dudas</option>
                            </select>
                        </td>
                        <!-- <td><input type="radio" name="categoria" value="5" checked> Todas <br></td> -->
                        <!-- <td><input type="radio" name="categoria" value="1"> Informacion<br></td> -->
                        <!-- <td><input type="radio" name="categoria" value="2"> Eventos<br></td> -->
                        <!-- <td><input type="radio" name="categoria" value="3"> Quejas<br></td> -->
                        <!-- <td><input type="radio" name="categoria" value="4"> Dudas</td> -->
                    </tr>
                    <tr>
                        <td colspan="5"><center><input type="submit" value="Enviar"></center></td>
                    </tr>
                </table>
            </form>
        </div>
        <br>
        <br>

        <div class="form">
            <h2><b>Consultar comentarios hechos por estudiantes</b></h2>
            <form name="form3" action="../querys/querys-santana/query-santana-3.php" method="post">
                <table border="1">
                    <tr>
                        <td colspan="5"><center>Ingresa aqui el nombre del estudiante</center></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="nombre" placeholder="Escribe aqui el nombre (Opcional)" size="29"></td>
                    </tr>
                    <tr>
                        <td colspan="5"><center><input type="submit" value="Enviar"></center></td>
                    </tr>
                </table>
            </form>
        </div>
        <br>
        <br>

        <div class="form">
            <h2><b>Consultar quien se ha quejado segun su correo</b></h2>
            <form name="form4" action="../querys/querys-santana/query-santana-4.php" method="post">
                <table border="1">
                    <tr>
                        <td><center>Ingresa el correo</center></td>
                    </tr>
                    <tr>
                        <td><input type="email" name="correo" placeholder="Escribe aqui el correo (Opcional)" size="29"></td>
                    </tr>
                    <tr>
                        <td><center><input type="submit" value="Enviar"></center></td>
                    </tr>
                </table>
            </form>
        </div>

    </main>
</body>

</html>