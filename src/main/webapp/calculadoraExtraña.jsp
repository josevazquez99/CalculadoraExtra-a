<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="model.Calculadora" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculadora</title>
</head>
<body>
<h1>Calculadora</h1>



<%


String numero = request.getParameter("numero") != null ? request.getParameter("numero") : "";
String operador = request.getParameter("operador") != null ? request.getParameter("operador") : "";
Calculadora calculadora = new Calculadora();

if(request.getParameter("Borrar") != null) {
    calculadora.limpiar();
} else if(request.getParameter("enviar") != null) {
    calculadora.introducirCalculos(numero, operador);
} else if(request.getParameter("resolver") != null) {
    calculadora.introducirCalculos(numero, operador);
    double resultado = calculadora.resolver();
    out.println("Resultado: " + resultado);
}
%>

	

</body>
</html>