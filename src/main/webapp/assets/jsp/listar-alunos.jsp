<%@page import="java.util.List"%>
<%@page import="com.nota.interfaces.AlunoInterfaces"%>
<%@page import="com.nota.modal.Aluno"%>
<%@page import="com.nota.dao.AlunoDao"%>

<!doctype html>
<html lang="pt-br">

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
    <h3 class="title fw-bold fs-4 mb-3 ">Rela��o de Alunos<hr></h3>

    <!-- CARDS DASHBOARD -->
    <div class="form-card row px-2">
        
        <div class="row form mb-3">
        
        	<form class="g-3 col-12">
                <div class="class">
                <a href="formulario-aluno.jsp">
                	<button type="button" class="btn btn-primary">Novo aluno</button>
                </a>
                </div>
			</form>
			
			
                <div class="col-12">
                    <label for="inputAddress2" class="form-label"></label>
                    <input type="text" class="form-control" id="inputAddress2" placeholder="Digite o id ou o nome do aluno">
                  </div>
        
        </div>
            
			
                    <table class="table table-striped col-12">
                    <thead>
                      <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Nome</th>
                        <th scope="col">E-mail</th>
                        <th scope="col">Status</th>
                        <th class="text-center col-1" colspan="2" >A��es</th>
                      </tr>
                    </thead>
                    
                    
                    <tbody>
                     <%
		AlunoInterfaces alunointerface = new AlunoDao();
            List<Aluno> listar = alunointerface.list();
            for(int i = 0; i<listar.size(); i++){
	%>	
                    
                      <tr>
                        <td class="align-middle"><%=listar.get(i).getId_aluno()%></td>
                        <td class="align-middle"><%=listar.get(i).getNome() %></td>
                        <td class="align-middle"><%=listar.get(i).getEmail() %></td>
                        <td class="align-middle"><%=listar.get(i).getStatus_aluno() %></td>
                        <td class="text-center align-middle">
                        	<a href="#">
                        		<button type="button" class="btn btn-success">
                        			<i class="bi bi-pencil-square text-black"></i>
                        		</button>
                        		
                        	</a>
                        </td>
                        <td class="text-center align-middle">
                        	<a href="#">
                        		<button type="button" class="btn btn-danger">
                        			<i class="bi bi-trash3 text-black"></i>
                        		</button>
                        	</a>
                        </td>
                      </tr>
                       <% } %> 
                    </tbody>
                  
                    
                  </table>


    </div>

   
</div>
<!-- Final Dashboard -->




<script src="script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>