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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
 
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
 
@WebServlet(name = "UserLoginServlet", urlPatterns = {"/Index"})
public class UserLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public UserLoginServlet() {
        super();
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Email = request.getParameter("email");
        String Password = request.getParameter("password");

        
        UserDAO userDao = new UserDAO();
        
       
        try {
            
            User user = userDao.checkLogin(Email, Password);
            
         //   System.out.println(user.getEmail());
            
            String destPage = "Index.jsp";
            
            System.out.println("\n\n----\n" + user);

        
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            
            if(user.getId() == 7)
            {
                destPage = "Baker.jsp";
            }
            else
            {
            destPage = "Customer.jsp";
            }
        } else {
            String message = "Invalid email/password";
            request.setAttribute("message", message);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
        dispatcher.forward(request, response);
        
        }
        catch(Exception e)
                {
                System.out.println("error");
                e.printStackTrace();
                }

    }
}











