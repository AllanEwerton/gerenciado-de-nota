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
    <h3 class="title fw-bold fs-4 mb-3">Dashboard<hr></h3>

    
    <!-- CARDS DASHBOARD -->
    <div class="cards-dashboards row">
        <!-- CARD 1 -->
        <div class="section section-alunos col-12 col-md-4">
            <div class="card">
                <div class="card-body py-4">
                    <h5 class="mb-2 fw-bold">
                        <a href="formulario-aluno.jsp">Aluno</a>
                    </h5>
                    
                </div>
            </div>
        </div>

        <!-- CARD 2 -->
        <div class="section section-disciplina col-12 col-md-4">
            <div class="card">
                <div class="card-body py-4">
                    <h5 class="mb-2 fw-bold">
                        <a href="formulario-disciplina.jsp">Disciplina</a>
                    </h5>
                    
                </div>
            </div>
        </div>

        <!-- CARD 3 -->
        <div class="section section-aprovados col-12 col-md-4">
            <div class="card">
                <div class="card-body py-4">
                    <h5 class="mb-2 fw-bold">
                         <a href="formulario-notas.jsp">Notas</a>
                    </h5>
                    
                </div>

            </div>
        </div>
    </div>

    <h3 class="fw-bold fs-4 my-3">Lista dos alunos aprovados</h3>
    <div class="row">
        <div class="col-12">
            <table class="table table-striped">
                <thead>
                  <tr class="highlight">
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                  </tr>
                  <tr>
                    <td scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                  </tr>
                  <tr>
                    <td scope="row">3</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                  </tr>
                </tbody>
              </table>
        </div>
    </div>
</div>
<!-- Final Dashboard -->




<script src="script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>