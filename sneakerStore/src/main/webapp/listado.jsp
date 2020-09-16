<%@page import="java.util.ArrayList"%>
<%@page import="ar.com.joaquin.sneakerstore.model.entities.Productos"%>
<%
    String tipo = (String) request.getParameter("tipo");
    String marca = (String) request.getParameter("marca");
    ArrayList<Productos> listado = new ArrayList<Productos>();
    String h2;
    
    
    if (tipo != null){
    listado = (ArrayList<Productos>) request.getAttribute("listadoProductosPorTipo");
    h2 = tipo;
    }else if (marca != null){
    listado = (ArrayList<Productos>) request.getAttribute("listadoProductosPorMarca");
    h2 = marca;
    }else{
    listado = (ArrayList<Productos>) request.getAttribute("listadoTodosProductos");
    h2 = "Todos los productos";
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title><%= h2 %></title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
                <script src="https://kit.fontawesome.com/fa8da6015d.js" crossorigin="anonymous"></script>
        </head>
	<body>
		<%@include file="header.jsp" %>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<span class="navbar-brand mb-0 h1">SneakerStore</span>
		</nav>

		<h2 class="m-4"><%=h2%></h2>
		<div class="container mt-3">
			<div class="row mt-2">
                        <%
                           for(Productos unProducto: listado){
                        %>
				<div class="col-md-4 mt-5 p-3">
					<div class="card" style="width: 18rem;">
					  <img class="card-img-top" src="<%= unProducto.getFoto1() %>" alt="Card image cap" width="200">
					  <div class="card-body">
					    <h5 class="card-title"><%= unProducto.getProductoNombre() %></h5>
					    <p class="card-text">$<%= unProducto.getPrecio() %></p>
					    <a href="producto?id=<%= unProducto.getProductoId() %>" class="btn btn-dark">Comprar</a>
					  </div>
					</div>				
				</div>			
			<%
                            }
                        %>								
			</div>	
		</div>

	    <%@include file="footer.jsp" %>

	    <%@include file="modalIniciarSesion.jsp" %>

		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	</body>
</html>
