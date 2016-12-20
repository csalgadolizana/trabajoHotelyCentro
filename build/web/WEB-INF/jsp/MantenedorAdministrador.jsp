<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="folder/img/favicons/favicon.ico">

        <title>Administrador</title>

        <!-- Bootstrap core CSS -->
        <link href="folder/css/bootstrap.min.css" rel="stylesheet">
        <link href="folder/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
        <link href="folder/css/navbar-fixed-top.css" rel="stylesheet">
        <style>
            .bordeCont{
                /*border: 5px solid red;*/
                background-color: #fccaca;
                -webkit-border-radius: 1px;
                -moz-border-radius: 1px; /* si quieres todas las esquinas iguales */
                border-radius: 22px;
            }
        </style>
    </head>

    <body>

        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Menu </span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Menu Administrador</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#" data-toggle="modal" data-target="#modalNewHabitacion" class="btn btn-info">Crear nueva Habitacion</a></li>
                        <ul class="nav navbar-nav navbar-right">

                            <li class=" bg-warning"><a href="#" class="warning">${sessionScope.usuario.username} <span class="sr-only"></span></a></li>
                            <li class="entrojuera dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="index.html">Cerrar sesion</a></li>
                                </ul>
                            </li>
                        </ul>
                    </ul>
                </div>
            </div>
        </nav>

        <!--Catalogo-->

        <div class="container">
            <c:forEach   var="habitacion"  items="${listEmpresa}" varStatus="theCount" >
                <!--Elemnto-->
                <div class="container col-xs-6 col-md-4">
                    <div class="bordeCont">
                        <h3 class="text-center">${habitacion.numero}</h3>
                        <div class="">
                            <img class=" center-block" src="${habitacion.rutaImagen}" width="300" height="210" alt="${habitacion.numero}" />
                        </div>
                        <div class="text-center">
                            <p class="center-block"></p>
                            <a class="btn btn-lg btn-primary" href="#" role="button" data-toggle="modal" data-target="#modalEdit${habitacion.numero}">Ver Mas </a>
                            <a class="btn btn-lg btn-danger" href="#" role="button" data-toggle="modal" data-target="#modalDelete${habitacion.numero}">Borrar Habitacion<img class="" width="20" height="20" src="folder/img/icons/trash-icon.png" alt="Borrar" /></a>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="modalDelete${habitacion.numero}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Confirme la Eliminacion</h4>
                            </div>
                            <div class="modal-body">
                                <form action="/trabajoHotelyCentro/MantenedorAdministrador.html?Accion=eliminar&idHabitacion=${habitacion.numero}" enctype="multipart/form-data" method="POST" class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <p>Realmente desea Eliminar la Habitacion : <strong>${habitacion.numero}</strong></p>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-warning" value="btnEliminar">Eliminar</button>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar &times;</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="modalEdit${habitacion.numero}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close  btn-danger" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Modificacion de Habitacion</h4>
                            </div>
                            <div class="modal-body">
                                <form action="/trabajoHotelyCentro/MantenedorAdministrador.html?idHabitacion=${habitacion.numero}" enctype="multipart/form-data" method="POST" class="form-horizontal">
                                    <div class="form-group" hidden="true">
                                        <label class="col-sm-5 control-label" for="intputNumeroHabitacion">Numero de Habitacion</label>
                                        <div class="col-sm-5">
                                            <input class="form-control" placeholder="n°24" type="number" name="intputNumeroHabitacion" required="" value="${habitacion.numero}" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-5 control-label" for="intputMetrosCuadrados">Metros Habitacion</label>
                                        <div class="col-sm-5">
                                            <input class="form-control" placeholder="200 " type="number" name="intputMetrosCuadrados" required="" value="${habitacion.metrosCuadrados}" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-5 control-label" for="intputPrecioDia">Precio por Dia</label>
                                        <div class="col-sm-5">
                                            <input class="form-control" placeholder="200000" type="number" name="intputPrecioDia" required="" value="${habitacion.precioPorDia}" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-5 control-label" for="intputPrecioNoche">Precio por Noche</label>
                                        <div class="col-sm-5">
                                            <input class="form-control" placeholder="550000" type="number" name="intputPrecioNoche" required="" value="${habitacion.precioPorNoche}" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-5 control-label" for="intputCantPersonas">Cantidad Maxima de Personas</label>
                                        <div class="col-sm-5">
                                            <input class="form-control" placeholder="8" type="number" name="intputCantPersonas" required="" value="${habitacion.cantidadMaximaPersonas}" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-5 control-label" for="inputImagen">Foto Actual</label>
                                        <img class="col-sm-5" src="${habitacion.rutaImagen}" width="100" height="100" alt="${habitacion.numero}" />
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-5 control-label" for="inputImagen">Nueva Foto de Habitacion</label>
                                        <div class="col-sm-5">
                                            <input class="form-control" type="file" name="inputImagen" required="" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-7"></div>
                                        <div class="col-sm-3">
                                            <button type="submit" name="btnAction" class="btn btn-info" value="btnModificar">Cambiar Datos</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                            </div>
                        </div>

                    </div>
                </div>

            </c:forEach>


        </div>



        <!--PopUP -->
        <div class="modal fade" id="modalNewHabitacion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close  btn-danger" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Creacion de Nueva Habitacion</h4>
                    </div>
                    <div class="modal-body">
                        <form action="/trabajoHotelyCentro/MantenedorAdministrador.html" enctype="multipart/form-data" method="POST" class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-5 control-label" for="intputNumeroHabitacion">Numero de Habitacion</label>
                                <div class="col-sm-5">
                                    <input class="form-control" placeholder="n°24" type="number" name="intputNumeroHabitacion" required="" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-5 control-label" for="intputMetrosCuadrados">Metros Habitacion</label>
                                <div class="col-sm-5">
                                    <input class="form-control" placeholder="200 " type="number" name="intputMetrosCuadrados" required="" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-5 control-label" for="intputPrecioDia">Precio por Dia</label>
                                <div class="col-sm-5">
                                    <input class="form-control" placeholder="200000" type="number" name="intputPrecioDia" required="" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-5 control-label" for="intputPrecioNoche">Precio por Noche</label>
                                <div class="col-sm-5">
                                    <input class="form-control" placeholder="550000" type="number" name="intputPrecioNoche" required="" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-5 control-label" for="intputCantPersonas">Cantidad Maxima de Personas</label>
                                <div class="col-sm-5">
                                    <input class="form-control" placeholder="8" type="number" name="intputCantPersonas" required="" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-5 control-label" for="inputImagen">Foto de Habitacion</label>
                                <div class="col-sm-5">
                                    <input class="form-control" type="file" name="inputImagen" required="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-7"></div>
                                <div class="col-sm-3">
                                    <button type="submit" name="btnAction" class="btn btn-info" value="btnCrear">Crear Nueva Habitacion</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>

            </div>
        </div>
        <script src="folder/js/jquery-1.11.1.min.js"></script>
        <script src="folder/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                function alignModal() {
                    var modalDialog = $(this).find(".modal-dialog");
                    modalDialog.css("margin-top", Math.max(0, ($(window).height() - modalDialog.height()) / 2));
                }
                $(".modal").on("shown.bs.modal", alignModal);
                $(window).on("resize", function () {
                    $(".modal:visible").each(alignModal);
                });
                nobackbutton();

            <c:if test="${sessionScope.usuario == null}" >
                window.location = "index.html";
            </c:if>
            });
            function nobackbutton() {
                window.location.hash = "no-back-button";
                window.location.hash = "Again-No-back-button" //chrome
                window.onhashchange = function () {
                    window.location.hash = "no-back-button";
                }
            }

            $("body").keydown(function (e)
            {
                if (e.which == 116 || e.which == 17 && e.which == 116) {
                    alert("unload event detected!");
                }
            });

        </script>
    </body>
</html>
