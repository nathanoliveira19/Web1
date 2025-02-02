<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Lista de Profissionais</title>
</head>
<body>
	<%
		String contextPath = request.getContextPath().replace("/", "");
	%>

	<div align="center">
		<table border="1">
			<caption>Lista de Profissionais</caption>
			<tr>
				<th>ID</th>
				<th>Email</th>
				<th>Primeiro Nome</th>
				<th>Sobrenome</th>
				<th>Especialidade</th>
        <th>Qualificações</th>
        <th>Excluir</th>
        <th>Editar</th>
			</tr>
			<c:forEach var="profissional" items="${requestScope.listaProfissionais}">
				<tr>
					<td>${profissional.getUsuario().id}</td>
          <td>${profissional.getUsuario().email}</td>
          <td>${profissional.getUsuario().primeiroNome}</td>
          <td>${profissional.getUsuario().sobrenome}</td>
          <td>${profissional.especialidade}</td>
          <td>${profissional.qualificacoes}</td>
          <td>Excluir</td>
          <td>Editar</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
