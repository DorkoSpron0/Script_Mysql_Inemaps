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
            <li><a href="form-jara.php">Formulario Jara</a></li>
            <li><a href="form-santana.php">Formulario Santana</a></li>
            <li><a href="form-jimena.php">Formulario Jimena</a></li>
            <li><a href="form-garcia.php">Formulario Garcia</a></li>
            <li><a href="form-nicky.php">Formulario Nicky</a></li>
        </ul>
    </nav>
    <h1>inempas</h1>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore aspernatur veniam, eaque id sit dignissimos sint suscipit eius non nam qui illum, ipsam fugiat. Voluptatem saepe, vel suscipit corrupti modi odit voluptatum inventore eos porro vero autem temporibus recusandae nisi perferendis. Cupiditate blanditiis odio consequuntur voluptas distinctio animi molestiae. Sapiente autem aliquam voluptas? Maiores est optio magnam aut iusto quae?</p>

    <form action="../querys/querys-nicky/query-nicky.php" method="POST">
        <label> ID </label>
        <input type="number" name="idestudiante" required>
        <input type="submit" value="Enviar">
    </form>

    <form action="../querys/querys-nicky/query2.php" method="POST">
        <label> ID </label>
        <input type="text" name="nombreEstudiante" required>
        <input type="passwrod" name="passwordEstudiante" required>
        <input type="submit" value="Enviar">
    </form>

    <form action="../querys/querys-nicky/query3.php" method="POST">
        <label> ID </label>
        <input type="number" name="idMin" required>
        <input type="number" name="idMax" required>
        <input type="submit" value="Enviar">
    </form>

    <form action="../querys/querys-nicky/quer4.php" method="POST">
        <label> ID </label>
        <input type="date" name="fechaPost" required>
        <input type="submit" value="Enviar">
    </form>
</body>
</html>