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
  <h3 class="title fw-bold fs-4 mb-3 ">Cadastrar Disciplina<hr></h3>

  
  <!-- CARDS DASHBOARD -->
  <div class="form-card">
          <form class="form row g-3 col-12">
            <div class="col-12 col-md-9">
              <select id="inputState" class="form-select">
                <option selected>Escolha...</option>
                <option>Matemática</option>
                <option>Língua Portuguesa</option>
                <option>História</option>
                <option>Geografia</option>
                <option>Ciências</option>
              </select>
            </div>
              <div class="col-3 text-end">
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