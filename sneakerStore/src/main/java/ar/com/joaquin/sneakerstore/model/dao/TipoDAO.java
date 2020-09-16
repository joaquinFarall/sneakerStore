
package ar.com.joaquin.sneakerstore.model.dao;

import ar.com.joaquin.sneakerstore.model.entities.Tipo;
import ar.com.joaquin.sneakerstore.utils.ConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class TipoDAO {
    public ArrayList<Tipo> todosLosTipos(){
        ArrayList<Tipo> tipos = new ArrayList<>();
        try {
            ConnectionManager connectionManager = new ConnectionManager();
            Connection con = connectionManager.getConnection();
            
            Statement stm;
            ResultSet rs;
            String sql;
            
            sql = "SELECT * "+ 
                  "FROM `tipo`";
            
            stm = con.createStatement();
            rs = stm.executeQuery(sql);
            
            while(rs.next()){
                
                Tipo tipo = new Tipo();
                
                tipo.setTipoId(rs.getInt("tipoId"));
                tipo.setTipo(rs.getString("tipo"));
                
                tipos.add(tipo);
            }
            stm.close();
            rs.close();
            con.close(); 
        } catch (SQLException ex) {
            System.out.println("Error al obtener el listado de productos");
        }
        
        return tipos;
    }
    
    public Tipo getTipoById(int tipoId){
        Tipo tipo = new Tipo();
        try{
            ConnectionManager connectionManager = new ConnectionManager();
            Connection con = connectionManager.getConnection();
            
            PreparedStatement stm;
            ResultSet rs;
            String sql;
            
            sql = "SELECT * FROM tipo WHERE tipoId = '" + tipoId + "'";
            
            stm = con.prepareStatement(sql);              
            rs = stm.executeQuery();
            
            if( rs.next() ){
            
                tipo.setTipoId(rs.getInt("tipoId"));
                tipo.setTipo(rs.getString("tipo"));
                
            }
            
            stm.close();
            rs.close();
            con.close();
            
        } catch (SQLException ex) {
            System.out.println("Error al obtener el tipo");
            System.out.println(ex);
        }
        
        return tipo;
    }
}
