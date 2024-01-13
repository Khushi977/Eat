
package com.tech.blog.helper;
import java.sql.*;

public class ConnectionProvider 
{
    private static Connection con;
    public static Connection getConnection()
    {
    
        try{
        
        if(con == null)
        {
        //Driver class load  
        Class.forName("oracle.jdbc.OracleDriver");
        
        //create a connection..
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/ORCL","SYSTEM", "database");
        }
       
        }
        catch(Exception e)
                
         {
       e.printStackTrace();
         
         
         }
        
        return con;
    }
    
}
