/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.vs;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author matthew
 */
import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
 
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 *
 * @author matthew
 */
@WebServlet(name = "ProcessOrder", urlPatterns = {"/ProcessOrder"})
public class ProcessOrder extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
  
    protected void doPost(HttpServletRequest request, 
HttpServletResponse response)
        throws ServletException, IOException
    {
        try {
  
            // Initialize the database
            Connection con = DatabaseConnection.initializeDatabase();
  
            PreparedStatement st = con.prepareStatement(
                    "UPDATE ORDERS "
                            + "SET ORDER_DATE = CURRENT_TIMESTAMP,"
                            + " ORDER_PICKUP_DATE = ?,"
                            + " FINAL_PRICE = ?,"
                            + " STATUS_STATUS_ID = 1"
                            + " WHERE ORDER_ID = ?");
  
            //for testing:
     //       st.setInt(1, 1);
     //       st.setDouble(2, 1.99);
     
     // Read the values of the form fields
         //   int quantity = Integer.parseInt(request.getParameter("quantity"));
         //   String item = request.getParameter("cake");
            String userPickupDay = request.getParameter("pickup");
         
            PreparedStatement ps3 = con.prepareStatement(
            "SELECT PRICE_TOTAL FROM ITEMS_ORDERED WHERE ORDERS_ORDER_ID = ?"
            );
            
           
            int orderCount = GlobalOrderCount.OrderCounter;
            
            ps3.setInt(1, orderCount);
            
            System.out.println("GLOBAL ORDER COUNT IS: " + orderCount);
            System.out.println("ATTEMPT TO: " + ps3);
            
            ResultSet rs3 = ps3.executeQuery();
            
            double price = 0;
            
            while (rs3.next())
            {
                price = rs3.getInt(1);
            }
            
            System.out.println(price);
            
            
            System.out.println("User Selected Pickup Date as: " + userPickupDay);
            System.out.println("Final Price was pulled from DB as: " + price);
          //  System.out.println(item.equals("chocolate cake"));
            
          //read into quantities
            st.setString(1, userPickupDay);
            st.setDouble(2, price);
          
            st.setInt(3, GlobalOrderCount.OrderCounter);
            
            System.out.println("Global Count is: " + GlobalOrderCount.OrderCounter);
            System.out.println("CONNECTED: TRY" + st);
            
        Statement myStmt = null;
        ResultSet myRs = null;
        
        st.executeUpdate();
        
        
        //create a new user for order based on read in:
        PreparedStatement st5 = con.prepareStatement(
        "UPDATE CUSTOMER SET CUST_FNAME = ?, CUST_LNAME = ?, CUST_EMAIL = ? WHERE CUSTOMER_ID = ?"
        );
        
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        
        st5.setString(1, fname);
        st5.setString(2, lname);
        st5.setString(3, email);
        st5.setInt(4, orderCount);
        
        st5.executeUpdate();
        
        PreparedStatement st2 = con.prepareStatement(
                    "UPDATE CUSTOMER SET "
                            + "ORDERS_ORDER_ID = ?"
                            + " WHERE CUSTOMER_ID = ?");
  
       
        
        //CHANGE LATER TO WORK WITH CURRENT USER IF TIME
   //     int custCount = 1;
        int custCount = orderCount;
        //
        
        st2.setInt(1, orderCount);
        st2.setInt(2, custCount);
        
            System.out.println("ATTEMPT: " + st2);
        
        st2.executeUpdate();
        
        // Close all the connections
        st.close();
        st2.close();
        ps3.close();
        st5.close();
        con.close();
            
            String destPage = "Confirmation.jsp";
            
            HttpSession session = request.getSession();
            
            destPage = "Confirmation.jsp";
            
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
        
        
    }   catch (Exception ex)
    {
        System.out.println("\n\n--------ERROR---------");
        System.out.println(ex);
    }

    }
    
}
