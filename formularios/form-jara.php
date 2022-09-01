<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>El inemap</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        h1 {
            margin: 25px 0 25px 120px;
        }
        div {
            border-style: inset;
            margin-bottom: 25px;
            margin-left: 25px;
            width: 300px;
            padding: 10px 0 0 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        h2 {
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        input {
            margin-bottom: 20px;
        }
    </style>
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
    <h1>Inemaps</h1>

    <div>
    <h2>Formulario 1</h2>
    <form action="../querys/querys-jara/query1.php" method="POST">
        <label>Fecha Inicio </label>
        <input type="date" name="fechaInicio" required>
        <br>
        <label>Fecha Finalización </label>
        <input type="date" name="fechaFinal" required>
        <br>
        <br>
        <input type="submit" value="Enviar">
    </form>
    </div>

    <div>
    <h2>Formulario 2</h2>
    <form action="../querys/querys-jara/query2.php" method="POST">
        <label>Codigo de la publicación </label>
        <input type="number" name="idPost" required>
        <br>
        <br>
        <input type="submit" value="Enviar">
    </form>
    </div>

    <div>
    <h2>Formulario 3</h2>
    <form action="../querys/querys-jara/query3.php" method="POST">
        <label>Nombre del estudiante </label>
        <input type="text" name="nombre" placeholder="ej: Chepe fortuna" required>
        <br>
        <label>Fragmento del contenido del post </label>
        <input type="text" name="desc_post" placeholder="ej: buenos dias" required>
        <br>
        <br>
        <input type="submit" value="Enviar">
    </form>
    </div>

    <div>
    <h2>Formulario 4</h2>
    <form action="../querys/querys-jara/query4.php" method="POST">
        <label>Codigo de la publicación </label>
        <input type="number" name="idPost2" required>
        <br>
        <br>
        <input type="submit" value="Enviar">
    </form>
    </div>
</body>
</html>