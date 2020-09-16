
package ar.com.joaquin.sneakerstore.servlets;

import ar.com.joaquin.sneakerstore.model.dao.ListadoDAO;
import ar.com.joaquin.sneakerstore.model.entities.Productos;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ListadoServlet", urlPatterns = {"/listado"})
public class ListadoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
                
            ListadoDAO listadoDAO = new ListadoDAO();
        
            String tipo = request.getParameter("tipo");

            String marca = request.getParameter("marca");

            if(tipo != null){

                //obtengo el listado por tipo
                ArrayList<Productos> listadoProductosPorTipo = listadoDAO.getListadoPorTipo(tipo);

                request.setAttribute("listadoProductosPorTipo", listadoProductosPorTipo);
                
            }else if(marca != null){

                //obtengo el listado por marca              
                ArrayList<Productos> listadoProductosPorMarca = listadoDAO.getListadoPorMarca(marca);

                request.setAttribute("listadoProductosPorMarca", listadoProductosPorMarca);

            }else{

            //obtengo el listado de todos los productos
            ArrayList<Productos> listadoTodosProductos = listadoDAO.getListadoTodo();

            request.setAttribute("listadoTodosProductos", listadoTodosProductos);

            }


            request.getRequestDispatcher("listado.jsp").forward(request, response);

    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
