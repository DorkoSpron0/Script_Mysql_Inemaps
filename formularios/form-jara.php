<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Inemaps</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <link rel="shortcut icon" href="https://i.postimg.cc/R0z1ky3x/Mainlogo-Inemaps.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="../assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="../assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="../assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <link href="../assets/css/style.css" rel="stylesheet">
</head>

<body>

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top ">
        <div class="container d-flex align-items-center justify-content-lg-between">

            <h1 class="logo me-auto me-lg-0"><a href="index.html">inemaps<span>.</span></a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="../assets/img/logo.png" alt="" class="img-fluid"></a>-->

            <nav id="navbar" class="navbar order-last order-lg-0">
                <ul>
                    <li><a class="nav-link scrollto active" href="#hero">Inicio</a></li>
                    <li><a class="nav-link scrollto" href="#team">Equipo</a></li>
                    <li class="dropdown"><a href=""><span>Formularios</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="formularios/form-jara.php">Formularios - Juan Jos&eacute;</a></li>
                            <li><a href="formularios/form-nicky.php">Formularios - Nicky</a></li>
                            <li><a href="formularios/form-jimena.php">Formularios - Jimena</a></li>
                            <li><a href="formularios/form-santana.php">Formularios - Daniel</a></li>
                            <li><a href="formularios/form-garcia.php">Formularios - Juan David</a></li>
                        </ul>
                    </li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->
        </div>
    </header><!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center justify-content-center">
        <div class="container" data-aos="fade-up">

            
    <section>
        <div>
            <h2>Formulario 1</h2>
            <br>
            <form action="../querys/querys-jara/query1.php" method="POST">
                <label>Fecha Inicio </label>
                <input type="date" name="fechaInicio" required>
                <br>
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
    </section>

            

                </div>

            </div>
        </section><!-- End Team Section -->

    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer">

        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong><span>Gp</span></strong>. All Rights Reserved
            </div>
        </div>
    </footer><!-- End Footer -->

    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="../assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="../assets/vendor/aos/aos.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="../assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="../assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="../assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="../assets/js/main.js"></script>

</body>

</html>