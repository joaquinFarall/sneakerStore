<%@page import="ar.com.joaquin.sneakerstore.model.entities.Marca"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ar.com.joaquin.sneakerstore.model.entities.Tipo"%>

<%
    ArrayList<Tipo> tipos = (ArrayList<Tipo>) request.getAttribute("todosLosTipos");
      
    ArrayList<Marca> marcas = (ArrayList<Marca>) request.getAttribute("todasLasMarcas");
    
    String error = (String) request.getAttribute("errorProd");
    String mensaje = (String) request.getAttribute("mensajeProd");
    String alertaProd = null;
    
    if(error != null){
        alertaProd = error;
    }else if(mensaje != null){
        alertaProd = mensaje;
    }
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Producto</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/fa8da6015d.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <%@include file="header.jsp" %>	
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <span class="navbar-brand mb-0 h1">SneakerStore</span>
	</nav>
        
        <div class="bg-dark p-5 mt-5" style="border-radius: 10px; margin-left: 450px; margin-right: 450px;">
        <form action="agregarProducto" method="POST">
            <div class="form-group row">
              <label for="" class="col-4 col-form-label text-light">Nombre</label> 
              <div class="col-8">
                <input name="productoNombre" type="text" class="form-control" placeholder="Agregue el nombre del producto">
              </div>
            </div>
            <div class="form-group row">
              <label for="" class="col-4 col-form-label text-light">Marca</label> 
              <div class="col-8">
                <select name="marca" class="custom-select">
                <%
                    for(Marca marca:marcas){
                %>
                  <option value="<%= marca.getMarcaId() %>"><%= marca.getMarcaNombre() %></option>
                <%
                    }
                %>  
                </select>
              </div>
            </div>
            <div class="form-group row">
              <label for="" class="col-4 col-form-label text-light">Tipo</label> 
              <div class="col-8">
                <select name="tipo" class="custom-select">
                <%
                    for(Tipo tipo:tipos){
                %>
                  <option value="<%= tipo.getTipoId() %>"><%= tipo.getTipo() %></option>
                <%
                    }
                %> 
                </select>
              </div>
            </div>
            <div class="form-group row">
              <label for="" class="col-4 col-form-label text-light">Descripcion del producto</label> 
              <div class="col-8">
                <textarea name="descripcion" cols="40" rows="3" class="form-control" placeholder="Agregue la descripcion del producto"></textarea>
              </div>
            </div>
            <div class="form-group row">
              <label for="text" class="col-4 col-form-label text-light">Precio</label> 
              <div class="col-8">
                <div class="input-group">
                  <div class="input-group-prepend">
                    <div class="input-group-text">$</div>
                  </div> 
                  <input name="precio" type="text" class="form-control">
                </div>
              </div>
            </div>
            <div class="form-group row">
              <label for="" class="col-4 col-form-label text-light">Foto 1</label> 
              <div class="col-8">
                <input name="foto1" type="text" class="form-control" placeholder="Agregue el URL de la primer foto del producto">
              </div>
            </div>
            <div class="form-group row">
              <label for="" class="col-4 col-form-label text-light">Foto 2</label> 
              <div class="col-8">
                <input name="foto2" type="text" class="form-control" placeholder="Agregue el URL de la segunda foto del producto">
              </div>
            </div>
            <div class="form-group row">
              <label for="" class="col-4 col-form-label text-light">Foto 3</label> 
              <div class="col-8">
                <input name="foto3" type="text" class="form-control" placeholder="Agregue el URL de la tercera foto del producto">
              </div>
            </div> 
            <div class="form-group row">
              <div class="offset-4 col-8">
                <button name="submit" type="submit" class="btn btn-light">Agregar</button>
              </div>
            </div>
          </form>
          <%
              if(alertaProd != null){
          %>
          <label class="col-12 text-light"><%= alertaProd %></label>
          <%
              }
          %>
        </div>
        
        <div style="position: absolute;
                            bottom: 0;
                            width: 100%;">
            <%@include file="footer.jsp" %>
        </div>    
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
