
package ar.com.joaquin.sneakerstore.servlets;

import ar.com.joaquin.sneakerstore.model.dao.UsuarioDAO;
import ar.com.joaquin.sneakerstore.model.entities.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegistroServlet", urlPatterns = {"/registro"})
public class RegistroServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        
        Usuario usuario = new Usuario();
        
        usuario.setUsuarioNombre(request.getParameter("nombre"));
        usuario.setApellido(request.getParameter("apellido"));
        usuario.setUsuarioEmail(request.getParameter("emailRegistro"));
        usuario.setContraseña(request.getParameter("passwordRegistro"));

        Usuario usuarioComprobar = new Usuario();
        usuarioComprobar = usuarioDAO.getUsuarioByEmail(usuario.getUsuarioEmail());
        
        InicioServlet inicioServlet = new InicioServlet();
        
        if( usuarioComprobar.getUsuarioEmail() != null ){
            
            String errorEmail = "El mail que intenta utilizar ya ha sido registrado";
            System.out.println(errorEmail);
            request.setAttribute("errorEmail", errorEmail);
            
        } else if ( !usuario.getContraseña().equals(request.getParameter("rePassword"))){
            
            String errorContraseña = "El campo 'Repetir contraseña' no coincide con el campo 'Contraseña'";
            System.out.println(errorContraseña);
            request.setAttribute("errorContraseña", errorContraseña);
            
        } else {
            
            usuarioDAO.crearUsuario(usuario);
            
            String mensaje = "Se ha registrado con exito!. Ya puede iniciar sesion";
            System.out.println(mensaje);
            
            request.setAttribute("mensaje", mensaje);
        }
        
        inicioServlet.doGet(request, response);
                
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
