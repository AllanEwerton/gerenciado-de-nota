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

	AlunoInterfaces iAluno = new AlunoDao();
	DisciplinaInterfaces iDisciplina = new DisciplinaDao();

	switch(op){
	//ALUNO =====================================================
		//Inserir aluno
		case 1:{
			
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String status = request.getParameter("status_aluno");
	
		Aluno aluno = new Aluno(nome, email, status);
		out.println(aluno);
		
		iAluno.inserir(aluno);
		out.println(aluno);
		
		response.sendRedirect("formulario-aluno.jsp");  
			break;
		}
		
		//Consultar aluno
		case 2:{break;}
				
		//Editar aluno
		case 3:{break;}
	
		//excluir aluno
		case 4:{break;}
		
		//Listar aluno
		case 5:{break;}
	
	
	
	//DISCIPLINA =====================================================
		//Inserir disciplina
		case 6:{
			
			String nome = request.getParameter("nome");
		
			Disciplina disciplina = new Disciplina(nome);
			out.println(disciplina);
			iDisciplina.inserir(disciplina);
			out.println(disciplina);
		
		response.sendRedirect("formulario-disciplina.jsp");  
			break;
		}
		
		//Consultar disciplina
		case 7:{break;}
						
		//Editar disciplina
		case 8:{break;}
			
		//Excluir disciplina
		case 9:{break;}
				
		//Listar disciplina
		case 10:{break;}
	
	
		
	//NOTAS =====================================================
		//Inserir notas
		case 11:{
// int id_nota, double nota1, double nota2, double nota3, double prova, Disciplina disciplina,Aluno aluno)
			
			
			Double nota1 = Double.parseDouble(request.getParameter("nota1").replace(",", "."));
			Double nota2 = Double.parseDouble(request.getParameter("nota2").replace(",", "."));
			Double nota3 = Double.parseDouble(request.getParameter("nota3").replace(",", "."));
			Double prova = Double.parseDouble(request.getParameter("prova").replace(",", "."));
			String nome = request.getParameter("nome");
			String disciplina1 = request.getParameter("disciplina");
			
			
			//O ERRO ESTÁ NESSA PARTE: NA HORA DO CADASTRO DAS NOTAS SÓ APARECE USUÁRIO 1)
			Aluno aluno = iAluno.consultar(1);	
			Disciplina disciplina = iDisciplina.consultar(1);
			

			NotaInterfaces iNota = new NotaDao();
			Nota nota = new Nota(nota1, nota2, nota3, prova, disciplina, aluno);
			iNota.inserir(nota);
		
		    response.sendRedirect("formulario-notas.jsp");  
			break;
		}
		
		//Consultar nota
		case 12:{break;}
						
		//Editar nota
		case 13:{break;}
			
		//Excluir nota
		case 44:{break;}
				
		//Listar nota
		case 15:{break;}
	
		
		
	//Padrão =====================================================
	default:{
		
	}
	
	}
	
%>
