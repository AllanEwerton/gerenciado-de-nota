<%@page import="java.util.List"%>
<%@page import="com.projetobiblitech.interfaces.LivroInterface"%>
<%@page import="com.projetobiblitech.model.Livros"%>
<%@page import="com.projetobiblitech.model.LivrosDAO"%>

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
<div class="mb-3 container-fluid d-none">
    <h3 class="title fw-bold fs-4 mb-3">Dashboard<hr></h3>

    
    <!-- CARDS DASHBOARD -->
    <div class="row">
        <!-- CARD 1 -->
        <div class="col-12 col-md-3">
            <div class="card border-0">
                <div class="card-body py-4">
                    <h5 class="mb-2 fw-bold">
                        Alunos
                    </h5>
                    <p class="mb-2 fw-bold">
                        R$72,540
                    </p>
                    <div class="mb-0">
                        <span class="badge text-success">
                            +0.9%
                        </span>
                        <span class="fw-bold">
                            Since last Month
                        </span>
                    </div>
                </div>
            </div>
        </div>

        <!-- CARD 2 -->
        <div class="col-12 col-md-3">
            <div class="card border-0">
                <div class="card-body py-4">
                    <h5 class="mb-2 fw-bold">
                        Disciplinas
                    </h5>
                    <p class="mb-2 fw-bold">
                        R$72,540
                    </p>
                    <div class="mb-0">
                        <span class="badge text-success">
                            +0.9%
                        </span>
                        <span class="fw-bold">
                            Since last Month
                        </span>
                    </div>
                </div>
            </div>
        </div>

        <!-- CARD 3 -->
        <div class="col-12 col-md-3">
            <div class="card border-0">
                <div class="card-body py-4">
                    <h5 class="mb-2 fw-bold">
                        Aprovados
                    </h5>
                    <p class="mb-2 fw-bold">
                        R$72,540
                    </p>
                    <div class="mb-0">
                        <span class="badge text-success">
                            +0.9%
                        </span>
                        <span class="fw-bold">
                            Since last Month
                        </span>
                    </div>
                </div>
            </div>
        </div>

        <!-- CARD 4 -->
        <div class="col-12 col-md-3">
            <div class="card border-0">
                <div class="card-body py-4">
                    <h5 class="mb-2 fw-bold">
                        Reprovados
                    </h5>
                    <p class="mb-2 fw-bold">
                        R$72,540
                    </p>
                    <div class="mb-0">
                        <span class="badge text-success">
                            +0.9%
                        </span>
                        <span class="fw-bold">
                            Since last Month
                        </span>
                    </div>
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
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td colspan="2">Larry the Bird</td>
                    <td>@twitter</td>
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