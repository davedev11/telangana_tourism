package tel_tour;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DB_conn_manager {
	 	private static final String JDBC_DRIVER = "org.postgresql.Driver";
	    private static final String DB_URL = "jdbc:postgresql://localhost:5432/db123";
	    private static final String USER = "postgres"; 
	    private static final String PASSWORD = "Hola@2022"; 
	
		
		  private DB_conn_manager() {
			  
		  }
		 

	    public static Connection getConnection() throws SQLException {
	        Connection conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
	        return conn;
	    }
}
/*
 * in your jsp page mention these:
 * 
 * 
  <%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
   <%@ page import="tel_tour.DB_conn_manager" %> 
   Connection conn = null;
  PreparedStatement stmt = null; 
  ResultSet rs = null;
  
  try { // Load the JDBC driver // Class.forName(JDBC_DRIVER);
  Class.forName("org.postgresql.Driver"); 
  conn = DB_conn_manager.getConnection(); 
  //Establish a connection to the database 
 * // conn =DriverManager.getConnection(DB_URL, USER, PASSWORD);
 * 
 * // Prepare a SQL statement to retrieve user data 
  String sql = "SELECT * FROM -------";
   stmt = conn.prepareStatement(sql); 
   stmt.setString(1,username);
rs = stmt.executeQuery(); 
   } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
 
 */