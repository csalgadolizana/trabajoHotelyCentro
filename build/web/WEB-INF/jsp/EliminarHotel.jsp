<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <!--<meta name="viewport" content="width=device-width, initial-scale=1">--->
        <title>Mantenedor</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
        <link href="css/sticky-footer-navbar.css" rel="stylesheet">
        <link rel="apple-touch-icon" sizes="57x57" href="img/favicons/apple-touch-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="img/favicons/apple-touch-icon-60x60.png">
        <link rel="icon" type="image/png" href="img/favicons/favicon-32x32.png" sizes="32x32">
        <link rel="icon" type="image/png" href="img/favicons/favicon-16x16.png" sizes="16x16">
        <link rel="manifest" href="img/favicons/manifest.json">
        <link rel="shortcut icon" href="img/favicons/favicon.ico">
        <meta name="msapplication-TileColor" content="#00a8ff">
        <meta name="msapplication-config" content="img/favicons/browserconfig.xml">
        <meta name="theme-color" content="#ffffff">
        <!-- Normalize -->
        <link rel="stylesheet" type="text/css" href="css/normalize.css">
        <!-- Bootstrap -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <!-- Owl -->
        <link rel="stylesheet" type="text/css" href="css/owl.css">
        <!-- Animate.css -->
        <link rel="stylesheet" type="text/css" href="css/animate.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.1.0/css/font-awesome.min.css">
        <!-- Elegant Icons -->
        <link rel="stylesheet" type="text/css" href="fonts/eleganticons/et-icons.css">
        <!-- Main style -->
        <link rel="stylesheet" type="text/css" href="css/cardio.css">
        <script src="js/ie-emulation-modes-warning.js"></script>
        <style>
            .contendorpage{
                border: 1px solid #000;
            }
        </style>
    </head>
    <body>


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
                    <a class="navbar-brand" href="#"><img src="img/mountains.png" data-active-url="img/mountains.png" alt=""></a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right main-nav ">
                        <li><a href="index.jsp">Home</a></li>                        
                        <li><a href="#team">Lo mas!</a></li>
                        <li><a href="#pricing">Planes</a></li>
                        <li><a href="#eliminar">Eliminar</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#modal1" class="btn btn-blue">Registrate</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#modalAdministrador" class="btn btn-blue">Administrador</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>


        <style>
            .bajarlawea{
                margin-top: 128px;
                margin-bottom: 50px;

            }
            
            .anchoAlto{
                width: 100px;
                height: 100px;
                
                margin-left: 515px;
                margin-right: 520px;
            }
        </style>
        <header id="intro">
            <div >
                <div class="table table-bordered ">
                    <div class="header-text ">
                        <div class="row ">
                            <div class="col-md-12 text-center container bajarlawea">
                                <h3 class="light white">Ingrese ID del hotel a eliminar</h3>

                                <table class="table table-bordered table-hover anchoAlto">
                                    <thead>
                                        <tr>
                                            <th>N°</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>Email</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>FOTO HOTEL</td>
                                            <td>NOMBRE, DESCRIPCION</td>
                                            <td>BOTON</td>
                                            <td><button type="button" class="btn btn-danger btnEliminar">Eliminar Hotel</button></td>
                                        </tr>
                                        <tr>
                                             <td>FOTO HOTEL</td>
                                            <td>NOMBRE, DESCRIPCION</td>
                                            <td><button type="button" class="btn btn-primary btn-sm">Eliminar Hotel</button></td>
                                            <td><button type="button" class="btn btn-danger">Eliminar Hotel</button></td>
                                        </tr>
                                        <tr>
                                            <td>BOTON</td>
                                            <td>John</td>
                                            <td>Rambo</td>
                                            <td>johnrambo@mail.com</td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <%@include file="Footer.jsp"%>