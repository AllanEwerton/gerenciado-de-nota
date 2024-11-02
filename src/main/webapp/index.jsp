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

    <div class="wrapper">

        <!-- SIDEBAR -->
        <aside id="sidebar">
            <div class="d-flex">
                <button id="toggle-btn" type="button">
                    <i class="lni lni-grid-alt">
                        <i class="bi bi-columns-gap"></i>
                    </i>
                </button>
                <div class="sidebar-logo">
                    <a href="index.html" class="logo">G-Notas</i></a>
                </div>
            </div>

            <ul class="sidebar-nav">
                <li class="sidebar-item">
                    <a href="dashboard.html" target="centro" class="sidebar-link">
                        <i class="lni lni-user">
                            <i class="bi bi-columns-gap"></i>
                        </i>
                        <span>Dashboard</span>
                    </a>
                </li>

                <li class="sidebar-item">
                    <a href="#" class="sidebar-link collapsed has-dropdown" data-bs-toggle="collapse"
                        data-bs-target="#auth" aria-expanded="false" aria-controls="auth">
                        <i class="lni lni-protection">
                            <i class="bi bi-journal-arrow-up"></i>
                        </i>
                        <span>Cadastrar</span>
                    </a>
                    <ul id="auth" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                        <li class="sidebar-item">
                            <a href="formulario-aluno.html" target="centro" class="sidebar-link">Aluno</a>
                        </li>
                        <li class="sidebar-item">
                            <a href="formulario-disciplina.html" target="centro" class="sidebar-link">Disciplinas</a>
                        </li>
                        <li class="sidebar-item">
                            <a href="formulario-notas.html" target="centro" class="sidebar-link">Notas</a>
                        </li>
                    </ul>
                </li>

                <li class="sidebar-item">
                    <a href="#" class="sidebar-link collapsed has-dropdown" data-bs-toggle="collapse"
                        data-bs-target="#auth" aria-expanded="false" aria-controls="auth">
                        <i class="lni lni-protection">
                            <i class="bi bi-binoculars"></i>
                        </i>
                        <span>Consultar</span>
                    </a>
                    <ul id="auth" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                        <li class="sidebar-item">
                            <a href="listar-alunos.html" target="centro" class="sidebar-link">Aluno</a>
                        </li>
                        <li class="sidebar-item">
                            <a href="listar-disciplina.html" target="centro" class="sidebar-link">Disciplinas</a>
                        </li>
                        <li class="sidebar-item">
                            <a href="listar-notas.html" target="centro" class="sidebar-link">Notas</a>
                        </li>
                    </ul>
                </li>
                
            </ul>

            <div class="sidebar-footer">
                <a href="#" class="sidebar-link">
                    <i class="lni lni-exit"><i class="bi bi-box-arrow-left"></i></i>
                    <span>Logout</span>
                </a>
            </div>
        </aside>
        <!-- Final Sidebar -->


        <!-- SECTION -->
            <div class="main text-white">

                <!-- NAVBAR -->
                <nav class="navbar navbar-expand px-4 py-3 text-white">
                    <form action="#" class="d-none d-sm-inline-block">
                        <div class="input-group input-group-navbar">
                            <input type="text" class="form-control border-0 rounded-0" placeholder="Search...">
                            <button class="btn border-0 rounded-0" type="button">
                                Search
                            </button>
                        </div>
                    </form>
                    <div class="navbar-collapse collapse">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item dropdown">
                                <a href="#" class="nav-icon pe-md-0" data-bs-toggle="dropdown">
                                    <img src="./assets/img/hunk.jpg" class="avatar img-fluid" alt="">
                                </a>
                                <div class="dropdown-menu dropdown-menu-end rounded">
                                    <a href="#" class="dropdown-item">
                                        <i class="lni lni-timer"></i>
                                        <span>Analythcs</span>
                                    </a>
                                    <a href="#" class="dropdown-item">
                                        <i class="lni lni-cog"></i>
                                        <span>Configuration</span>
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a href="#" class="dropdown-item"></a>
                                    <i class="lni lni-question-circle"></i>
                                    <span>Analythcs</span>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <!-- Final Navbar -->

                <!-- MAIN -->
                <main class="context px-2 py-4">
                    <div class="container-fluid ">

                        <iframe src="dashboard.html" frameborder="0" name="centro" ></iframe>
                         
                    </div>
                </main>
                <!-- Final Main -->


                <!-- FOOTER -->
                <footer class="footer">
                    <div class="container-fluid row">
                            <div class="col-6 text-start text-body-secondary d-none d-md-block">
                                Todos dos Direitos Reservados - 2024
                            </div>

                            <div class="col-6 text-end text-body-secondary d-none d-md-block">
                                <ul class="list-inline mb-0">
                                    <li class="list-inline-item">
                                        <a href="#" class="text-body-secondary">Contact</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="#" class="text-body-secondary">About Us</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="#" class="text-body-secondary">Terms & Conditions</a>
                                    </li>
                                </ul>
                            </div>
                    </div>
                </footer>
                <!-- Final Footer -->

            </div>
            <!-- Final Section -->
    </div>

























<script src="script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>