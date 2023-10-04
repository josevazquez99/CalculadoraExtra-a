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



<%


String numero = request.getParameter("numero") != null ? request.getParameter("numero") : "";
String operador = request.getParameter("operador") != null ? request.getParameter("operador") : "";
Calculadora calculadora = new Calculadora();

if(request.getParameter("borrar") != null) {
    calculadora.limpiar();
} else if(request.getParameter("enviar") != null) {
    calculadora.introducirCalculos(numero, operador);
} else if(request.getParameter("resolver") != null) {
    calculadora.introducirCalculos(numero, operador);
    double resultado = calculadora.resolver();
    out.println("Resultado: " + resultado);
}
%>

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
 <input type="text" class="form-control" id="resultado" name="resultado"aria-describedby="basic-addon3">
 </div>
 <br>
 <div class="input-group">
 <label class="input-group-addon"  id="numero">Numero</label>
 <input type="number" name="numero" class="form-control" id="num">
 </div>
 <div class="btn-group btn-group-justified" role="group" aria-label="...">
  <div class="btn-group" role="group">
	  
	<br>

<select name="operador" class="btn btn-success" id="operador">
  <option value="+">+</option>
  <option value="-">-</option>

</select>

 </div>
 </div>
<br>

 <button type="submit" class="btn btn-primary btn-lg btn-block" id="borrar" value="borrar">Borrar</button>
 <button type="submit" class="btn btn-primary btn-lg btn-block" id="enviar" value="enviar">Enviar</button>
 <button type="submit" class="btn btn-primary btn-lg btn-block" id="resolver" value="resolver">Resolver</button>

 </div>
 </div>
</div>
</div>
</form>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 
</body>
</html>