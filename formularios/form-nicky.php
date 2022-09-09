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

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top ">
        <div class="container d-flex align-items-center justify-content-lg-between">

            <h1 class="logo me-auto me-lg-0"><a href="index.html">inemaps<span>.</span></a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

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

            <div class="row text-white">
                <div class="col-md-3">
                    <div class="card bg-dark">
                        <div class="card-body">
                            <form action="../querys/querys-nicky/query-nicky.php" method="POST">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Codigo Estudiante</label>
                                    <input type="number" class="form-control" name="idestudiante" placeholder="Codigo Estudiante" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card bg-dark">
                        <div class="card-body">
                            <form action="../querys/querys-nicky/query2.php" method="POST">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Codigo Estudiante</label>
                                    <input type="text" class="form-control" name="nombreEstudiante" required>
                                    <label>Contraseña estudiante</label>
                                    <input type="passwrod" class="form-control" name="passwordEstudiante" required>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card bg-dark">
                        <div class="card-body">
                            <form action="../querys/querys-nicky/query3.php" method="POST">
                                <div class="form-group">
                                <label for="exampleInputEmail1">id Minimo</label>
                                    <input type="number" name="idMin" class="form-control" required>
                                    <label for="exampleInputEmail1">id Maximo</label>
                                    <input type="number" name="idMax" class="form-control"  required>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


                <div class="col-md-3">
                    <div class="card bg-dark">
                        <div class="card-body">
                            <form action="../querys/querys-nicky/queyr4.php" method="POST">
                                <div class="form-group">
                                <label for="exampleInputEmail1">Fecha minima</label>
                                    <input type="date" name="fechaPostMin" class="form-control" required>
                                    <label for="exampleInputEmail1">Fecha maxima</label>
                                    <input type="date" name="fechaPostMax" class="form-control" required>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section><!-- End Hero -->

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