/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.vs;

import static com.mycompany.vs.GlobalOrderCount.OrderCounter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author matthew
 */
//public class GlobalOrderCount {
    
    //if more time implement way to pull from database last value
    
 //   public static int OrderCounter;
   
public class GlobalOrderCount {
    
    //if more time implement way to pull from database last value
    
    public static int OrderCounter;
    
    public static void main(String[] args) throws SQLException {
        // Update the OrderCounter variable
        
        OrderCounter = refreshOrder();
    }
    
    public static int refreshOrder() throws SQLException {
        int count = 0;

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

            myRs = myStmt.executeQuery("SELECT max(ORDER_ID) FROM ORDERS");

            //process result
            while (myRs.next())
            {
                System.out.println(myRs.getInt("max(ORDER_ID)"));
                count = myRs.getInt("max(ORDER_ID)");
            }

          //  System.out.println(OrderCounter);
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

        return count;
    
    }
   
    
    
    
}