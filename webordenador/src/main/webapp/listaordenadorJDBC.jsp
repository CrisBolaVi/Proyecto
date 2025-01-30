<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="es.cie.webordenador.Ordenador"%>
<%@ page import="es.cie.repositories.OrdenadorRepository"%>
<%@ page import="es.cie.repositories.jdbc.OrdenadorRepositoryJDBC"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>

	<h1>Datos</h1>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

<%List<Ordenador> lista = (List<Ordenador>)request.getAttribute("lista");%>

	<div class="container">
			<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th><a href="?orden=marca"> Marca </a></th>
					<th><a href="?orden=precio"> Precio </a></th>
				</tr>
			</thead>
			<%
			for (Ordenador o : lista) {
			%>

			<tr>
				
				<td><%=o.getMarca()%></td>
				<td><%=o.getPrecio()%></td>
				
			</tr>
			<%
			}
			%>
		</table>
		<button type="button" class="btn btn-warning">
			<a href="?comando=formularioordenador"> Insertar Ordenador</a>
		</button>
</body>
</html>