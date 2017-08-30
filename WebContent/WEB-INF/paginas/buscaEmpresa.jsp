<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

</head>
<body>
    Resultado da busca:
    <ul>
        <c:forEach var="empresa" items="${empresas}">
            <li>${empresa.id}: ${empresa.nome}</li>
        </c:forEach>
    </ul>
    <br />
    <h3><a href="/gerenciador">Voltar para o início do sistema</a></h3>
</body>
</html>