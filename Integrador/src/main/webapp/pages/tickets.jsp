<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="shortcut icon" href="../Favicon.ico" type="image/x-icon">
    <!-- Estilos -->
    <link rel="stylesheet" href="../css/tickets.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Comprar Tickets | Conf Bs As</title>
</head>
<body>
  <!-- Barra de navegacion -->
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark p-3">
      <div class="container">
        <a class="navbar-brand" href="../index.html">
          <img src="../assets/img/codoacodo.png" alt="Codo a Codo logo" width="70" height="35" class="d-inline-block align-text-top">
          Conf Bs As
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
          <ul class="navbar-nav mb-2 mb-lg-0"> <li class="nav-item">
            <a class="nav-link text-light" aria-current="page" href="../index.html">Inicio</a>
          </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="../index.html">La conferencia</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../index.html/#oradores">Los oradores</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../index.html/#lugar">El lugar y la fecha</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../index.html/#orador">Convi�rtete en orador</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <!-- Contenido principal -->
  <main>
    <section>
      <div class="tickets">
        <div class="form-compra">
          <!-- Informacion de entrads -->
          <div class="row justify-content-center">
            <div class="col-md-11">
              <div class="row row-cols-1 row-cols-md-3 g-4">
                <div class="col">
                  <div class="card h-100 entrada-estudiante text-center">
                    <div class="card-body">
                      <h5 class="card-title">Estudiante</h5>
                      <p class="card-text">Tiene un descuento</p>
                      <span>80%</span>
                      <p class="entrada-recordatorio">* presentar la documentaci�n</p>
                    </div>
                  </div>
                </div>
                <div class="col">
                  <div class="card h-100 entrada-trainee text-center">
                    <div class="card-body">
                      <h5 class="card-title">Trainee</h5>
                      <p class="card-text">Tiene un descuento</p>
                      <span>50%</span>
                      <p class="entrada-recordatorio">* presentar la documentaci�n</p>
                    </div>
                  </div>
                </div>
                <div class="col">
                  <div class="card h-100 entrada-junior text-center">
                    <div class="card-body">
                      <h5 class="card-title">Junior</h5>
                      <p class="card-text">Tiene un descuento</p>
                      <span>15%</span>
                      <p class="entrada-recordatorio">* presentar la documentaci�n</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Formulario de Compra -->
          <div class="titulo-form">
            <h4>VENTA</h4>
            <h2 class="fs-1">VALOR DEL TICKET $200</h2>
          </div>
          <div class="formulario">
            <form action="Update.jsp">
              <!-- Nombre y Apellido -->
              <div class="row g-3">
                <div class="col-12 col-md-6">
                  <input type="text" name="nombre" value="<%= request.getParameter("nombre") %>" class="form-control" placeholder="Nombre" aria-label="">
                </div>
                <div class="col-12 col-md-6">
                  <input type="text" name="apellido" value="<%= request.getParameter("apellido") %>" class="form-control" placeholder="Apellido" aria-label="">
                </div>
              </div>
              <!-- Correo -->
              <div class="mb-3 my-3">
                <input type="email" name="mail" value="<%= request.getParameter("mail") %>" class="form-control" id="" placeholder="Correo">
              </div>
              <!-- Cantidad y Categor�a -->
              <div class="row g-2">
                <div class="col-12 col-md-6">
                  <label for="" class="form-label">Cantidad</label>
                  <input type="number" value="<%= request.getParameter("cantidad") %>" name="cantidad" class="form-control" id="">
                </div>
                <div class="col-12 col-md-6">
                  <label for="" class="form-label">Categor�a</label>
                  <select id="" name="categoria" class="form-select">
                    <option selected><%= request.getParameter("categoria") %></option>
                    <option value="Estudiante">Estudiante</option>
                    <option value="Trainee">Trainee</option>
                    <option value="Junior">Junior</option>
                  </select>
                </div>
              </div>
              <!-- Total a pagar -->
              <div class="mb-3 my-3">
                <input type="text" class="total-pagar form-control" id="" value="Total a Pagar: $">
              </div>
              <!-- Botones -->
              <div class="row g-3">
                <div class="col-12 col-md-3">
                  <button class="btn btn-compra" onclick="location.href='delete.jsp'" type="button">Delete</button>
                </div>
                <div class="col-12 col-md-3">
                  <button class="btn btn-compra" id="btnConfimar" type="button">Confirmar</button>
                </div>
                <div class="col-12 col-md-3">
                  <button class="btn btn-compra" type="submit">Modificar</button>
                </div>
                <div class="col-12 col-md-3">
                  <button class="btn btn-compra" onclick="location.href='MostrarCompra2.jsp'" type="button">Mostrar Compra</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  </main>
  <!-- Pie de pagina -->
  <footer id="miFooter">
    <div class="container">
      <ul class="nav justify-content-center justify-content-lg-between align-items-center">
        <li class="nav-item">
          <a class="nav-link text-light" href="#">Preguntas frecuentes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="#">Cont�ctanos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="#">Prensa</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="#">Conferencias</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="#">T�rminos y condiciones</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="#">Privacidad</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="#">Estudiantes</a>
        </li>
      </ul>
    </div>
  </footer>
  
  <script src="../js/main.js"></script>
  
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
    integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
  </script>

</body>
</html>