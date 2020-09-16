
package ar.com.joaquin.sneakerstore.servlets;

import ar.com.joaquin.sneakerstore.model.dao.MarcaDAO;
import ar.com.joaquin.sneakerstore.model.dao.ProductoDAO;
import ar.com.joaquin.sneakerstore.model.dao.TipoDAO;
import ar.com.joaquin.sneakerstore.model.entities.Marca;
import ar.com.joaquin.sneakerstore.model.entities.Productos;
import ar.com.joaquin.sneakerstore.model.entities.Tipo;
import ar.com.joaquin.sneakerstore.utils.Middleware;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AgregarProductoServlet", urlPatterns = {"/agregarProducto"})
public class AgregarProductoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
                
        MarcaDAO marcaDAO = new MarcaDAO();
        TipoDAO tipoDAO = new TipoDAO();
        
        ArrayList<Marca> todasLasMarcas = marcaDAO.todasLasMarcas();
        ArrayList<Tipo> todosLosTipos = tipoDAO.todosLosTipos();
        
        request.setAttribute("todosLosTipos", todosLosTipos);
        request.setAttribute("todasLasMarcas", todasLasMarcas);
        
        Middleware middleware = new Middleware();
        
        if( middleware.esAdmin(request, response) ){
            request.getRequestDispatcher("agregarProducto.jsp").forward(request, response);
        } else{
            response.sendRedirect("inicio");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        ProductoDAO productoDAO = new ProductoDAO();
        MarcaDAO marcaDAO = new MarcaDAO();
        TipoDAO tipoDAO = new TipoDAO();
        
        Productos producto = new Productos();
        
        producto.setProductoNombre(request.getParameter("productoNombre"));
        
        Tipo tipo = tipoDAO.getTipoById(Integer.parseInt(request.getParameter("tipo")));
        producto.setTipo(tipo);
        
        Marca marca = marcaDAO.getMarcaById(Integer.parseInt(request.getParameter("marca")));        
        producto.setMarca(marca);
        
        producto.setProductoDescripcion(request.getParameter("descripcion"));
        producto.setPrecio(Integer.parseInt(request.getParameter("precio")));
        producto.setFoto1(request.getParameter("foto1"));
        producto.setFoto2(request.getParameter("foto2"));
        producto.setFoto3(request.getParameter("foto3"));
        
        Productos productoComprobar = productoDAO.getProductoByNombre( producto.getProductoNombre() );
        
        if(productoComprobar.getProductoNombre() != null){
            String errorProd = "El producto que intenta agregar ya existe";
            request.setAttribute("errorProd", errorProd);
        }else{
            productoDAO.agregarProducto(producto);
            String mensajeProd = "Producto agregado con exito";
            request.setAttribute("mensajeProd", mensajeProd);
        }
        
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
