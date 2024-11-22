<%@page import="java.text.DecimalFormat"%>
<%@page import="com.nota.modal.Nota"%>
<%@page import="com.nota.dao.NotaDao"%>
<%@page import="com.nota.interfaces.NotaInterfaces"%>
<%@page import="java.util.List"%>
<%@page import="com.nota.interfaces.AlunoInterfaces"%>
<%@page import="com.nota.modal.Aluno"%>
<%@page import="com.nota.dao.AlunoDao"%>
<%@page import="com.nota.interfaces.DisciplinaInterfaces"%>
<%@page import="com.nota.modal.Disciplina"%>
<%@page import="com.nota.dao.DisciplinaDao"%>

<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="../css/style.css">
</head>

<body>



	<!-- DASHBOARD -->
	<div class="mb-3 container-fluid">

		<%
		if (request.getParameter("exibirAlertNota") != null) {
			String nomeAluno = request.getParameter("exibirAlertNota");
		%>

		<div class="alert alert-success alert-dismissible fade show"
			role="alert" id="alertnota">
			<%=nomeAluno%>
			<button type="button" class="btn-close" data-bs-dismiss="alert"
				aria-label="Close"></button>
		</div>

		<script>
							    setTimeout(function(){
							        window.location.href = 'formulario-notas.jsp';
							    }, 3000);
							</script>

		<%
		}
		%>

		<h3 class="title fw-bold fs-4 mb-3 ">
			Cadastrar Notas
			<hr>
		</h3>



		<!-- CARDS DASHBOARD -->
		<div class="form-card">
			<form class="form row g-3 col-12" action="controle.jsp?op=9"
				method="Post" id="formulario">
				<div class="col-8">
					<label for="inputNumber" class="form-label">Aluno</label> <select
						id="inputAluno" class="form-select" name="idAluno">
						<option selected>Escolha...</option>
						<%
						AlunoInterfaces alunointerface = new AlunoDao();
						List<Aluno> listar = alunointerface.list();
						for (int i = 0; i < listar.size(); i++) {
						%>
						<option value="<%=listar.get(i).getId_aluno()%>"><%=i + 1%>
							-
							<%=listar.get(i).getNome()%></option>
						<%
						}
						%>
					</select>
				</div>


				<div class="col-4">
					<label for="inputState" class="form-label">Disciplina</label> <select
						id="inputDisciplina" class="form-select" name="idDis">
						<option selected>Escolha...</option>

						<%
						DisciplinaInterfaces disciplinaInterface = new DisciplinaDao();
						List<Disciplina> list = disciplinaInterface.list();

						// Verifica se a lista não está vazia
						if (list != null && !list.isEmpty()) {
							for (int i = 0; i < list.size(); i++) {
						%>
						<option value="<%=list.get(i).getId()%>"><%=i + 1%> -
							<%=list.get(i).getNome()%></option>
						<%
						}
						} else {
						%>
						<option disabled>Nenhuma disciplina disponível</option>
						<%
						}
						%>
					</select>
				</div>

				<div class="col-1">
					<label for="inputNumber" class="form-label">Nota 1</label> <input
						type="text" class="form-control" id="inputnota1"
						placeholder="Nota 1" name="nota1" required>
				</div>
				<div class="col-1">
					<label for="inputNumber" class="form-label">Nota 2</label> <input
						type="text" class="form-control" id="inputnota2"
						placeholder="Nota 2" name="nota2" required>
				</div>
				<div class="col-1">
					<label for="inputNumber" class="form-label">Nota 3</label> <input
						type="text" class="form-control" id="inputnota3"
						placeholder="Nota 3" name="nota3" required>
				</div>
				<div class="col-1">
					<label for="inputNumber" class="form-label">Prova</label> <input
						type="text" class="form-control" id="inputprova"
						placeholder="Prova" name="prova" required>
				</div>


				<div class="form-floating mb-3 col-md-12 justify-content-end"
					style="text-align: right;">
					<a href="" class="btn btn-lg btn-primary">Exibir Alunos</a>
					<button type="reset" id="btnLimpar" class="btn btn-lg btn-success">Limpar</button>
					<button type="submit" id="btnSalvar" class="btn btn-lg btn-success">Salvar</button>
				</div>
				<input type="hidden" id="inputIdNota" name="idNota">
			</form>



		</div>


		<div class="table-overflow mt-4">
			<table
				class="table table-bordered table-light table-striped table-hover"
				style="border-radius: 8px;">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Aluno</th>
						<th scope="col">Disciplina</th>
						<th scope="col">Nota 1</th>
						<th scope="col">Nota 2</th>
						<th scope="col">Nota 3</th>
						<th scope="col">Prova</th>
						<th scope="col">Media</th>
						<th scope="col">Situação</th>

						<th colspan="2" scope="col" style="text-align: center;">AÇÕES</th>
					</tr>
				</thead>
				<tbody id="clientesTableBody">
					<%
					NotaInterfaces iNota = new NotaDao();
					List<Nota> lista = iNota.list();

					for (int i = 0; i < lista.size(); i++) {
					%>
					<tr>
						<th scope="row" style="text-align: center;"><%=i + 1%></th>
						<td class="align-middle"><%=lista.get(i).getAluno().getNome()%></td>
						<td class="align-middle"><%=lista.get(i).getDisciplina().getNome()%></td>
						<%
						DecimalFormat df = new DecimalFormat("#0.0"); // Define o formato para uma casa decimal
						String nota1Formatada = df.format(lista.get(i).getNota1()).replace(".", ","); // Formata e troca o ponto por vírgula
						%>
						<td class="align-middle"><%=nota1Formatada%></td>
						<%
						String nota2Formatada = df.format(lista.get(i).getNota2()).replace(".", ","); // Formata e troca o ponto por vírgula
						%>
						<td class="align-middle"><%=nota2Formatada%></td>
						<%
						String nota3Formatada = df.format(lista.get(i).getNota3()).replace(".", ","); // Formata e troca o ponto por vírgula
						%>
						<td class="align-middle"><%=nota3Formatada%></td>
						<%
						String provaFormatada = df.format(lista.get(i).getProva()).replace(".", ","); // Formata e troca o ponto por vírgula
						%>
						<td class="align-middle"><%=provaFormatada%></td>

						<%
						double nota1 = lista.get(i).getNota1();
						double nota2 = lista.get(i).getNota2();
						double nota3 = lista.get(i).getNota3();
						double prova = lista.get(i).getProva();
						double mediaNota = (nota1 + nota2 + nota3) / 3;
						double mediaFinal = (mediaNota + prova) / 2;

						
						String nForm = df.format(mediaFinal);
						%>

						<td class="align-middle"><%=nForm%></td>

						<%
						// Condição para aprovação (exemplo: média >= 6.0 é aprovado)
						String status = (mediaFinal >= 6.0) ? "Aprovado" : "Reprovado";
						%>
						<td class="align-middle" style="text-align: center;"><span
							class="<%=mediaFinal >= 6.0 ? "text-success" : "text-danger"%>"><%=status%></span>
						</td>

						<td style="text-align: center;"><a href="#"
							class="edit-nota-btn"
							data-idNota="<%=lista.get(i).getId_nota()%>"
							data-idAluno="<%=lista.get(i).getAluno().getId_aluno()%>"
							data-idDisciplina="<%=lista.get(i).getDisciplina().getId()%>"
							data-nota1="<%=lista.get(i).getNota1()%>"
							data-nota2="<%=lista.get(i).getNota2()%>"
							data-nota3="<%=lista.get(i).getNota3()%>"
							data-prova="<%=lista.get(i).getProva()%>"> <i
								class="bi bi-pencil-square text-black"></i>
						</a></td>

						<td style="text-align: center;"><a
							href="controle.jsp?op=12&id=<%=lista.get(i).getId_nota()%>">
								<i class="bi bi-trash3 text-black"></i>
						</a></td>
					</tr>
					<%
					}
					%>






				</tbody>
			</table>
		</div>


	</div>
	<!-- Final Dashboard -->




	<script src="script.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

	<script>
        setTimeout(function() {
	        var alertElement = document.getElementById('alertnota');
	        var alert = new bootstrap.Alert(alertElement);
	        alert.close();
	    }, 2000);
	    	   
	    
        document.querySelectorAll('.edit-nota-btn').forEach(button => {
            button.addEventListener('click', function(event) {
                event.preventDefault();

                // Alterar o texto do botão Salvar para "Editar"
                let btnSalvar = document.getElementById('btnSalvar');
                btnSalvar.innerText = 'Editar';

                // Alterar a ação do formulário para a edição do aluno
                let formulario = document.getElementById('formulario');
                formulario.action = `controle.jsp?op=11`;

                // Preencher os campos do formulário com os dados do aluno
                document.getElementById('inputAluno').value = this.getAttribute('data-idAluno');
                document.getElementById('inputDisciplina').value = this.getAttribute('data-idDisciplina');
                document.getElementById('inputnota1').value = this.getAttribute('data-nota1');
                document.getElementById('inputnota2').value = this.getAttribute('data-nota2');
                document.getElementById('inputnota3').value = this.getAttribute('data-nota3');
                document.getElementById('inputprova').value = this.getAttribute('data-prova');
                document.getElementById('inputIdNota').value = this.getAttribute('data-idNota');
            });
        });


	    // Captura o evento de clique no botão de limpar
	    document.getElementById('btnLimpar').addEventListener('click', function() {
	        let btnSalvar = document.getElementById('btnSalvar');
	        btnSalvar.innerText = 'Salvar';
	        
	        document.getElementById('formulario').action = "controle.jsp?op=9";
	    });
        </script>
</body>

</html>