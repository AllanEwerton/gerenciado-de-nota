<!--  ALUNO  -->
<%@page import="java.sql.SQLException"%>
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
	NotaInterfaces iNota = new NotaDao();

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
			response.sendRedirect("formulario-aluno.jsp?exibirAlertAluno=" + aluno.getNome() +" adicionado(a) com sucesso!");
		
		}
		
		//Consultar aluno
		case 2:{break;}
				
		//Editar aluno
		case 3:{
			int idAluno = Integer.parseInt(request.getParameter("idAluno"));
			String nome = request.getParameter("nome");
			String email = request.getParameter("email");
			String status = request.getParameter("status_aluno");
		
			Aluno aluno = new Aluno(idAluno, nome, email, status);
			out.println(aluno);
			
			
			    iAluno.editar(aluno);
				response.sendRedirect("formulario-aluno.jsp?exibirAlertAluno=" + aluno.getNome() +" modificado(a) com sucesso!");
			
			break;
			}
	
		//excluir aluno
		case 4:{
			int idAluno = Integer.parseInt(request.getParameter("id"));
			Aluno aluno = iAluno.consultar(idAluno);
			iAluno.excluir(idAluno);
			 response.sendRedirect("formulario-aluno.jsp?exibirAlertAluno=" + aluno.getNome() +" excluido(a) com sucesso!");
			break;
			}
		
	
	//DISCIPLINA =====================================================
		//Inserir disciplina
		case 5:{
			
			String nome = request.getParameter("nome");
		
			Disciplina disciplina = new Disciplina(nome);
			out.println(disciplina);
			iDisciplina.inserir(disciplina);
			out.println(disciplina);
		
			response.sendRedirect("formulario-disciplina.jsp?exibirAlertDisciplina=" + disciplina.getNome() +" adicionada com sucesso!");
			break;
		}
		
		//Consultar disciplina
		case 6:{break;}
						
		//Editar disciplina
		case 7:{
			
			int idDisciplina = Integer.parseInt(request.getParameter("idDisciplina"));
			String nome = request.getParameter("nome");
			
			Disciplina disciplina = new Disciplina(idDisciplina, nome);
			    
			iDisciplina.editar(disciplina);
				response.sendRedirect("formulario-disciplina.jsp?exibirAlertDisciplina=" + disciplina.getNome() +" modificada com sucesso!");
			
			break;
			}
			
		//Excluir disciplina
		case 8:{
			
			int idDisciplina = Integer.parseInt(request.getParameter("id"));
			Disciplina disciplina =  iDisciplina.consultar(idDisciplina);
			iDisciplina.excluir(idDisciplina);
			
			 response.sendRedirect("formulario-disciplina.jsp?exibirAlertDisciplina=" + disciplina.getNome() +" excluida com sucesso!");

			break;
			}
				
		
	
	
		
	//NOTAS =====================================================
		//Inserir notas
		case 9:{
			int idAluno = Integer.parseInt(request.getParameter("idAluno"));
			int idDis = Integer.parseInt(request.getParameter("idDis"));

		    String nome = request.getParameter("nome");
			String disciplinaNome = request.getParameter("disciplina");
			Double nota1 = Double.parseDouble(request.getParameter("nota1").replace(",", "."));
			Double nota2 = Double.parseDouble(request.getParameter("nota2").replace(",", "."));
			Double nota3 = Double.parseDouble(request.getParameter("nota3").replace(",", "."));
			Double prova = Double.parseDouble(request.getParameter("prova").replace(",", "."));
			
			Aluno aluno = iAluno.consultar(idAluno);	
			Disciplina disciplina = iDisciplina.consultar(idDis);
			
			Nota nota = new Nota(nota1, nota2, nota3, prova, disciplina, aluno);
			iNota.inserir(nota);
			
			response.sendRedirect("formulario-notas.jsp?exibirAlertDisciplina=" + "Nota do aluno(a): " + aluno.getNome() +" adicionado com sucesso!");
			break;
			
			
		}
		
		//Consultar nota
		case 10:{break;}
						
		//Editar nota
		case 11: {
		    try {
		        int idNota = Integer.parseInt(request.getParameter("idNota"));
		        System.out.println("ID Nota: " + idNota);
		        int idAluno = Integer.parseInt(request.getParameter("idAluno"));
		        System.out.println("ID Aluno: " + idAluno);
		        int idDis = Integer.parseInt(request.getParameter("idDis"));
		        System.out.println("ID Disciplina: " + idDis);

		        String nome = request.getParameter("nome");
		        String disciplinaNome = request.getParameter("disciplina");
		        Double nota1 = Double.parseDouble(request.getParameter("nota1").replace(",", "."));
		        Double nota2 = Double.parseDouble(request.getParameter("nota2").replace(",", "."));
		        Double nota3 = Double.parseDouble(request.getParameter("nota3").replace(",", "."));
		        Double prova = Double.parseDouble(request.getParameter("prova").replace(",", "."));

		       
		        
		        
		        

		        Aluno aluno = iAluno.consultar(idAluno);    
		        Disciplina disciplina = iDisciplina.consultar(idDis);

		        Nota nota = new Nota(idNota, nota1, nota2, nota3, prova, disciplina, aluno);
		        iNota.editar(nota);

		        response.sendRedirect("formulario-notas.jsp?exibirAlertNota=" + "Nota do aluno(a): " + aluno.getNome() + " editada com sucesso!");
		    } catch (Exception e) {
		        e.printStackTrace();
		        response.sendRedirect("formulario-notas.jsp?exibirAlertNota=Erro ao editar nota.");
		    }
		    break;
		}

			
		//Excluir nota
		case 12:{
			int id = Integer.parseInt(request.getParameter("id"));
			
			Nota nota = iNota.consultar(id);
			iNota.excluir(id);
			
			 response.sendRedirect("formulario-notas.jsp?exibirAlertNota=" + "A nota do aluno(a) "+ nota.getAluno().getNome() +" foi excluida com sucesso!");

			break;
			
		}
				
		
	
		
		
	//Padrão =====================================================
	default:{
		
	}
	
	}
	
%>