<!doctype html>
<%@page import="com.nota.modal.Disciplina"%>
<%@page import="java.util.List"%>
<%@page import="com.nota.dao.DisciplinaDao"%>
<%@page import="com.nota.interfaces.DisciplinaInterfaces"%>
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
						
						if(request.getParameter("exibirAlertDisciplina") != null){	
							String nomeDisciplina = request.getParameter("exibirAlertDisciplina");
							%>
							
							<div class="alert alert-success alert-dismissible fade show" role="alert" id="alertdisciplina">
							  Disciplina <%= nomeDisciplina %> 
							  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
							</div>
							
							<script>
							    setTimeout(function(){
							        window.location.href = 'formulario-disciplina.jsp';
							    }, 3000);
							</script>
														
							<%							
						}
						
						%>

  <h3 class="title fw-bold fs-4 mb-3 ">Cadastrar Disciplina</h3>

  
  <!-- CARDS DASHBOARD -->
  <div class="form-card">
          <form class="form row g-3 col-12" action="controle.jsp?op=5" method="Post" id="formulario">
            <div class="col-12 col-md-9">
              <div class="col-12 col-md-7">
                  <label for="inputNome" class="form-label">Nome</label>
                  <input type="text" name="nome" class="form-control" id="inputNome" required autocomplete="off">
                </div>
            </div>
              <div class="col-3 text-end">
                <button type="reset" id="btnLimpar" class="btn btn-lg btn-success">Limpar</button>
				<button type="submit" id="btnSalvar" class="btn btn-lg btn-success">Salvar</button>
              </div>
              
              <input type="hidden" id="inputIdDisciplina" name="idDisciplina">
            </form>


  </div>

<div class="table-overflow mt-4">
	                      <table class="table table-bordered table-light table-striped table-hover" style="border-radius: 8px;">
						    <thead>
						      <tr>
						        <th scope="col">#</th>
                        		<th scope="col">Nome</th>
                        		
						        <th colspan="2" scope="col" style="text-align: center;">AÇÕES</th>
						      </tr>
						    </thead>
						    <tbody id="clientesTableBody">
						      <%
						      DisciplinaInterfaces IDsc = new DisciplinaDao();
					            List<Disciplina> lista = IDsc.list();
								
						      
						      for(int i = 0; i < lista.size(); i++) {
						    	  
						      %>
						      <tr>
						        <th scope="row" style="text-align: center;"><%= i + 1 %></th>
                        <td class="align-middle"><%=lista.get(i).getNome() %></td>
                        
                        <td style="text-align: center;">						          
						          <a href="#" class="edit-aluno-btn" 
   							data-idDisciplina="<%= lista.get(i).getId() %>"
   							data-nome="<%= lista.get(i).getNome() %>"
   							>
   							<i class="bi bi-pencil-square text-black"></i>
									</a>

																  
						        </td>
						        <td style="text-align: center;">
						          <a href="controle.jsp?op=8&id=<%= lista.get(i).getId() %>"><i class="bi bi-trash3 text-black"></i></a>
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




<script src="script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        
        <script>
        setTimeout(function() {
	        var alertElement = document.getElementById('alertdisciplina');
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
                formulario.action = `controle.jsp?op=7`;

                // Preencher os campos do formulário com os dados do aluno
                document.getElementById('inputNome').value = this.getAttribute('data-nome');
                document.getElementById('inputIdDisciplina').value = this.getAttribute('data-idDisciplina');
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