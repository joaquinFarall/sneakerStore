<%
    String mensajeMarca = (String) request.getAttribute("mensajeMarca");
    String errorMarca = (String) request.getAttribute("errorMarca");
    String alertaMarca = null;
    
    if(mensajeMarca != null){
        alertaMarca = mensajeMarca;
    } else if(errorMarca != null){
        alertaMarca = errorMarca;
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Marca</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/fa8da6015d.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <%@include file="header.jsp" %>	
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <span class="navbar-brand mb-0 h1">SneakerStore</span>
	</nav>
        
        <div class="bg-dark p-5" style="border-radius: 10px; margin-left: 450px; margin-right: 450px; margin-top: 163px; margin-bottom: 163px;">
            <form action="agregarMarca" method="POST">
                <div class="form-group row">
                  <div class="col-12">
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <div class="input-group-text">Marca</div>
                      </div> 
                        <input name="marcaNombre" type="text" aria-describedby="HelpBlock" class="form-control" placeholder="Ingrese el nombre de la marca. Ej: Nike">
                    </div> 
                    <span id="HelpBlock" class="form-text text-muted text-light"></span>
                  </div>
                </div> 
                <div class="form-group row">
                  <div class="offset-4 col-8">
                    <button name="submit" type="submit" class="btn btn-light">Agregar</button>
                  </div>
                </div>
                <%
                    if(mensajeMarca != null){
                %>
                <p class="text-succes"><%= mensajeMarca %></p>
                <%
                    }else if(errorMarca != null){
                %>
                <p class="text-danger"><%= errorMarca %></p>
                <%
                    }
                %>
            </form>
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
