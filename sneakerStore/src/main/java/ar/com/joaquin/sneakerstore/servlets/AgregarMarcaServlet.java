
package ar.com.joaquin.sneakerstore.servlets;

import ar.com.joaquin.sneakerstore.model.dao.MarcaDAO;
import ar.com.joaquin.sneakerstore.model.entities.Marca;
import ar.com.joaquin.sneakerstore.utils.Middleware;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "AgregarMarcaServlet", urlPatterns = {"/agregarMarca"})
public class AgregarMarcaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        Middleware middleware = new Middleware();
        
        if( middleware.esAdmin(request, response) ){
            request.getRequestDispatcher("agregarMarca.jsp").forward(request, response);
        } else{
            response.sendRedirect("inicio");
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        MarcaDAO marcaDAO = new MarcaDAO();
        
        Marca marca = new Marca();        
        marca.setMarcaNombre(request.getParameter("marcaNombre"));
        
        Marca marcaComprobar = marcaDAO.getMarcaByNombre(marca.getMarcaNombre());
        
        if( marcaComprobar.getMarcaNombre() != null ){
            String errorMarca = "La marca que intenta agregar ya existe";
            request.setAttribute("errorMarca", errorMarca);
        }else{
            marcaDAO.agregarMarca(marca);
            String mensajeMarca = "Marca agregada con exito";
            request.setAttribute("mensajeMarca", mensajeMarca);
        }
        
        doGet(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
