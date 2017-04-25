<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="css/normalize.css" />
<link rel="stylesheet" href="css/main.css" />
<script type="text/javascript" src="js/jquery.1.10.2.min.js"></script>
<script type="text/javascript" src="js/gnmenu.js"></script>
<script type="text/javascript" src="http://www.queness.com/js/bsa.js"></script>
<link href="css/formulario.css" rel="stylesheet">

</head>
<body>
<c:import url = "Menu.jsp"/>
<div id="contact-form">
<div>
	<h1>Consulte seu conjunto</h1>
	</div>
		<p id="failure">Ops! Conjunto não cadastrado</p>  
		<p id="success">Seu conjunto foi cadastrado com sucesso!</p>
	


	<form action="ConsultarServlet" method="post">
	<div>
	<label for="id">	
	<span class ="required">Digite o id do conjunto:</span><br>	
	<input type="number" name="idConjunto" id="idConjunto" value="" /> 
	<button name="acao" value="consultar" type="submit" onClick="cs.consultarConjunto(Integer.parseInt(id))">Consultar</button><br>
	</label>
	</div>

		<Span class ="required">Status:</span><br>
		<input disabled="disabled" type="radio" name="status" id="Ocupado" <c:if test="${conjunto.status == true}">checked</c:if>>  Ocupado  <br>
		<input disabled="disabled" type="radio" name="status" id="Desocupado"  <c:if test="${conjunto.status == false}">checked</c:if>>  Desocupado <br><br>
		<div>
		
		<p>Valor do aluguel:</p><br>
		<input type="number" value="${conjunto.valor}" name="valor" disabled="disabled">
		</div>
		<div>
		<label for="medida">
		<span class ="required">Tamanho do conjunto:</span><br>
		<input type="number" value="${conjunto.medida}" name="medida" disabled="disabled">
		</label>
		</div>
		<div>
		<label for="tempo">
		<span class ="required">Tempo de locação:</span><br>
		<input type="number" value="${conjunto.tempoLocacao}" name="tempoLocacao" disabled="disabled">
		</label>
		</div>
		<div>
		<label for="obs">
		<span class ="required">Observações:</span><br>
		<textarea disabled="disabled">${conjunto.observacao}</textarea>
		</label>
		</div>
		
		</form>
	</div>
		
			
		</body>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>



</html>