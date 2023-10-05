<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="model.Calculadora" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

 
</head>
<body>
<h1>Calculadora</h1>

// Creamos el StringBuilder para mostrar los datos
<%! StringBuilder mostrar = new StringBuilder(""); %>
<%


String numero = request.getParameter("numeroActual") != null ? request.getParameter("numeroActual") : "";
String operador = request.getParameter("operadorActual") != null ? request.getParameter("operadorActual") : "";
Calculadora calculadora = new Calculadora();

if(request.getParameter("borrar") != null) {
    calculadora.limpiar(mostrar);
} else if(request.getParameter("enviar") != null) {
    calculadora.introducirCalculos(numero, operador, mostrar);
} else if(request.getParameter("resolver") != null) {
    calculadora.introducirCalculos(numero, operador,mostrar);
    double resultado = calculadora.resolver(mostrar);
    out.println("Resultado: " + resultado);
}
%>
// introducimos el html proporcionado por una plantilla y cambiamos los datos para poder llamar bien a los elementos en los métodos
<form action="index.jsp" method="get">
<div class="row">
</div>
<div class="row">
<div class="col-md-4">
</div>
<div class="col-md-4">
<div class="panel panel-primary">
 <div class="panel-heading">Mi Calculadora<span class="label label-danger"></span>
 </div>
 <div class="panel-body">
 <div class="input-group">
 <label class="input-group-addon" id="opr">Resultado</label>

 <input type="text" class="form-control" id="resultado" name="resultado"value="<%out.print(mostrar);
	 %>"aria-describedby="basic-addon3">
 </div>
 <br>
 <div class="input-group">
 <label class="input-group-addon"  id="numeroActual">Numero</label>
 <input type="number" name="numeroActual" class="form-control" id="numeroActual">
 </div>
 <div class="btn-group btn-group-justified" role="group" aria-label="...">
  <div class="btn-group" role="group">
	  
	<br>

<select name="operadorActual" class="btn btn-success" id="operadorActual">
  <option></option>
  <option value="+">+</option>
  <option value="-">-</option>
  

</select>

 </div>
 </div>
<br>

 <button type="submit" class="btn btn-primary btn-lg btn-block" id="borrar" name="borrar" value="borrar">Borrar</button>
 <button type="submit" class="btn btn-primary btn-lg btn-block" id="enviar" name="enviar" value="enviar">Enviar</button>
 <button type="submit" class="btn btn-primary btn-lg btn-block" id="resolver" name="resolver" value="resolver">Resolver</button>

 </div>
 </div>
</div>
</div>
</form>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 
</body>
</html>
