<%@page import="java.util.List"%>
<%@page import="com.nota.interfaces.NotaInterfaces"%>
<%@page import="com.nota.modal.Nota"%>
<%@page import="com.nota.dao.NotaDao"%>

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
    <h3 class="title fw-bold fs-4 mb-3 ">Relação de Notas<hr></h3>

    <!-- CARDS DASHBOARD -->
    <div class="form-card row px-2">
        
        <div class="row form mb-3">
        
        	<form class="g-3 col-12">
                <div class="class">
                <a href="formulario-aluno.jsp">
                	<button type="button" class="btn btn-primary">Inserir notas</button>
                </a>
                </div>
			</form>
			
			
                <div class="col-12">
                    <label for="inputAddress2" class="form-label"></label>
                    <input type="text" class="form-control" id="inputAddress2" placeholder="Digite">
                  </div>
        
        </div>
            
			
                    <table class="table table-striped col-12">
                    <thead>
                      <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Aluno</th>
                        <th scope="col">Disciplina</th>
                        <th scope="col">Nota1</th>
                        <th scope="col">Nota2</th>
                        <th scope="col">Nota3</th>
                        <th scope="col">Prova</th>
                        <th class="text-center col-1" colspan="2" >Ações</th>
                      </tr>
                    </thead>
                    
                    
                    <tbody>
                     <%
		NotaInterfaces notainterface = new NotaDao();
            List<Nota> list = notainterface.list();
            for(int i = 0; i<list.size(); i++){
	%>	
                    
                      <tr>
                        <td class="align-middle"><%=list.get(i).getId_nota()%></td>
                        <td class="align-middle"><%=list.get(i).getAluno() %></td>
                        <td class="align-middle"><%=list.get(i).getDisciplina() %></td>
                        <td class="align-middle"><%=list.get(i).getNota1() %></td>
                        <td class="align-middle"><%=list.get(i).getNota2() %></td>
                        <td class="align-middle"><%=list.get(i).getNota3() %></td>
                        <td class="align-middle"><%=list.get(i).getProva() %></td>
                        
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