
package ar.com.joaquin.sneakerstore.utils;

import ar.com.joaquin.sneakerstore.model.entities.Usuario;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Middleware {
    public boolean estaLogeado(HttpServletRequest request, HttpServletResponse response){
        
        boolean resultado = false;
        
        HttpSession session = request.getSession();
        Usuario usuario = null;
        
        try{
            usuario = (Usuario) session.getAttribute("usuario");
        } catch (NullPointerException ex) {
            System.out.println(ex);
        }
        
        if(usuario != null){
            resultado = true;
        }
        
        return resultado;
    }
    
    public boolean esAdmin(HttpServletRequest request, HttpServletResponse response){
    
        boolean resultado = false;

        HttpSession session = request.getSession();
        Usuario usuario = null;
        
        try{
            usuario = (Usuario) session.getAttribute("usuario");
        } catch (NullPointerException ex) {
            System.out.println(ex);
        }
        
        if( usuario != null && usuario.getUsuarioId() == 1){
            resultado = true;
        }
        
        return resultado;
    }
}
