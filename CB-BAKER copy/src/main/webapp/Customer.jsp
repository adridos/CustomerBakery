<%-- 
    Document   : Customer
    Created on : Dec 3, 2022, 9:46:22 PM
    Author     : matthew
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mycompany.vs.GlobalOrderCount"%>
<%@page import="com.mycompany.vs.User"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
    <title>TheBakery</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="main.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="header.js" type="text/javascript" defer></script>
    <style>
        body {
            background-image: url("images/bakeryBG.jpg");
            background-size: 100% ;
        }
    </style>
</head>
<body>
    <header-component></header-component>
    <div class="btnContainer">
        
        
        <%
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
           Statement statement = con.createStatement() ;
           
           User user = new User();
           
           // Update the OrderCounter variable with the latest value from the database
            GlobalOrderCount.OrderCounter = GlobalOrderCount.refreshOrder();
           
           user.setOrderID(GlobalOrderCount.OrderCounter);
           
           GlobalOrderCount.OrderCounter = GlobalOrderCount.OrderCounter + 1;
           
           int CURRENTOrderID = user.getOrderID();
           
           PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO ORDERS(ORDER_ID) VALUES (? + 1)");
          
           preparedStatement.setInt(1, CURRENTOrderID);
           
           int rowsAffected = preparedStatement.executeUpdate();
           
           PreparedStatement preparedStatement2 = con.prepareStatement("INSERT INTO ITEMS_ORDERED(ITEM_QUANTITY, PRICE_TOTAL, MENU_ITEM_ITEM_ID, ORDERS_ORDER_ID) VALUES (0, 0.00, 1, ? + 1)");
          
           preparedStatement2.setInt(1, CURRENTOrderID);
           
           int rowsAffected2 = preparedStatement2.executeUpdate();

       %>
        
        
        <a href="Order.jsp"><button class="btn">Order</button></a>
    </div>
</body>
</html>