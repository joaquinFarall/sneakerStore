
package ar.com.joaquin.sneakerstore.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionManager {
    public Connection getConnection(){
    
    String user = "root";
    String password = "";
    String dataBase = "sneakerstore_db";
    String host = "localhost";
    String port = "3306";
    String timeZone = "UTC";       
    
    String url;
    Connection con = null;
    Statement stm;
    String sql;
    ResultSet rs;
    
    url = "jdbc:mysql://" + host + ":" + port + "/" + dataBase + "?user=" + user + "&password=" + password + "&serverTimezone=" + timeZone;
    
    try {          
           Class.forName("com.mysql.cj.jdbc.Driver");
            
           System.out.println("Driver loaded succesfully");
            
           con = DriverManager.getConnection ( url );
            
           System.out.println("Connected succesfully");
            
        } catch (ClassNotFoundException ex) {
           System.out.println("Error: Unable to load MySQL Driver");
        } catch (SQLException ex) {
           System.out.println("Error: Unable to connect with the data base");
           System.out.println( ex.getMessage());
        }
    
    return con;
}
}
