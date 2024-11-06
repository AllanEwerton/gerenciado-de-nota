<%@page import="com.nota.modal.Aluno"%>
<%@page import="com.nota.dao.AlunoDao"%>
<%@page import="com.nota.interfaces.AlunoInterfaces"%>
<% 
	//int id_aluno, String nome, String email, String status_aluno
	
	int op = Integer.parseInt(request.getParameter("op"));



	AlunoInterfaces iAluno = new AlunoDao();
	

	switch(op){
	case 1:{
		
		String nome = request.getParameter("nome");
	String email = request.getParameter("email");
	String status = request.getParameter("status_aluno");

	
	
	Aluno aluno = new Aluno(nome, email, status);
	out.println(aluno);
	
	iAluno.inserir(aluno);
	out.println(aluno);
	
	
	response.sendRedirect("formulario-aluno.jsp");  
		
	}
	
	}
%>
