<!doctype html>
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
    <h3 class="title fw-bold fs-4 mb-3 ">Cadastrar Aluno<hr></h3>

    
    <!-- CARDS DASHBOARD -->
    <div class="form-card">
            <form action="controle.jsp" method="POST" class="form row g-3 col-12">
            
                <div class="col-12 col-md-7">
                  <label for="inputNome" class="form-label">Nome</label>
                  <input type="text" name="nome" class="form-control" id="inputNome">
                </div>
                
                <div class="col-5">
                    <label for="exampleFormControlInput1" class="form-label">E-mail</label>
                    <input type="email" name="email" class="form-control" id="exampleFormControlInput1">
                </div>
                
                <div class="col-12 col-md-2">
                <label for="inputStatus" class="form-label">Situação</label>
              <select id="inputState" class="form-select" name="status_aluno">
                <option selected value="Ativo">Ativo</option>
                <option value="Inativo">Inativo</option>
              </select>
            </div>
            
                <div class="col-12 text-end">
                  <button type="submit" class="btn btn-primary">Cadastrar</button>
                </div>
              </form>
    </div>

</div>
<!-- Final Dashboard -->

   
</div>
<!-- Final Dashboard -->




<script src="script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>