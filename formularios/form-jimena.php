<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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

<h3>Consultar el id de los comentarios</h3>
    <form action="../querys/querys-jimena/query-id.php" method="POST">
        <label>Ingrese un fragmento del comentario</label>
        <input type="text" name="com" required>
        <br>
        <input type="submit" value="Enviar">
    </form>

<h3>Consultar la fecha de publicación de los comentarios</h3>
    <form action="../querys/querys-jimena/query-fecha.php" method="POST">
        <label>Ingrese el id del comentario</label>
        <input type="number" name="id" required>
        <br>
        <input type="submit" value="Enviar">
    </form>

<h3>Consultar el creador del post</h3>
    <form action="../querys/querys-jimena/query-creador.php" method="POST">
        <label>Ingrese un fragmento del post</label>
        <input type="text" name="post" required>
        <br>
        <input type="submit" value="Enviar">
    </form>

<h3>Consultar la informacion del estudiante</h3>
    <form action="../querys/querys-jimena/query-informacion.php" method="POST">
        <label>Ingrese el nombre del estudiante</label>
        <input type="text" name="info" required>
        <br>
        <input type="submit" value="Enviar">
    </form>


</body>
</html>