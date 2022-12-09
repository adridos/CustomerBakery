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
                    "UPDATE  ");
  
            
            
        Statement myStmt = null;
        ResultSet myRs = null;
        
        
        
        
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

}
