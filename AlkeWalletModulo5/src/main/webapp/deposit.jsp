<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Depósito</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <h1>Depósito</h1>
    <!-- Encabezado principal de la página -->

    <!-- Formulario para realizar un depósito -->
    <form action="WalletServlet" method="get">
        <input type="hidden" name="action" value="deposit">
        <!-- Campo oculto para indicar que la acción a realizar es un depósito -->
        
        Monto: <input type="text" name="amount">
        <!-- Campo de texto para ingresar el monto a depositar -->

        <input type="submit" value="Depositar">
        <!-- Botón para enviar el formulario -->
    </form>

    <a href="index.jsp">Volver</a>
    <!-- Enlace para volver a la página principal -->
</body>
</html>
