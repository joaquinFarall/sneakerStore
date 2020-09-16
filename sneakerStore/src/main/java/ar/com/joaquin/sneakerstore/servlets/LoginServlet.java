
package ar.com.joaquin.sneakerstore.servlets;

import ar.com.joaquin.sneakerstore.model.dao.UsuarioDAO;
import ar.com.joaquin.sneakerstore.model.entities.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

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
        
        Usuario usuarioForm = new Usuario();
        usuarioForm.setUsuarioEmail(request.getParameter("emailLogin"));
        usuarioForm.setContraseña(request.getParameter("passwordLogin"));
        
        Usuario usuarioDB = null;
        usuarioDB = usuarioDAO.getUsuarioByEmail(usuarioForm.getUsuarioEmail());
        
        InicioServlet inicioServlet = new InicioServlet();
        
        if( usuarioDB == null || !usuarioForm.getContraseña().equals(usuarioDB.getContraseña()) ){
        
            String error = "E-mail o contraseña incorrectos";
            System.out.println(error);
            request.setAttribute("loginError", error);
            inicioServlet.doGet(request, response);
            
        } else {
            System.out.println("Logeado con exito!");
            
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuarioDB);
            System.out.println(usuarioDB.getUsuarioNombre());
            Cookie idCookie = new Cookie("id", String.valueOf(usuarioDB.getUsuarioId()));
            
            response.addCookie(idCookie);
        }
                       
        inicioServlet.doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
