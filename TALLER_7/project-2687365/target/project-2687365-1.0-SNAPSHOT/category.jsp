<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <!-- METADATA -->
    <!-- charset para caracteres especiales -->
    <meta charset="utf-8">
    <!-- author -->
    <meta name ="author" content="Daniel Avila">
    <!-- description -->
    <meta name ="description" content="dfsfsfdsfs">
    <!-- keywords -->
    <meta name ="keywords" content="resgistro de usuario, formilario de registro, crear cuenta, registro en linea">
    <!-- minimum responsive viewport -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- TITLE -->
    <title>FORMULARIO CATEGORIA</title>
    <!-- FAVICON -->
    <LINK rel="icon" type="image/x-icon" href="img/logo.png">
    <!-- CSS -->
    <!-- bootstrap css / icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
          crossorigin="anonymous">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <!-- custom css -->
    <link rel="stylesheet" href="css/signin.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body class="text-center">
<!-- login form -->
<main class="form-signin w-100 m-auto" class="text-center">
    <form action="registerCategory" method="post">
        <img class="mb-4" src="img/logo.png" alt="T&W" width="100">
        <h4 class="text-secondary">T&W</h4>
        <h1 class="h5 mb-3 fw-normal text-secondary">Registro de Categoría</h1>
        <div class="form-floating">
            <input type="text" name="category_name" class="form-control" id="floatingName" placeholder="Ingrese el Nombre de la Categoria" required
                   pattern="{60}">
            <label for="floatingName">Nombre:</label>
        </div>
            <button class="w-100 btn btn-lg btn-principal" type="submit">Registrar Categoria</button>
            <a href="index.jsp" class="w-100 btn btn-lg btn-secundario btn">Inicio</a>
            <p class="mt-3 mb-3 text-muted">Todos los Derechos Reservados T&W
                © <%=displayDate()%></p>

        </div>
    </form>
</main>
<! - - Bootstrap script-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJL+0I4"
        crossorigin=anonymous"></script>
<%! public String displayDate(){
    SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
    Date date = Calendar.getInstance().getTime();
    return  dateFormat.format(date);
}%>
</body>
</html>