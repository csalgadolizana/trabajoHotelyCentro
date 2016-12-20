<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sp" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Tu descanzo ideal :D</title>
        <meta name="description" content="Cardio is a free one page template made exclusively for Codrops by Luka Cvetinovic" />
        <meta name="keywords" content="html template, css, free, one page, gym, fitness, web design" />
        <meta name="author" content="Luka Cvetinovic for Codrops" />
        <sp:url value="/folder/" var="crunchifyCSS" />
        <!-- Favicons (created with http://realfavicongenerator.net/)-->
        <link rel="apple-touch-icon" sizes="57x57" href="/folder/img/favicons/apple-touch-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="folder/img/favicons/apple-touch-icon-60x60.png">
        <link rel="icon" type="image/png" href="folder/img/favicons/favicon-32x32.png" sizes="32x32">
        <link rel="icon" type="image/png" href="folder/img/favicons/favicon-16x16.png" sizes="16x16">
        <link rel="manifest" href="folder/img/favicons/manifest.json">
        <link rel="shortcut icon" href="folder/img/favicons/favicon.ico">
        <meta name="msapplication-TileColor" content="#00a8ff">
        <meta name="msapplication-config" content="img/favicons/browserconfig.xml">
        <meta name="theme-color" content="#ffffff">
        <!-- Normalize -->
        <link rel="stylesheet" type="text/css" href="folder/css/normalize.css">
        <!-- Bootstrap -->
        <link rel="stylesheet" type="text/css" href="folder/css/bootstrap.css">
        <!-- Owl -->
        <link rel="stylesheet" type="text/css" href="folder/css/owl.css">
        <!-- Animate.css -->
        <link rel="stylesheet" type="text/css" href="folder/css/animate.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" type="text/css" href="folder/fonts/font-awesome-4.1.0/css/font-awesome.min.css">
        <!-- Elegant Icons -->
        <link rel="stylesheet" type="text/css" href="folder/fonts/eleganticons/et-icons.css">
        <!-- Main style -->
        <link rel="stylesheet" type="text/css" href="folder/css/cardio.css">

        <style type="text/css">
            .bs-example{
                margin: 20px;
            }
        </style>
    </head>

    <body>
        <div class="preloader">
            <img src="folder/img/loader.gif" alt="Preloader image">
        </div>
        <nav class="navbar">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><img src="folder/img/mountains.png" data-active-url="folder/img/mountains.png" alt=""></a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right main-nav">
                        <li><a href="#intro">Home</a></li>
                        <li><a href="#services">Servicios</a></li>
                        <li><a href="#team">Lo mas!</a></li>
                        <li><a href="#pricing">Planes</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#modalRegistrate" class="btn btn-blue">Registrate</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#modalCliente" class="btn btn-blue">Ingreso Cliente</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#modalAdministrador" class="btn btn-blue">Administrador</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
        <header id="intro">
            <div class="container">
                <div class="table">
                    <div class="header-text">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <h3 class="light white">Elige tu Hotel o Centro de Eventos aquí :)</h3>
                                <h1 class="white typed">Distintas opciones en San Jose de Maipo y Pirque para descanzar.</h1>
                                <span class="typed-cursor">|</span>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <section>
            <div class="cut cut-top"></div>
            <div class="container">
                <div class="row intro-tables">
                    <div class="col-md-4">
                        <div class="intro-table intro-table-first">
                            <h5 class="white heading">Planes para ti</h5>
                            <div class="owl-carousel owl-schedule bottom">
                                <div class="item">
                                    <div class="schedule-row row">
                                        <div class="col-xs-6">
                                            <h5 class="regular white">Premiun</h5>
                                        </div>
                                        <div class="col-xs-6 text-right">
                                            <h5 class="white">8:30 - 10:00</h5>
                                        </div>
                                    </div>
                                    <div class="schedule-row row">
                                        <div class="col-xs-6">
                                            <h5 class="regular white">Gold</h5>
                                        </div>
                                        <div class="col-xs-6 text-right">
                                            <h5 class="white">8:30 - 10:00</h5>
                                        </div>
                                    </div>
                                    <div class="schedule-row row">
                                        <div class="col-xs-6">
                                            <h5 class="regular white">Diamond</h5>
                                        </div>
                                        <div class="col-xs-6 text-right">
                                            <h5 class="white">8:30 - 10:00</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="schedule-row row">
                                        <div class="col-xs-6">
                                            <h5 class="regular white">Early Exercise</h5>
                                        </div>
                                        <div class="col-xs-6 text-right">
                                            <h5 class="white">8:30 - 10:00</h5>
                                        </div>
                                    </div>
                                    <div class="schedule-row row">
                                        <div class="col-xs-6">
                                            <h5 class="regular white">Muscle Building</h5>
                                        </div>
                                        <div class="col-xs-6 text-right">
                                            <h5 class="white">8:30 - 10:00</h5>
                                        </div>
                                    </div>
                                    <div class="schedule-row row">
                                        <div class="col-xs-6">
                                            <h5 class="regular white">Cardio</h5>
                                        </div>
                                        <div class="col-xs-6 text-right">
                                            <h5 class="white">8:30 - 10:00</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="intro-table intro-table-hover">
                            <h5 class="white heading hide-hover">Registrate con Nosotros</h5>
                            <div class="bottom">

                                <h4 class="white heading small-pt">Y obten fabulosos </h4>
                                <h4 class="white heading small-pt">Descuentos</h4>
                                <a href="#" class="btn btn-white-fill expand">Registrate</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="intro-table intro-table-third">
                            <h5 class="white heading">Nuestros Clientes</h5>
                            <div class="owl-testimonials bottom">
                                <div class="item">
                                    <h4 class="white heading content">Execelnte lugar para buscar el sitio ideal !!</h4>
                                    <h5 class="white heading light author">Pablo Angel</h5>
                                </div>
                                <div class="item">
                                    <h4 class="white heading content">vengo de Italia a descanzar aqui :D</h4>
                                    <h5 class="white heading light author">Isaias Gallardo </h5>
                                </div>
                                <div class="item">
                                    <h4 class="white heading content">Me gustan los gatitos </h4>
                                    <h5 class="white heading light author">Axel Martinez</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="services" class="section section-padded">
            <div class="container">
                <div class="row text-center title">
                    <h2>Tu Elijes!</h2>
                    <h4 class="light muted">Tienes multiples opciones para escoger el lugar ideal para tu descanzo o el evento de tus sueños</h4>
                </div>
                <div class="row services">
                    <div class="col-md-4">
                        <div class="service">
                            <div class="icon-holder">
                                <img src="folder/img/icons/hotel-logo.png" alt="" class="icon">
                            </div>
                            <h4 class="heading">Hotel y hostales</h4>
                            <p class="description">Distintas opciones para el descanzo soñado, variedad de precios y todo en un lugar.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="service">
                            <div class="icon-holder">
                                <img src="folder/img/icons/copa-hotel.png" alt="" class="icon">
                            </div>
                            <h4 class="heading">Centros de Eventos </h4>
                            <p class="description">Contamos con varias empresas publicadas las cuales ofrecen servicios de calidad y lugares para que esa fiesta o matrimonio sea inolvidable.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="service">
                            <div class="icon-holder">
                                <img src="folder/img/icons/weight-blue.png" alt="" class="icon">
                            </div>
                            <h4 class="heading">Todo En un solo lugar</h4>
                            <p class="description">Aquí encontraras todo, distintas opciones y al alcance de todos. en un solo lugar :D</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cut cut-bottom"></div>
        </section>
        <section id="team" class="section gray-bg">
            <div class="container">
                <div class="row title text-center">
                    <h2 class="margin-top">Lo mas visto!</h2>
                    <h4 class="light muted">Lo que nuestros clientes mas visitan </h4>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="team text-center">
                            <div class="cover" style="background:url('folder/img/team/hotel-cascada.jpg'); background-size:cover;">
                                <div class="overlay text-center">
                                    <h3 class="white">$25.000</h3>
                                    <h5 class="light light-white">La Noche</h5>
                                </div>
                            </div>
                            <img src="folder/img/team/hotel-casa-bosque.jpg" alt="Team Image" class="avatar">
                            <div class="title">
                                <h4>Hotel Cascada</h4>
                                <h5 class="muted regular">Camino al Volcan KM-33</h5>
                            </div>
                            <button data-toggle="modal" data-target="#modal1" class="btn btn-blue-fill">Registrate</button>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="team text-center">
                            <div class="cover" style="background:url('folder/img/team/casa-bosque.jpg'); background-size:cover;">
                                <div class="overlay text-center">
                                    <h3 class="white">Cotize aquí</h3>
                                    <h5 class="light light-white">Matrimonios-Bautizos</h5>
                                </div>
                            </div>
                            <img src="folder/img/team/casa-bosque-perfil.jpg" alt="Team Image" class="avatar">
                            <div class="title">
                                <h4>Casa Bosque</h4>
                                <h5 class="muted regular">Camino al volcan KM-22</h5>
                            </div>
                            <a href="#" data-toggle="modal" data-target="#modal1" class="btn btn-blue-fill ripple">Registrate</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="team text-center">
                            <div class="cover" style="background:url('folder/img/team/cascada-animas.jpg'); background-size:cover;">
                                <div class="overlay text-center">
                                    <h3 class="white">$35.000</h3>
                                    <h5 class="light light-white">La noche</h5>
                                </div>
                            </div>
                            <img src="folder/img/team/cascada-home.jpg" alt="Team Image" class="avatar">
                            <div class="title">
                                <h4>Cascada de las Animas</h4>
                                <h5 class="muted regular">Casilla 57, San Alfonso </h5>
                            </div>
                            <a href="#" data-toggle="modal" data-target="#modal1" class="btn btn-blue-fill ripple">Registrate</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="pricing" class="section">
            <div class="container">
                <div class="row title text-center">
                    <h2 class="margin-top white">Prueba con el Yoga</h2>
                    <h4 class="light white">Tenemos centros de eventos los cuales imparten clases</h4>
                </div>
                <div class="row no-margin">
                    <div class="col-md-7 no-padding col-md-offset-5 pricings text-center">
                        <div class="pricing">
                            <div class="box-main active" data-img="folder/img/pricing1.jpg">
                                <h4 class="white">Yoga y Pilates</h4>
                                <!--<h4 class="white regular light">$850.00 <span class="small-font">/ year</span></h4>-->
                                <a href="#" data-toggle="modal" data-target="#modal1" class="btn btn-white-fill">Inscribete aca =)</a>
                                <i class="info-icon icon_question"></i>
                            </div>
                            <div class="box-second active">
                                <ul class="white-list text-left">
                                    <li>Clases personalizadas</li>
                                    <li>Clases grupales</li>
                                    <li>Free tools &amp; props</li>
                                    <li>Free locker</li>
                                    <li>Free before / after shower</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <section class="section section-padded blue-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="owl-twitter owl-carousel">
                            <div class="item text-center">
                                <i class="icon fa fa-twitter"></i>
                                <h4 class="white light">Descanza y disfruta de la naturaleza en tan solo pocos kilometros de Santiago.</h4>
                                <h4 class="light-white light">#Descanzo #Fiesta:D #SanJoseMaipo</h4>
                            </div>
                            <div class="item text-center">
                                <i class="icon fa fa-twitter"></i>
                                <h4 class="white light">vacio</h4>
                                <h4 class="light-white light">#vacio #vacio #vacio</h4>
                            </div>
                            <div class="item text-center">
                                <i class="icon fa fa-twitter"></i>
                                <h4 class="white light">vacio vacio</h4>
                                <h4 class="light-white light">#vacio #vacio #vacio</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- popup de Registrate -->
        <div class="modal fade" id="modalRegistrate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content modal-popup">
                    <a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
                    <h3 class="white">Registrate con Nosotros</h3>
                    <form name="forminitRegist" action="/trabajoHotelyCentro/index.html" method="POST" class="popup-form">
                        <input type="text" class="form-control form-white" placeholder="Nombre" required="">
                        <input type="text" class="form-control form-white" placeholder="Correo" required="">
                        <input type="text" class="form-control form-white" placeholder="Numero de telefono" required="">
                        <div class="checkbox-holder text-left">
                            <div class="checkbox">
                                <input type="checkbox" value="None" id="squaredOne" name="check" />
                                <label for="squaredOne"><span>Aceptas los <strong>Terminos  &amp; Condiciones</strong></span></label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-submit" value="initRegistro" name="iniciarSession">Registrate</button>
                    </form>
                </div>
            </div>
        </div>

        <!-- popup de Ingreso Cliente -->
        <div class="modal fade" id="modalCliente" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content modal-popup">
                    <h3 class="white">Ingrese sus Datos</h3>
                    <a href="#" class="close close-link icon_close_alt2"  data-dismiss="modal"></a>
                    <form name="forminitSessionClient" action="/trabajoHotelyCentro/index.html" method="POST" class="popup-form">
                        <input name="username" type="text" class="form-control form-white" required="" placeholder="Nombre de Usuario o correo">
                        <input name="password" type="password" class="form-control form-white" required="" placeholder="Contraseña">
                        <button type="submit" class="btn btn-submit" value="iniCliente" name="iniciarSession">Entrar</button>
                        <button type="button" class="btn btn-info" data-dismiss="modal">Cancelar</button>
                    </form>
                </div>
            </div>
        </div>

        <!-- popup de Administrador -->
        <div class="modal fade" id="modalAdministrador" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content modal-popup">
                    <a href="#" class="close close-link icon_close_alt2"  data-dismiss="modal"></a>

                    <h3 class="white">Bienvenido Administrador</h3>
                    <form name="forminitSessionAdmin" action="/trabajoHotelyCentro/index.html" method="POST" class="popup-form">
                        <input name="correoAdmin" type="text" class="form-control form-white" placeholder="Correo" required="">
                        <input name="contraseAdmin" type="password" class="form-control form-white" placeholder="Password" required="">
                        <button type="submit" class="btn btn-submit" value="iniAdministrador" name="iniciarSession">Entrar</button>
                    </form>
                </div>
            </div>
        </div>


        <!-- PopUp ERROR -->
        <div id="errorPopup" class="modal">
            <div class="modal-dialog">
                <div class="modal-content modal-popup">
                    <a href="#" class="close close-link icon_close_alt2"  data-dismiss="modal"></a>
                    <div id="bodyError" class="modal-body">
                        <p></p>
                    </div>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>



        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 text-center-mobile">
                        <h3 class="white">Reserva aquí y comienza tu descanzo</h3>
                        <h5 class="light regular light-white">tenemos toda la información que necesitas</h5>
                        <a href="#" class="btn btn-blue ripple trial-button">REGISTRATE YA !</a>
                    </div>
                    <div class="col-sm-6 text-center-mobile">
                    </div>
                    <div class="row bottom-footer text-center-mobile">
                        <div class="col-sm-8">
                            <p>&copy; 2015 Todos los derechos reservados. Desarrollado por <a href="https://www.facebook.com/billyqlo">Byllis</a> y el <a href="https://www.facebook.com/cristopher.a.salgado?fref=ts">Huaso qlao</a></p>
                        </div>
                        <div class="col-sm-4 text-right text-center-mobile">
                            <ul class="social-footer">
                                <li><a href="http://www.facebook.com/billyqlao"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="http://www.twitter.com/Pangel20"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="http://www.instagram.com/elculiaocharcha"><i class="fa fa-instagram"></i></a></li>

                            </ul>
                        </div>
                    </div>
                </div>
        </footer>
        <!-- Holder for mobile navigation -->
        <div class="mobile-nav">
            <ul>
                <a href="#" class="close-link"><i class="arrow_up"></i></a>
        </div>

        <!-- Scripts -->
        <script src="folder/js/jquery-1.11.1.min.js"></script>
        <script src="folder/js/owl.carousel.min.js"></script>
        <script src="folder/js/bootstrap.min.js"></script>
        <script src="folder/js/wow.min.js"></script>
        <script src="folder/js/typewriter.js"></script>
        <script src="folder/js/jquery.onepagenav.js"></script>
        <script src="folder/js/main.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                function alignModal() {
                    var modalDialog = $(this).find(".modal-dialog");
                    // Applying the top margin on modal dialog to align it vertically center
                    modalDialog.css("margin-top", Math.max(0, ($(window).height() - modalDialog.height()) / 2));
                }
                // Align modal when it is displayed
                $(".modal").on("shown.bs.modal", alignModal);

                // Align modal when user resize the window
                $(window).on("resize", function () {
                    $(".modal:visible").each(alignModal);
                });
                nobackbutton();
            <c:if test="${not empty errorMensaje}">
                $('#errorPopup').modal('show');
                $("#bodyError").find('p').html("<c:out value="${errorMensaje}"/>");
                <c:set var="errorMensaje"  value="${Null}"/>
            </c:if>
            });

            $("body").keydown(function (e)
            {
                if (e.which == 116 || e.which == 17 && e.which == 116) {
                    alert("unload event detected!");
                }
            });

            function nobackbutton() {
                window.location.hash = "no-back-button";
                window.location.hash = "Again-No-back-button" //chrome
                window.onhashchange = function () {
                    window.location.hash = "no-back-button";
                }
            }



        </script>
    </body>
</html>
