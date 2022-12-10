/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.vs;

/**
 *
 * @author matthew
 */
public class User {

    private int id;
    private String user_password;
    private String user_email;

    private String Fname;
    private String Lname;
    
    private int orderID;

    
    
    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    
    public void setId(int id) {
        this.id = id;
    }

    public void setPassword(String user_password) {
        this.user_password = user_password;
    }

    public void setEmail(String user_email) {
        this.user_email = user_email;
    }

    public void setFname(String Fname) {
        this.Fname = Fname;
    }

    public void setLname(String Lname) {
        this.Lname = Lname;
    }

    public int getId() {
        return id;
    }

    public String getPassword() {
        return user_password;
    }

    public String getEmail() {
        return user_email;
    }

    public String getFname() {
        return Fname;
    }

    public String getLname() {
        return Lname;
    }
    
    
    
    
}


