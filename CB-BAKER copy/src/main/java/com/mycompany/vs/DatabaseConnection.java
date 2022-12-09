/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.vs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import java.sql.*;

/**
 *
 * @author matthew
 */
public class DatabaseConnection {
    protected static Connection initializeDatabase()
        throws SQLException, ClassNotFoundException
    {
        // Initialize all the information regarding
        // Database Connection
        String dbDriver = "com.mysql.jdbc.Driver";
        String dbURL = "jdbc:mysql:// localhost:3306/";
        // Database name to access
        String dbName = "bakerydb";
        String dbUsername = "root";
        String dbPassword = "MySQL2022!";
  
        Class.forName(dbDriver);
        Connection con = DriverManager.getConnection(dbURL + dbName,
                                                     dbUsername, 
                                                     dbPassword);
        return con;
    }
    
    /*
    public static void main(String[] args) throws SQLException {
        // TODO code application logic here
        
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;
        
        String user = "root";
        String pass = "MySQL2022!";
        
        try
        {
            //get connection
            myConn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/bakerydb", user, pass);
            
            myStmt = myConn.createStatement();
            
            myRs = myStmt.executeQuery("SELECT * FROM BAKER");
            
            //process result
            while (myRs.next())
            {
                System.out.println(myRs.getString("BAKER_LNAME"));
            }
            
        }
        catch(Exception exc)
        {
            exc.printStackTrace();
        }
        finally
        {
            if(myRs != null)
            {
                myRs.close();
            }
            if(myStmt != null)
            {
                myStmt.close();
            }
            if(myConn != null)
            {
                myConn.close();
            }
        
        }
        
    }
    */
    
}
