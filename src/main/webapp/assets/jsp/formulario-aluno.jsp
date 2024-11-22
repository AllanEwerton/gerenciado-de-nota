<!doctype html>
<%@page import="com.nota.modal.Aluno"%>
<%@page import="java.util.List"%>
<%@page import="com.nota.dao.AlunoDao"%>
<%@page import="com.nota.interfaces.AlunoInterfaces"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="../css/style.css">
</head>

<body>

<!-- DASHBOARD -->
<div class="mb-3 container-fluid">

							<%
						
						if(request.getParameter("exibirAlertAluno") != null){	
							String nomeAluno = request.getParameter("exibirAlertAluno");
							%>
							
							<div class="alert alert-success alert-dismissible fade show" role="alert" id="alertUS">
							  aluno <%= nomeAluno %> 
							  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
							</div>
							
							<script>
							    setTimeout(function(){
							        window.location.href = 'formulario-aluno.jsp';
							    }, 3000);
							</script>
														
							<%							
						}
						
						%>

    <h3 class="title fw-bold fs-4 mb-3 ">Cadastrar Aluno<hr></h3>

    
    <!-- CARDS DASHBOARD -->
    <div class="form-card">
            <form action="controle.jsp?op=1" method="POST" class="form row g-3 col-12" id="formulario">
            
                <div class="col-12 col-md-7">
                  <label for="inputNome" class="form-label">Nome</label>
                  <input type="text" name="nome" class="form-control" id="inputNome" required autocomplete="off">
                </div>
                
                <div class="col-5">
                    <label for="exampleFormControlInput1" class="form-label">E-mail</label>
                    <input type="email" name="email" class="form-control" id="inputEmail" required autocomplete="off">
                </div>
                
                <div class="col-12 col-md-2">
                <label for="inputStatus" class="form-label">Situação</label>
              <select id="inputState" class="form-select" name="status_aluno" >
                <option selected value="Ativo">Ativo</option>
                <option value="Inativo">Inativo</option>
              </select>
            </div>
            
                <div class="form-floating mb-3 col-md-12 justify-content-end" style="text-align: right;">							
								<a href="" class="btn btn-lg btn-primary">Exibir Alunos</a>
								<button type="reset" id="btnLimpar" class="btn btn-lg btn-success">Limpar</button>
								<button type="submit" id="btnSalvar" class="btn btn-lg btn-success">Salvar</button>
				</div>
				<input type="hidden" id="inputIdAluno" name="idAluno">
              </form>
    </div>
    
    <div class="table-overflow mt-4">
	                      <table class="table table-bordered table-light table-striped table-hover" style="border-radius: 8px;">
						    <thead>
						      <tr>
						        <th scope="col">#</th>
                        		<th scope="col">Nome</th>
                        		<th scope="col">E-mail</th>
                        		<th scope="col">Status</th>
						        <th colspan="2" scope="col" style="text-align: center;">AÇÕES</th>
						      </tr>
						    </thead>
						    <tbody id="clientesTableBody">
						      <%
						      AlunoInterfaces alunointerface = new AlunoDao();
					            List<Aluno> lista = alunointerface.list();
								
						      
						      for(int i = 0; i < lista.size(); i++) {
						    	  
						      %>
						      <tr>
						        <th scope="row" style="text-align: center;"><%= i + 1 %></th>
                        <td class="align-middle"><%=lista.get(i).getNome() %></td>
                        <td class="align-middle"><%=lista.get(i).getEmail() %></td>
                        <td class="align-middle"><%=lista.get(i).getStatus_aluno() %></td>
                        <td style="text-align: center;">						          
						          <a href="#" class="edit-aluno-btn" 
   							data-idAluno="<%= lista.get(i).getId_aluno() %>"
   							data-nome="<%= lista.get(i).getNome() %>"
   							data-email="<%= lista.get(i).getEmail() %>"
   							data-status="<%= lista.get(i).getStatus_aluno() %>">
   							<i class="bi bi-pencil-square text-black"></i>
									</a>

																  
						        </td>
						        <td style="text-align: center;">
						          <a href="controle.jsp?op=4&id=<%= lista.get(i).getId_aluno() %>"><i class="bi bi-trash3 text-black"></i></a>
						        </td>
						      </tr>
						     
						      <%
						      }
						      %>
						      
						  
						      
						     
						      
						    </tbody>
						  </table>
						</div>

</div>
<!-- Final Dashboard -->

   
</div>
<!-- Final Dashboard -->




<script src="script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        <script>
        setTimeout(function() {
	        var alertElement = document.getElementById('alertAluno');
	        var alert = new bootstrap.Alert(alertElement);
	        alert.close();
	    }, 2000);
	    	   
	    
        document.querySelectorAll('.edit-aluno-btn').forEach(button => {
            button.addEventListener('click', function(event) {
                event.preventDefault();

                // Alterar o texto do botão Salvar para "Editar"
                let btnSalvar = document.getElementById('btnSalvar');
                btnSalvar.innerText = 'Editar';

                // Alterar a ação do formulário para a edição do aluno
                let formulario = document.getElementById('formulario');
                formulario.action = `controle.jsp?op=3`;

                // Preencher os campos do formulário com os dados do aluno
                document.getElementById('inputNome').value = this.getAttribute('data-nome');
                document.getElementById('inputEmail').value = this.getAttribute('data-email');
                document.getElementById('inputState').value = this.getAttribute('data-status');
                document.getElementById('inputIdAluno').value = this.getAttribute('data-idAluno');
            });
        });


	    // Captura o evento de clique no botão de limpar
	    document.getElementById('btnLimpar').addEventListener('click', function() {
	        let btnSalvar = document.getElementById('btnSalvar');
	        btnSalvar.innerText = 'Salvar';
	        
	        document.getElementById('formulario').action = "controle.jsp?op=2";
	    });
        </script>
</body>

</html>