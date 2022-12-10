/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.vs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author matthew
 */
@WebServlet(name = "ReadOrder", urlPatterns = {"/ReadOrder"})

public class ReadOrder extends HttpServlet {

    private static final long serialVersionUID = 1L;
  
    protected void doPost(HttpServletRequest request, 
HttpServletResponse response)
        throws ServletException, IOException
    {
        try {
  
            // Initialize the database
            Connection con = DatabaseConnection.initializeDatabase();
  
            PreparedStatement st = con.prepareStatement(
                    "UPDATE ITEMS_ORDERED SET ITEM_QUANTITY = ITEM_QUANTITY + ?, PRICE_TOTAL = PRICE_TOTAL + ? * ? WHERE ORDERS_ORDER_ID = ?");
  
            //for testing:
     //       st.setInt(1, 1);
     //       st.setDouble(2, 1.99);
     
     // Read the values of the form fields
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            String item = request.getParameter("cake");
            double itemPrice = 0;
            
            System.out.println("Item is: " + item);
            System.out.println("Quantity is: " + quantity);
          //  System.out.println(item.equals("chocolate cake"));
            
          //read into quantities
            st.setInt(1, quantity);
            st.setInt(2, quantity);
          
            //cakes
            if(item.equals("chocolate cake"))
            {
                itemPrice = 9.99;
                st.setDouble(3, (itemPrice));
                
            }
            if(item.equals("pink cake"))
            {
                itemPrice = 19.99;
                st.setDouble(3, (itemPrice));
            }
            if(item.equals("cone cake"))
            {
                itemPrice = 12.99;
                st.setDouble(3, (itemPrice));
            }
            if(item.equals("lemon cake"))
            {
                itemPrice = 12.99;
                st.setDouble(3, (itemPrice));
            }
            if(item.equals("fudge cake"))
            {
                itemPrice = 19.99;
                st.setDouble(3, (itemPrice));
            }
            //cupcakes
            if(item.equals("rocher cupcake"))
            {
                itemPrice = 3.99;
                st.setDouble(3, (itemPrice));
            }
            if(item.equals("oreo cupcake"))
            {
                itemPrice = 2.99;
                st.setDouble(3, (itemPrice));
            }
            if(item.equals("carmel cupcake"))
            {
                itemPrice = 3.99;
                st.setDouble(3, (itemPrice));
            }
            if(item.equals("velvet cupcake"))
            {
                itemPrice = 1.99;
                st.setDouble(3, (itemPrice));
            }
            if(item.equals("confetti cupcake"))
            {
                itemPrice = 1.99;
                st.setDouble(3, (itemPrice));
            }
            //bread
            if(item.equals("everything bagel"))
            {
                itemPrice = 2.99;
                st.setDouble(3, (itemPrice));
            }
            if(item.equals("sour loaf"))
            {
                itemPrice = 5.99;
                st.setDouble(3, (itemPrice));
            }
            if(item.equals("country rolls"))
            {
                itemPrice = 2.99;
                st.setDouble(3, (itemPrice));
            }
            if(item.equals("croissant"))
            {
                itemPrice = 3.99;
                st.setDouble(3, (itemPrice));
            }
            if(item.equals("wheat loaf"))
            {
                itemPrice = 5.99;
                st.setDouble(3, (itemPrice));
            }
            else
            {
                st.setDouble(3, itemPrice);
            }
            
        //    st.setInt(1, quantity);
        //    st.setInt(2, quantity);
        //    st.setDouble(2, itemPrice);
            
            st.setInt(4, GlobalOrderCount.OrderCounter);
            
            System.out.println("Global Count is: " + GlobalOrderCount.OrderCounter);
            System.out.println("CONNECTED: TRY" + st);
            
        Statement myStmt = null;
        ResultSet myRs = null;
        
        st.executeUpdate();
  
        // Close all the connections
        st.close();
        con.close();
            
            String destPage = "Order.jsp";
            
            HttpSession session = request.getSession();
            
            destPage = "Order.jsp";
            
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
        
        
    }   catch (Exception ex)
    {
        System.out.println("\n\n--------ERROR---------");
        System.out.println(ex);
    }

    }
    
}
