/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.vs;

/**
 *
 * @author matthew
 */
import java.sql.*;
import com.mycompany.vs.DatabaseConnection;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




public class UserDAO {
        
public User checkLogin(String email, String password) throws SQLException {


     try {
         // Initialize the database
      Connection con = DatabaseConnection.initializeDatabase();
            
         
      String sql = "SELECT * FROM USER WHERE USER_EMAIL = ? and USER_PASSWORD = ?";
      PreparedStatement st = con.prepareStatement(sql);
      
      Statement myStmt = null;
      ResultSet myRs = null;
      
        st.setString(1, email);
        st.setString(2, password);
 
        ResultSet result = st.executeQuery();
        
         System.out.println("\nSTATEMENT PASSED TO DB: " + st);
        
            myStmt = con.createStatement();
            
            myRs = myStmt.executeQuery("SELECT USER_EMAIL, USER_PASSWORD FROM USER");
        
        //process result
            while (myRs.next())
            {
                System.out.println("");
                System.out.println(myRs.getString("USER_EMAIL"));
                System.out.println(myRs.getString("USER_PASSWORD"));
                
            }
        
        User user = new User();
       // User user = null;
        
            
        //    System.out.println(result.next());
        
 
        if (result.next() == true) {
            
            System.out.println("TRUE MATCH");
            
      /*      User user2 = new User();
            user2.setEmail(result.getString(email));
            user2.setPassword(password);
            */
      
            user.setEmail(email);
            user.setPassword(password);
            
            String isBaker = "baker@gmail.com";
            
            if(user.getEmail().equals(isBaker))
            {
                System.out.println("You are a baker:");
                user.setId(7);
                return user;
            }
            else
            {
                System.out.println("Is customer:");
                return user;
            }
          
        }
        else
        {
            System.out.println("User not in database, return null");
            user = null;
        }
      
        
      
 
         System.out.print("\n---------------------------\nConnection estd\n---------------------------\n");
         
            System.out.println("USER EQUALS: " + user);
         
         con.close();
         
        return user;

     }
        
     
     catch(Exception e)
             {
                 System.out.println("\n--------------------------\nCRITICAL ERROR \n--------------------------\n");
 //                System.out.println("User = " + user.getEmail() + " " + user.getPassword());
                 System.out.println("Email entered: " + email);
                 System.out.println("Password entered: " + password);
                 return null;
             }
     
}


}
     
    
     
 
       
 

 
        
/*
public static void main(String[] arg) throws SQLException{
User User = new User();
    UserDAO con = new UserDAO();
    con.checkLogin(User);
  }
}
*/