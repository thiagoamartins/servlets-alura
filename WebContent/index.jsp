<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>
	<h2>Bem vindo ao nosso gerenciador de empresas!</h2>
	
<!-- 	Mostra nome de usuário logado e botão logout caso seja usuário logado -->
	<c:if test="${usuarioLogado!=null}">
	<form action="executa" method="post">
	<input type="hidden" name="tarefa" value="Logout">
    Você está logado como ${usuarioLogado.email} <input type="submit" value="Deslogar" />
    </form>
	</c:if>
	
<br />

	<form action="executa" method="post">
	<input type="hidden" name="tarefa"	value="NovaEmpresa">
			Nome: <input type="text" name="nome" />
		 <input type="submit" value="Cadastrar" />
	</form>
	
<br />
	
<!-- 	Mostra campos para login caso usuário seja deslogado -->
	<c:if test="${usuarioLogado==null}">
	<form action="login" method="post">
	    Email: <input type="text" name="email" />
	    Senha: <input type="password" name="senha" />
	    <input type="submit" value="Login" />
	</form>
	</c:if>
	
	<br />
	
	
	
</body>
</html>