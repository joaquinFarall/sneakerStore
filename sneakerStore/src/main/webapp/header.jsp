<%@page import="ar.com.joaquin.sneakerstore.utils.Middleware"%>
<%@page import="ar.com.joaquin.sneakerstore.model.entities.Usuario"%>
<%  
    Usuario usuario = null;
    
    try {
        usuario = (Usuario) session.getAttribute("usuario");
        System.out.println(usuario.getUsuarioNombre());
        if( usuario.getUsuarioNombre() != null){
            System.out.println("datos del usuario logeado obtenidos");
        }
    } catch (NullPointerException ex) {
        System.out.println("No hay usuario");
    }
   
    Middleware middlew = new Middleware();

%>
                <header>	
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			  <a class="navbar-brand" href="inicio">Sneaker Store</a>
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			  </button>

			  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			    <ul class="navbar-nav mr-auto">
			      <li class="nav-item active">
			        <a class="nav-link" href="inicio">Inicio<span class="sr-only">(current)</span></a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="listado?marca=Nike">Nike</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="listado?marca=Jordan">Jordan</a>
			      </li>
			      <li class="nav-item dropdown">
			        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			          Mas marcas
			        </a>
			        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
			          <a class="dropdown-item" href="listado?marca=Adidas">Adidas</a>
			          <a class="dropdown-item" href="listado?marca=Reebok">Reebok</a>
			          <a class="dropdown-item" href="listado?marca=Fallen">Fallen</a>
			          <a class="dropdown-item" href="listado?marca=NewBalance">New Balance</a>
			          <div class="dropdown-divider"></div>
			          <a class="dropdown-item" href="listado">Todos los productos</a>
			        </div>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link disabled" href="#"></a>
			      </li>
			    </ul>
			    <form class="form-inline my-2 my-lg-0">
			      <input class="form-control mr-sm-2" type="search" placeholder="¿Que buscas?" aria-label="Search">
			      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Buscar</button>
			    </form>
                            <%
                                if( middlew.esAdmin(request, response)){
                            %>
                            <li class="nav-item dropdown mr-5">
			        <a class="dropdown-toggle btn btn-outline-light my-2 my-sm-0" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			          <%= usuario.getUsuarioNombre() %>
			        </a>
			        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
			          <a class="dropdown-item" href="agregarProducto">Agregar Producto</a>
			          <a class="dropdown-item" href="agregarMarca">Agregar Marca</a>
			          <div class="dropdown-divider"></div>
			          <a class="dropdown-item" href="logout">Cerrar Sesion</a>
			        </div>
			    </li>
                            <%
                                }else if( middlew.estaLogeado(request, response) ){
                            %>
                            <li class="nav-item dropdown">
			        <a class="dropdown-toggle btn btn-outline-light my-2 my-sm-0" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			          <%= usuario.getUsuarioNombre() %>
			        </a>
			        <div class="dropdown-menu mr-2" aria-labelledby="navbarDropdown">
			          <a class="dropdown-item" href="#">Editar Datos</a>
			          <a class="dropdown-item" href="#">Mis compras</a>
			          <div class="dropdown-divider"></div>
			          <a class="dropdown-item" href="logout">Cerrar Sesion</a>
			        </div>
			    </li>
                            <%
                                } else {
                            %>
			    <button id="btn-iniciar" type="button" class="btn btn-outline-light my-2 ml-2 my-sm-0" data-toggle="modal" data-target="#iniciarSesion">
                                Iniciar sesion
			    </button>
                            <%
                                }
                            %>
			  </div>
			</nav>	
		</header>
