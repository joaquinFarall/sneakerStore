
<%@page import="ar.com.joaquin.sneakerstore.model.entities.Productos"%>
<%
    Productos producto = (Productos) request.getAttribute("producto");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title><%= producto.getProductoNombre() %></title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
                <script src="https://kit.fontawesome.com/fa8da6015d.js" crossorigin="anonymous"></script>
        </head>
        <body>
		<%@include file="header.jsp" %>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<span class="navbar-brand mb-0 h1">SneakerStore</span>
		</nav>

		<div class="container" style="margin-left: 200px; margin-right: 200px; margin-top: 100px;">
			<div class="row">
				<div class="col-md-6">
					<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
					  <div class="carousel-inner">
					    <div class="carousel-item active">
                                                <img src="<%= producto.getFoto1() %>" class="d-block w-100" alt="..." width="700">
					    </div>
                                            <%
                                            if(producto.getFoto2() != null){
                                            %>
					    <div class="carousel-item">
					      <img src="<%= producto.getFoto2() %>" class="d-block w-100" alt="..." width="700">
					    </div>
                                            <%
                                                }
                                            if(producto.getFoto3() != null){ 
                                            %>
					    <div class="carousel-item">
					      <img src="<%= producto.getFoto3() %>" class="d-block w-100" alt="..." width="700">
					    </div>
                                            <%
                                                }
                                            %>
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
				</div>
				<div class="col-md-6">
					<div class="jumbotron">
					  <h6><%= producto.getMarca().getMarcaNombre() %></h6>	
					  <h1 class="display-4"><%= producto.getProductoNombre() %></h1>
					  <hr class="my-4">
					  <h4>$<%= producto.getPrecio() %></h4>					  
					  <p>
					  <% String descripcion;
                                             if( producto.getProductoDescripcion() != null ){
                                                descripcion = producto.getProductoDescripcion();
                                            } else{ 
                                                descripcion = "No hay descripcion disponible.";  
                                            }
                                          %>
                                          <%= descripcion %>
					  </p>
					  <button class="btn btn-dark btn-lg mt-5" href="" role="button">Comprar</button>
					</div>	
				</div>
			</div>
		</div>
                <div style="position: absolute;
                            bottom: 0;
                            width: 100%;">
                    <%@include file="footer.jsp" %>
                </div>       
	    
	    <%@include file="modalIniciarSesion.jsp" %>

		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	</body>
</html>