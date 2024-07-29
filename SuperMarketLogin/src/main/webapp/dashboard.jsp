<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://rawcdn.githack.com/Carlos-Crz/Repo_GA7-220501096-AA2-EV02/af054a5ea4ec7329f0628d81a4478bcfcf143361/styleguide.css" />
    <link rel="stylesheet" href="https://rawcdn.githack.com/Carlos-Crz/Repo_GA7-220501096-AA2-EV02/fb1e068dc80c61f0f9eb3970c81646691879adb2/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <title>Dashboard</title>
</head>
<body>
    <%
    if (session.getAttribute("usuario") == null) {
        response.sendRedirect("index.html");
        return;
    }
    %>
    
    <!-- HEADER --> 
    <header class="Header">
        <div class="Header__menu" onclick="toggleSidebar()">
            <span class="material-symbols-outlined" >menu</span>
        </div>
        <div class="Header__slidebar">
            <img class="img" src="/Imagenes/Logotipo.svg" alt="Logotipo"/>
            <span class="material-symbols-outlined">account_circle</span>
        </div>
    </header>
    <!-- END HEADER  -->
    
    <div class="main-container">

        <!-- SLIDEBAR -->
        <aside class="slidebar">
            <nav class="slidebar__nav">
            <ul>
                <li class="slidebar__item">
                    <span class="material-symbols-outlined">
                        home
                    </span>
                    <a href="#">Dashboard</a>
                </li>
                <li class="slidebar__item">
                    <span class="material-symbols-outlined">
                        category
                    </span>
                    <a href="#">Gestión de categorías</a>
                </li>
                <li class="slidebar__item">
                    <span class="material-symbols-outlined">
                        inventory_2
                    </span>
                    <a href="#">Gestión de productos</a>
                </li>
                <li class="slidebar__item">
                    <span class="material-symbols-outlined">
                        credit_card
                    </span>
                    <a href="#">Gestión de cajas</a>
                </li>
                <li class="slidebar__item">
                    <span class="material-symbols-outlined">
                        local_shipping
                    </span>
                    <a href="#">Gestión de proveedores</a>
                </li>
                <li class="slidebar__item">
                    <span class="material-symbols-outlined">
                        supervisor_account
                    </span>
                    <a href="#">Gestión de clientes</a>
                </li>
                <li class="slidebar__item">
                    <span class="material-symbols-outlined">
                        payments
                    </span>
                    <a href="#">Gestión de ventas</a>
                </li>
                <li class="slidebar__item">
                    <span class="material-symbols-outlined">
                        account_circle
                    </span>
                    <a href="#">Gestión de usuarios</a>
                </li>
            </ul>
            </nav>
            <div class="sidebar_colp">
            <ul>
                <li>
                    <p>Colapsar Menu</p>
                    <span class="material-symbols-outlined">keyboard_double_arrow_right</span>
                </li>
            </ul>
            </div>
        </aside>
        <!-- END SLIDEBAR -->
        
        <!-- CONTENIDO -->
        <main class="conteiner">
            <div class="title-description">
                <h1 class="title">Dashboard</h1>
                <h2 class="subtitle">¡Bienvenido User! </h2>
                <p class="description">
                    Aquí encontrarás atajos para acceder a los diferentes módulos y gestionar el sistema según tus privilegios.
                </p>
            </div>
            <div class="dashboard">
                <div class="item">
                    <img src="#" alt="Item 1">
                    <h3>Clientes</h3>
                    <p>2 Clientes registrados</p>
                </div>
                <div class="item">
                    <img src="#" alt="Item 2">
                    <h3>Productos</h3>
                    <p>3 Productos registrados</p>
                </div>
                <div class="item">
                    <img src="#" alt="Item 3">
                    <h3>Cajas</h3>
                    <p>3 Cajas en total</p>
                </div>
                <div class="item">
                    <img src="#" alt="Item 4">
                    <h3>Ventas</h3>
                    <p>2 Ventas Realizadas</p>
                </div>
                <div class="item">
                    <img src="#" alt="Item 5">
                    <h3>Proveedores</h3>
                    <p>3 Proveedores en total</p>
                </div>
                <div class="item">
                    <img src="#" alt="Item 6">
                    <h3>usuarios</h3>
                    <p>3 Usuarios en el sistema</p>
                </div>
            </div>
        </main>
        <!-- END CONTENIDO --> 
        
    </div>
    
    <script>
        function toggleSidebar() {
            document.querySelector('.slidebar').classList.toggle('active');
            document.querySelector('.conteiner').classList.toggle('expanded');
        }
        document.querySelectorAll('li').forEach(function(li) {
            li.addEventListener('click', function() {
                const a = li.querySelector('a');
                if (a) {
                    window.location.href = a.href;
                }
            });
        });
    </script>
</body>
</html>

