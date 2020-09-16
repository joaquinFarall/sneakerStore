
package ar.com.joaquin.sneakerstore.model.dao;

import ar.com.joaquin.sneakerstore.model.entities.Marca;
import ar.com.joaquin.sneakerstore.model.entities.Productos;
import ar.com.joaquin.sneakerstore.model.entities.Tipo;
import ar.com.joaquin.sneakerstore.utils.ConnectionManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ListadoDAO {
    public ArrayList<Productos> getListadoPorTipo(String tipo){
        
        ArrayList<Productos> listadoProductos = new ArrayList<>();
        
        try {
            ConnectionManager connectionManager = new ConnectionManager();
            Connection con = connectionManager.getConnection();
            
            Statement stm;
            ResultSet rs;
            String sql;
            
            sql = "SELECT * "+ 
                  "FROM `productos`, `tipo`, `marcas` "+ 
                  "WHERE productos.tipoId = tipo.tipoId "+ 
                  "AND productos.marcaId = marcas.marcaId "+ 
                  "AND tipo.tipo = '" + tipo + "'";
            
            stm = con.createStatement();
            rs = stm.executeQuery(sql);
            
            while(rs.next()){
                
                Productos producto = new Productos();
                
                producto.setProductoId(rs.getInt("productoId"));
                producto.setProductoNombre(rs.getString("productoNombre"));
                
                Tipo productoTipo = new Tipo();                
                productoTipo.setTipoId(rs.getInt("tipoId"));
                productoTipo.setTipo(rs.getString("tipo"));
                
                producto.setTipo(productoTipo);
                
                Marca marca = new Marca();
                marca.setMarcaId(rs.getInt("marcaId"));
                marca.setMarcaNombre(rs.getString("marcaNombre"));
                
                producto.setMarca(marca);
                producto.setProductoDescripcion(rs.getString("descripcion"));
                producto.setFoto1(rs.getString("foto1"));        
                producto.setFoto2(rs.getString("foto2"));
                producto.setFoto3(rs.getString("foto3"));
                producto.setPrecio(rs.getInt("precio"));
                
                listadoProductos.add(producto);
            }
            stm.close();
            rs.close();
            con.close(); 
        } catch (SQLException ex) {
            System.out.println("Error al obtener el listado de productos");
        }
        
        return listadoProductos;
    }
    
    public ArrayList<Productos> getListadoPorMarca(String marca){
        
        ArrayList<Productos> listadoProductos = new ArrayList<>();
        
        try {
            ConnectionManager connectionManager = new ConnectionManager();
            Connection con = connectionManager.getConnection();
            
            Statement stm;
            ResultSet rs;
            String sql;
            
            sql = "SELECT * "+ 
                  "FROM `productos`, `tipo`, `marcas` "+ 
                  "WHERE productos.tipoId = tipo.tipoId "+ 
                  "AND productos.marcaId = marcas.marcaId "+ 
                  "AND marcas.marcaNombre = '" + marca + "'";
            
            stm = con.createStatement();
            rs = stm.executeQuery(sql);
            
            while(rs.next()){
                
                Productos producto = new Productos();
                
                producto.setProductoId(rs.getInt("productoId"));
                producto.setProductoNombre(rs.getString("productoNombre"));
                
                Tipo tipo = new Tipo();                
                tipo.setTipoId(rs.getInt("tipoId"));
                tipo.setTipo(rs.getString("tipo"));
                
                producto.setTipo(tipo);
                
                Marca productoMarca = new Marca();
                productoMarca.setMarcaId(rs.getInt("marcaId"));
                productoMarca.setMarcaNombre(rs.getString("marcaNombre"));
                
                producto.setMarca(productoMarca);
                producto.setProductoDescripcion(rs.getString("descripcion"));
                producto.setFoto1(rs.getString("foto1"));
                producto.setFoto2(rs.getString("foto2"));
                producto.setFoto3(rs.getString("foto3"));
                producto.setPrecio(rs.getInt("precio"));
                
                listadoProductos.add(producto);
            }
            stm.close();
            rs.close();
            con.close(); 
        } catch (SQLException ex) {
            System.out.println("Error al obtener el listado de productos");
        }
        
        return listadoProductos;
    }
    
    public ArrayList<Productos> getListadoTodo(){
        
        ArrayList<Productos> listadoProductos = new ArrayList<>();
        
        try {
            ConnectionManager connectionManager = new ConnectionManager();
            Connection con = connectionManager.getConnection();
            
            Statement stm;
            ResultSet rs;
            String sql;
            
            sql = "SELECT * "+ 
                  "FROM `productos`, `tipo`, `marcas` "+ 
                  "WHERE productos.tipoId = tipo.tipoId "+ 
                  "AND productos.marcaId = marcas.marcaId";
            
            stm = con.createStatement();
            rs = stm.executeQuery(sql);
            
            while(rs.next()){
                
                Productos producto = new Productos();
                
                producto.setProductoId(rs.getInt("productoId"));
                producto.setProductoNombre(rs.getString("productoNombre"));
                
                Tipo tipo = new Tipo();                
                tipo.setTipoId(rs.getInt("tipoId"));
                tipo.setTipo(rs.getString("tipo"));
                
                producto.setTipo(tipo);
                
                Marca marca = new Marca();
                marca.setMarcaId(rs.getInt("marcaId"));
                marca.setMarcaNombre(rs.getString("marcaNombre"));
                
                producto.setMarca(marca);
                producto.setProductoDescripcion(rs.getString("descripcion"));
                producto.setFoto1(rs.getString("foto1"));
                producto.setFoto2(rs.getString("foto2"));
                producto.setFoto3(rs.getString("foto3"));
                producto.setPrecio(rs.getInt("precio"));
                
                listadoProductos.add(producto);
            }
            stm.close();
            rs.close();
            con.close(); 
            System.out.println("Consulta realizada con exito");
        } catch (SQLException ex) {
            System.out.println("Error al obtener el listado de productos");
        }
        
        return listadoProductos;
    }
    
    }
    
