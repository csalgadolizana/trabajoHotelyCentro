<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <link href="folder/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <p>Hello! This is the default welcome page for a Spring Web MVC project.</p>
        <p><i>To display a different welcome page for this project, modify</i>
            <tt>index.jsp</tt> <i>, or create your own welcome page then change
                the redirection in</i> <tt>redirect.jsp</tt> <i>to point to the new
                welcome page and also update the welcome-file setting in</i>
            <tt>web.xml</tt>.</p>
        <p>Greetings, it is now <c:out value="${now}"/></p>
        <c:set var="usuario" value="${us}" ></c:set>
        <p>username : <c:out value="${usuario.username}" /> </p>
        <p>password : <c:out value="${usuario.password}" /> </p>
        <p>idUsuario : <c:out value="${usuario.idUsuario}" /> </p>
        <p>estado : <c:out value="${usuario.estado}" /> </p>

        <form name="forminitSession" action="/trabajoHotelyCentro/index.html" method="POST">
            <input type="text" name="username" value="" />
            <input type="password" name="password" value="" />
            <input class="bg-success" type="submit" value="iniciar session" name="iniciarsession" />
        </form>
        <p><c:out value="${men}" /> </p>

        <script src="folder/js/jquery-1.11.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="folder/js/bootstrap.min.js"></script>
    </body>
</html>
