/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.vs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author matthew
 */
@WebServlet(name = "MasterReset", urlPatterns = {"/MasterReset"})
public class MasterReset extends HttpServlet {

private static final long serialVersionUID = 1L;
  
    protected void doPost(HttpServletRequest request, 
HttpServletResponse response)
        throws ServletException, IOException
    {
        try {
            
            /*
            
-- refresh data:

DELETE FROM ITEMS_ORDERED WHERE ORDERS_ORDER_ID > -1;
UPDATE CUSTOMER SET ORDERS_ORDER_ID = null WHERE CUSTOMER_ID > -1;
DELETE FROM ORDERS WHERE ORDER_ID > -1;
            */
  
            // Initialize the database
            Connection con = DatabaseConnection.initializeDatabase();
  
            PreparedStatement st1 = con.prepareStatement(
                    "DELETE FROM ITEMS_ORDERED WHERE ORDERS_ORDER_ID > -1");
            
            PreparedStatement st2 = con.prepareStatement(
                    "UPDATE CUSTOMER SET ORDERS_ORDER_ID = null WHERE CUSTOMER_ID > -1");
            
            PreparedStatement st3 = con.prepareStatement(
                    "DELETE FROM ORDERS WHERE ORDER_ID > -1");
  
        st1.executeUpdate();
        st2.executeUpdate();
        st3.executeUpdate();

        
        
        
        // Close all the connections
        st1.close();
        st2.close();
        st3.close();
        
        con.close();
            
            String destPage = "Baker.jsp";
            
            HttpSession session = request.getSession();
            
            destPage = "Baker.jsp";
            
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
        
        
    }   catch (Exception ex)
    {
        System.out.println("\n\n--------ERROR---------");
        System.out.println(ex);
    }

    }
    
}

