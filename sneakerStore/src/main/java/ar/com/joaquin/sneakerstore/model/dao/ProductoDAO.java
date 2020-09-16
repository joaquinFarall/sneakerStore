
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

public class ProductoDAO {
    public Productos getProducto(int productoId){
        Productos producto = new Productos();
        
        try{
            ConnectionManager connectionManager = new ConnectionManager();
            Connection con = connectionManager.getConnection();
            
            Statement stm;
            ResultSet rs;
            String sql;
            
            sql = "SELECT * "
                  + "FROM `productos`, `tipo`, `marcas` "
                  + "WHERE marcas.marcaId = productos.marcaId "
                  + "AND tipo.tipoId = productos.tipoId "
                  + "AND productos.productoId = " + productoId;
            
            stm = con.createStatement();
            rs = stm.executeQuery(sql);
            
            if(rs.next()){
            
            producto.setProductoId(rs.getInt("productoId"));
            producto.setProductoNombre(rs.getString("productoNombre"));
            
            Marca marca = new Marca();
            marca.setMarcaId(rs.getInt("marcaId"));
            marca.setMarcaNombre(rs.getString("marcaNombre"));
            producto.setMarca(marca);
            
            Tipo tipo = new Tipo();
            tipo.setTipoId(rs.getInt("tipoId"));
            tipo.setTipo(rs.getString("tipo"));
            producto.setTipo(tipo);
            
            producto.setProductoDescripcion(rs.getString("descripcion"));
            producto.setPrecio(rs.getInt("precio"));
            producto.setFoto1(rs.getString("foto1"));
            producto.setFoto2(rs.getString("foto2"));
            producto.setFoto3(rs.getString("foto3"));
            
            }
            
            stm.close();
            rs.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println("Error al obtener el producto");
        }
        return producto;
    }
    
    public Productos getProductoByNombre(String productoNombre){
        Productos producto = new Productos();
        
        try{
            ConnectionManager connectionManager = new ConnectionManager();
            Connection con = connectionManager.getConnection();
            
            Statement stm;
            ResultSet rs;
            String sql;
            
            sql = "SELECT * "
                  + "FROM `productos`, `tipo`, `marcas` "
                  + "WHERE marcas.marcaId = productos.marcaId "
                  + "AND tipo.tipoId = productos.tipoId "
                  + "AND productos.productoNombre = " + productoNombre;
            
            stm = con.createStatement();
            rs = stm.executeQuery(sql);
            
            if(rs.next()){
            
            producto.setProductoId(rs.getInt("productoId"));
            producto.setProductoNombre(rs.getString("productoNombre"));
            
            Marca marca = new Marca();
            marca.setMarcaId(rs.getInt("marcaId"));
            marca.setMarcaNombre(rs.getString("marcaNombre"));
            producto.setMarca(marca);
            
            Tipo tipo = new Tipo();
            tipo.setTipoId(rs.getInt("tipoId"));
            tipo.setTipo(rs.getString("tipo"));
            producto.setTipo(tipo);
            
            producto.setProductoDescripcion(rs.getString("descripcion"));
            producto.setPrecio(rs.getInt("precio"));
            producto.setFoto1(rs.getString("foto1"));
            producto.setFoto2(rs.getString("foto2"));
            producto.setFoto3(rs.getString("foto3"));
            
            }
            
            stm.close();
            rs.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println("Error al obtener el producto");
        }
        return producto;
    }
    
    public void agregarProducto(Productos producto){
       try{
        ConnectionManager connectionManager = new ConnectionManager();
        Connection con = connectionManager.getConnection();
        
        PreparedStatement stm;
        String sql;
        
        sql = "INSERT INTO usuarios(marcaId, productoNombre, descripcion, tipoId, foto1, foto2, foto3, precio) " + 
              "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        
        stm = con.prepareStatement(sql);
        
        stm.setInt(1, producto.getMarca().getMarcaId());
        stm.setString(2, producto.getProductoNombre());
        stm.setString(3, producto.getProductoDescripcion());
        stm.setInt(4, producto.getTipo().getTipoId());
        stm.setString(5, producto.getFoto1());
        stm.setString(6, producto.getFoto2());
        stm.setString(7, producto.getFoto3());
        stm.setInt(8, producto.getPrecio());
        
        stm.executeUpdate();
        
        stm.close();
        con.close();
        
        System.out.println("Producto agregada con exito");
        
       } catch (SQLException ex) {
           System.out.println(ex);
            System.out.println("Error al agregar el producto");
        }  
    }
}
