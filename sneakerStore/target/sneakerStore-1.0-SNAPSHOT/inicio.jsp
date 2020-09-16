<%
    String alert = null;
    String error = null;
    String mensaje = (String) request.getAttribute("mensaje");
    String errorEmail = (String) request.getAttribute("errorEmail");
    String errorContraseña = (String) request.getAttribute("errorContraseña");
    String loginError = (String) request.getAttribute("loginError");
    
    if(mensaje != null){
        alert = mensaje;
    }else if(errorEmail != null){
        alert = errorEmail;
    }else if(errorContraseña != null){
        alert = errorContraseña;
    }else if( loginError != null){
        alert = loginError;
    }
    
    Middleware middleware = new Middleware();
%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Sneaker Store</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
                <script src="https://kit.fontawesome.com/fa8da6015d.js" crossorigin="anonymous"></script>
        </head>
	<body>
		<%@include file="header.jsp" %>	
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<span class="navbar-brand mb-0 h1">SneakerStore</span>
		</nav>
		<div id="carouselExampleControls" class="carousel slide carousel-fade" data-ride="carousel">
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img class="d-block w-100" src="images/carrusel2.jpg" alt="First slide">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="images/carrusel.jpg" alt="Second slide">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="images/carrusel3.jpg" alt="Third slide">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="images/carrusel4.jpg" alt="Third slide">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="images/carrusel5.jpg" alt="Third slide">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="images/carrusel6.jpg" alt="Third slide">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="images/carrusel7.jpg" alt="Third slide">
		    </div>
		  </div>
		  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>		
	    
            <%
                if( alert != null){
            %>
                <h5 class="text-succes m-2"> <%= alert %> </h5>
            <%
                } else if( error != null){
            %>
                <h5 class="text-succes m-2"> <%= alert %> </h5>
            <%
                } 
            %>
	    <div class="container mt-5">
	    	<h3>Ropa</h3>
	    	<div class="row">
                                        <div class="card col m-3" style="width: 18rem;">
					  <img class="card-img-top" src="images/foto1.jpg" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title">Zapatillas</h5>
					    <p class="card-text">Nike, Adidas, Jordan, Reebok, Puma, Fallen, entre otras.</p>
					    <a href="listado?tipo=zapatillas" class="btn btn-dark">Ver mas</a>
					  </div>
					</div>
					<div class="card col m-3" style="width: 18rem;">
					  <img class="card-img-top" src="images/foto2.jpg" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title">Buzos</h5>
					    <p class="card-text">Buzos, Camperas, Ropa de invierno, Indumentaria deportiva</p>
					    <a href="listado?tipo=buzo" class="btn btn-dark">Ver mas</a>
					  </div>
					</div>
                                        <div class="card col m-3" style="width: 18rem;">
					  <img class="card-img-top" src="images/foto4.jpg" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title">Remeras</h5>
					    <p class="card-text">Remeras, Chombas, Musculosas, Indumentaria deportiva</p>
					    <a href="listado?tipo=remera" class="btn btn-dark">Ver mas</a>
					  </div>
					</div>
					<div class="card col m-3" style="width: 18rem;">
					  <img class="card-img-top" src="images/foto3.jpg" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title">Parte inferior</h5>
					    <p class="card-text">Joggins, Shorts, Indumentaria deportiva</p>
					    <a href="listado?tipo=inferior" class="btn btn-dark">Ver mas</a>
					  </div>
					</div>
	    	</div>
	    	<h3 class="mt-4">Deportes</h3>
	    	<div class="row">
	    			<div class="card col m-3" style="width: 18rem;">
					  <img class="card-img-top" src="images/nba.jpg" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title">NBA</h5>
					    <p class="card-text"></p>
					    <a href="listado?tipo=NBA" class="btn btn-dark">Ver mas</a>
					  </div>
					</div>
					<div class="card col m-3" style="width: 18rem;">
					  <img class="card-img-top" src="images/nfl.jpg" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title">NFL</h5>
					    <p class="card-text"></p>
					    <a href="listado?tipo=NFL" class="btn btn-dark">Ver mas</a>
					  </div>
					</div>
					<div class="card col m-3" style="width: 18rem;">
					  <img class="card-img-top" src="images/messi.jpg" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title">Futbol/Soccer</h5>
					    <p class="card-text"></p>
					    <a href="listado?tipo=futbol" class="btn btn-dark">Ver mas</a>
					  </div>
					</div>
	    	</div>
                <%
                    if( !middleware.estaLogeado(request, response) ){
                %>
	    	<div class="row m-5">
	    		<div class="col">
		    		<div class="card">
					  <div class="card-header">
					    <strong>Crea una cuenta sneaker store</strong>
					  </div>
					  <div class="card-body">
					    <h5 class="card-title">¿No tienes cuenta?</h5>
					    <p class="card-text">Registrate para descuentos exclusivos y estar al dia de los nuevos modelos.</p>
					    <button class="btn btn-dark" onclick="registro()">Quiero registrarme</button>
					  </div>
					</div>
				</div>
	    	</div>
	    	<div id="registroForm" class="m-5 col-8" hidden="">
					<h3>¡Registrate!</h3>
                                        <form action="registro" method="POST" class="mt-2">
					  <div class="form-group row">
					    <div class="col-8">
					      <input id="nombre" name="nombre" type="text" required="required" class="form-control" placeholder="Nombre">
					    </div>
					  </div>
					  <div class="form-group row">
					    <div class="col-8">
					      <input id="apellido" name="apellido" type="text" class="form-control" placeholder="Apellido">
					    </div>
					  </div>
					  <div class="form-group row">
					    <div class="col-8">
					      <input id="emailRegisto" name="emailRegistro" type="text" required="required" class="form-control" placeholder="E-mail">
					    </div>
					  </div>
					  <div class="form-group row">
					    <div class="col-8">
					      <input id="passwordRegistro" name="passwordRegistro" type="password" required="required" class="form-control" placeholder="Contraseña">
					    </div>
					  </div>
					  <div class="form-group row">
					    <div class="col-8">
					      <input id="rePassword" name="rePassword" type="password" required="required" class="form-control" placeholder="Repetir contraseña">
					    </div>
					  </div>
					  <div class="form-group row">
					    <div class="offset-2 col-8">
					      <button name="submit" type="submit" class="btn btn-dark">Registrarse</button>
					    </div>
					  </div>
					</form>
				</div>	    
            <%
                }
            %>
	    </div>
            <%@include file="modalIniciarSesion.jsp" %>
            <%@include file="footer.jsp" %>
		<script type="text/javascript">
			function registro(){
				let formulario = document.getElementById("registroForm");
				formulario.removeAttribute("hidden");
			}
		</script>
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	</body>
</html>
