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

      <h1 class="logo me-auto me-lg-0"><a href="../index.php">inemaps<span>.</span></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Inicio</a></li>
          <li><a class="nav-link scrollto" href="#team">Equipo</a></li>
          <li class="dropdown"><a href=""><span>Formularios</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="../formularios/form-jara.php">Formularios - Juan Jos&eacute;</a></li>
              <li><a href="../formularios/form-nicky.php">Formularios - Nicky</a></li>
              <li><a href="../formularios/form-jimena.php">Formularios - Jimena</a></li>
              <li><a href="../formularios/form-santana.php">Formularios - Daniel</a></li>
              <li><a href="../formularios/form-garcia.php">Formularios - Juan David</a></li>
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

      <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="150">
        <div class="col-xl-6 col-lg-8">
          <h1>Vistas con php</h1>
          <h2>Formularios - Juan David</h2>
        </div>
      </div>

    <main class='main-container'>
        <div class='main-item'>
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
        </div>

        <div class='main-item'>
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
        </div>

        <div class='main-item'>
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
        </div>

        <div class='main-item'>
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
        </div>

    </main>

  </section><!-- End Hero -->

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
