
package ar.com.joaquin.sneakerstore.model.dao;

import ar.com.joaquin.sneakerstore.model.entities.Marca;
import ar.com.joaquin.sneakerstore.model.entities.Productos;
import ar.com.joaquin.sneakerstore.model.entities.Tipo;
import ar.com.joaquin.sneakerstore.utils.ConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MarcaDAO {
    public void agregarMarca(Marca marca){
       try{
        ConnectionManager connectionManager = new ConnectionManager();
        Connection con = connectionManager.getConnection();
        
        PreparedStatement stm;
        String sql;
        
        sql = "INSERT INTO marcas(marcaNombre) " + 
              "VALUES (?)";
        
        stm = con.prepareStatement(sql);
        stm.setString(1, marca.getMarcaNombre());
        
        stm.executeUpdate();
        
        stm.close();
        con.close();
        
        System.out.println("Marca agregada con exito");
        
       } catch (SQLException ex) {
           System.out.println(ex);
            System.out.println("Error al agregar marca");
        }  
    }
    
    public Marca getMarcaByNombre(String marcaNombre){
        Marca marca = new Marca();
        try{
            ConnectionManager connectionManager = new ConnectionManager();
            Connection con = connectionManager.getConnection();
            
            PreparedStatement stm;
            ResultSet rs;
            String sql;
            
            sql = "SELECT * FROM marcas WHERE marcaNombre = '" + marcaNombre + "'";
            
            stm = con.prepareStatement(sql);              
            rs = stm.executeQuery();
            
            if( rs.next() ){
            
                marca.setMarcaId(rs.getInt("marcaId"));
                marca.setMarcaNombre(rs.getString("marcaNombre"));
                
            }
            
            stm.close();
            rs.close();
            con.close();
            
        } catch (SQLException ex) {
            System.out.println("Error al obtener la marca");
            System.out.println(ex);
        }
        
        return marca;
    }
    
    public Marca getMarcaById(int marcaId){
        Marca marca = new Marca();
        try{
            ConnectionManager connectionManager = new ConnectionManager();
            Connection con = connectionManager.getConnection();
            
            PreparedStatement stm;
            ResultSet rs;
            String sql;
            
            sql = "SELECT * FROM marcas WHERE marcaId = '" + marcaId + "'";
            
            stm = con.prepareStatement(sql);              
            rs = stm.executeQuery();
            
            if( rs.next() ){
            
                marca.setMarcaId(rs.getInt("marcaId"));
                marca.setMarcaNombre(rs.getString("marcaNombre"));
                
            }
            
            stm.close();
            rs.close();
            con.close();
            
        } catch (SQLException ex) {
            System.out.println("Error al obtener la marca");
            System.out.println(ex);
        }
        
        return marca;
    }
    
    public ArrayList<Marca> todasLasMarcas(){
        
        ArrayList<Marca> marcas = new ArrayList<>();
        try {
            ConnectionManager connectionManager = new ConnectionManager();
            Connection con = connectionManager.getConnection();
            
            Statement stm;
            ResultSet rs;
            String sql;
            
            sql = "SELECT * "+ 
                  "FROM `marcas`";
            
            stm = con.createStatement();
            rs = stm.executeQuery(sql);
            
            while(rs.next()){
                
                Marca marca = new Marca();
                
                marca.setMarcaId(rs.getInt("marcaId"));
                marca.setMarcaNombre(rs.getString("marcaNombre"));
                
                marcas.add(marca);
            }
            stm.close();
            rs.close();
            con.close(); 
            System.out.println("marcas obtenidas correctamente");
        } catch (SQLException ex) {
            System.out.println("Error al obtener las marcas");
        }
        
        return marcas;
    }
    
}
