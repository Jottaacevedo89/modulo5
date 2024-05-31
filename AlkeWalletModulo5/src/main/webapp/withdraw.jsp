<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Retiro</title>
        <link rel="stylesheet" type="text/css" href="css/styles.css">
    
</head>
<body>
    <h1>Retiro</h1>
    <form action="WalletServlet" method="get">
        <input type="hidden" name="action" value="withdraw">
        Monto: <input type="text" name="amount">
        <input type="submit" value="Retirar">
    </form>
    <a href="index.jsp">Volver</a>
</body>
</html>
