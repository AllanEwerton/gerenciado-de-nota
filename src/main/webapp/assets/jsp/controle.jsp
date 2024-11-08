<!--  ALUNO  -->
<%@page import="com.nota.modal.Aluno"%>
<%@page import="com.nota.dao.AlunoDao"%>
<%@page import="com.nota.interfaces.AlunoInterfaces"%>

<!-- DISCIPLINA -->
<%@page import="com.nota.modal.Disciplina"%>
<%@page import="com.nota.dao.DisciplinaDao"%>
<%@page import="com.nota.interfaces.DisciplinaInterfaces"%>

<!--  NOTAS -->
<%@page import="com.nota.modal.Nota"%>
<%@page import="com.nota.dao.NotaDao"%>
<%@page import="com.nota.interfaces.NotaInterfaces"%>

<%
	//int id_aluno, String nome, String email, String status_aluno
	
	int op = Integer.parseInt(request.getParameter("op"));


	switch(op){
	//ALUNO =====================================================
		//Inserir aluno
		case 1:{
			
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String status = request.getParameter("status_aluno");
	
		Aluno aluno = new Aluno(nome, email, status);
		out.println(aluno);
		AlunoInterfaces iAluno = new AlunoDao();
		iAluno.inserir(aluno);
		out.println(aluno);
		
		response.sendRedirect("formulario-aluno.jsp");  
			break;
		}
	
		//Editar aluno
		case 2:{break;}
		
		//Excluir aluno
		case 3:{break;}
	
	
	
	//DISCIPLINA =====================================================
		//Inserir disciplina
		case 4:{
			
			String nome = request.getParameter("nome");
		
			Disciplina disciplina = new Disciplina(nome);
			out.println(disciplina);
			DisciplinaInterfaces iDisciplina = new DisciplinaDao();
			iDisciplina.inserir(disciplina);
			out.println(disciplina);
		
		response.sendRedirect("formulario-disciplina.jsp");  
			break;
		}
		
		//Editar disciplina
		case 5:{break;}
		
		//Excluir disciplina
		case 6:{break;}
	
	
		
	//NOTAS =====================================================
		//Inserir notas
		case 7:{
// int id_nota, double nota1, double nota2, double nota3, double prova, Disciplina disciplina,Aluno aluno)
			String nome = request.getParameter("nome");
			String disciplina = request.getParameter("disciplina");
			String nota1 = request.getParameter("nota1");
			String nota2 = request.getParameter("nota2");
			String nota3 = request.getParameter("nota3");
			String prova = request.getParameter("prova");
		
			Nota nota = new Nota(nome, disciplina, nota1, nota2, nota3, prova);
			out.println(nota);
			NotaInterfaces iNota = new NotaDao();
			iNota.inserir(nota);
			out.println(nota);
		
		response.sendRedirect("formulario-notas.jsp");  
			break;
		}
		
		//Editar notas
		case 8:{break;}
		
		//Excluir notas
		case 9:{break;}
	
		
		
	//Padrão =====================================================
	default:{
		
	}
	
	}
	
%>
