
package ar.com.joaquin.sneakerstore.model.dao;

import ar.com.joaquin.sneakerstore.model.entities.Usuario;
import ar.com.joaquin.sneakerstore.utils.ConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {
    public void crearUsuario(Usuario usuario){
        try{
            ConnectionManager connectionManager = new ConnectionManager();
            Connection con = connectionManager.getConnection();
            
            PreparedStatement stm;
            String sql;
            
            sql = "INSERT INTO usuarios(usuarioNombre, apellido, email, contraseña) " + 
                  "VALUES (?, ?, ?, ?)";
            
            stm = con.prepareStatement(sql);
            
            stm.setString(1, usuario.getUsuarioNombre());
            stm.setString(2, usuario.getApellido());
            stm.setString(3, usuario.getUsuarioEmail());
            stm.setString(4, usuario.getContraseña());
            
            stm.executeUpdate();
            
            stm.close();
            con.close();
            
            System.out.println("Usuario creado con exito!");
            
        } catch (SQLException ex) {
            System.out.println("Error al crear un nuevo usuario");
        }       
    }
    
    public Usuario getUsuarioByEmail(String email){
        Usuario usuario = new Usuario();
        
        try{
            ConnectionManager connectionManager = new ConnectionManager();
            Connection con = connectionManager.getConnection();
            
            PreparedStatement stm;
            ResultSet rs;
            String sql;
            
            sql = "SELECT * FROM usuarios WHERE email = '" + email + "'";
            
            stm = con.prepareStatement(sql);              
            rs = stm.executeQuery();
            
            if( rs.next() ){
            
                usuario.setUsuarioId(rs.getInt("usuarioId"));
                usuario.setUsuarioNombre(rs.getString("usuarioNombre"));
                usuario.setApellido(rs.getString("apellido"));
                usuario.setUsuarioEmail(rs.getString("email"));
                usuario.setContraseña(rs.getString("contraseña"));
                
            }
            
            stm.close();
            rs.close();
            con.close();
            
        } catch (SQLException ex) {
            System.out.println("Error al obtener el usuario");
            System.out.println(ex);
        }
        
        return usuario;
    }
    
     public Usuario getUsuarioById(String id){
        Usuario usuario = new Usuario();
        
        try{
            ConnectionManager connectionManager = new ConnectionManager();
            Connection con = connectionManager.getConnection();
            
            PreparedStatement stm;
            ResultSet rs;
            String sql;
            
            sql = "SELECT * FROM usuarios WHERE usuarioId = '" + id + "'";
            
            stm = con.prepareStatement(sql);              
            rs = stm.executeQuery();
            
            if( rs.next() ){
            
                usuario.setUsuarioId(rs.getInt("usuarioId"));
                usuario.setUsuarioNombre(rs.getString("usuarioNombre"));
                usuario.setApellido(rs.getString("apellido"));
                usuario.setUsuarioEmail(rs.getString("email"));
                usuario.setContraseña(rs.getString("contraseña"));
                
            }
            
            stm.close();
            rs.close();
            con.close();
            
        } catch (SQLException ex) {
            System.out.println("Error al obtener el usuario");
            System.out.println(ex);
        }
        
        return usuario;
    }
}
