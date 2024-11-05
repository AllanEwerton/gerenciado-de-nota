<%@page import="com.nota.interfaces.AlunoInterfaces"%>
<%@page import="com.nota.modal.Aluno"%>
<%@page import="com.nota.dao.AlunoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	//int id_aluno, String nome, String email, String status_aluno
	
	
	String nome = request.getParameter("nome");
	String email = request.getParameter("email");
	String status = request.getParameter("status_aluno");

	
	
	Aluno aluno = new Aluno(nome,email,status);
	
	
	AlunoInterfaces iAluno = new AlunoDao();
	iAluno.inserir(aluno);
	out.println(aluno);
	
	
	response.sendRedirect("formulario-aluno.jsp");  
%>

</body>
</html>