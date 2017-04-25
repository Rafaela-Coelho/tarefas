<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
<script type="text/javascript" src="js/jquery.mask.js"></script>
<script type="text/javascript" src="js/Gruntfile.js"></script>
<script type="text/javascript" src="js/jquery.mask.min.js"></script>
<link href="css/formulario.css" rel="stylesheet"/>
<link href="css/msc-style.css" rel="stylesheet">

</head>
<body>
<c:import url = "Menu.jsp"/>
<div id="contact-form">


		<div>
			
		</div>


		<form action="NumConjuntoServlet" method="post">
			<h1>O número do conjunto é ${conjunto.id_conjunto}</h1>
		</form>
		</div>
	
		
			
		</body>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/msc-script.js"></script>

</html>