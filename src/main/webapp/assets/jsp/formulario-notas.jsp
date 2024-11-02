<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="style.css">
</head>

<body>



    <!-- DASHBOARD -->
<div class="mb-3 container-fluid">
  <h3 class="title fw-bold fs-4 mb-3 ">Cadastrar Notas<hr></h3>

  
  <!-- CARDS DASHBOARD -->
  <div class="form-card">
          <form class="form row g-3 col-12">
            <div class="col-8">
              <label for="inputNumber" class="form-label">Aluno</label>
              <select id="inputState" class="form-select">
                <option selected>Escolha...</option>
                <option>001 - João Paulo da Silva</option>
                <option>002 - Silvério dos Reis</option>
                <option>003 - Ana Vasconcelos de Arruda</option>
              </select>
            </div>


            <div class="col-4">
              <label for="inputState" class="form-label">Disciplina</label>
              <select id="inputState" class="form-select">
                <option selected>Escolha...</option>
                <option>001 - Matemática</option>
                <option>002 - Língua Portuguesa</option>
                <option>003 - Geografia</option>
              </select>
            </div>

              <div class="col-1">
                <label for="inputNumber" class="form-label">Nota 1</label>
                <input type="number" class="form-control" id="inputNumber" value="0.0">
              </div>
              <div class="col-1">
                <label for="inputNumber" class="form-label">Nota 2</label>
                <input type="number" class="form-control" id="inputNumber" value="0.0">
              </div>
              <div class="col-1">
                <label for="inputNumber" class="form-label">Nota 3</label>
                <input type="number" class="form-control" id="inputNumber" value="0.0">
              </div>
              <div class="col-1">
                <label for="inputNumber" class="form-label">Prova</label>
                <input type="number" class="form-control" id="inputNumber" value="0.0">
              </div>





              <div class="col-12 text-end">
                <button type="submit" class="btn btn-primary">cancelar</button>
                <button type="submit" class="btn btn-primary">Cadastrar</button>
              </div>
            </form>


  </div>

 
</div>
<!-- Final Dashboard -->




<script src="script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>