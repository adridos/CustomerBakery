<%-- 
    Document   : Checkout
    Created on : Dec 3, 2022, 9:44:27 PM
    Author     : matthew
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mycompany.vs.GlobalOrderCount"%>
<%@page import="com.mycompany.vs.User"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); %>

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
        }

        .checkoutContainer {
            height: 800px;
            width: 95%;
            background-color: white;
            margin: auto;
        }

        h1 {
            font-size: 25px;
            padding-top: 10px;
            color: black;
        }

        .twodiv {
            display: flex;
            flex-direction: row;
            justify-content: center;
        }

        .checkoutdiv {
            display: flex;
            justify-content: flex-start;
            width: 100%;
            padding: 20px;
            flex-direction: column;
            margin-left: 10px;
        }

        .orderdiv {
            display: flex;
            justify-content: flex-start;
            width: 100%;
            padding: 20px;
            flex-direction: column;
        }

        label {
            font-size: 20px;
        }

        input {
            font-size: 15px;
        }

        .submitbtn {
            font-size: 20px;
            margin-left: 30px;
            background-color: #A9AF7E;
            color: white;
            width: 80px;
            height: 50px;
            border: none;
            position: relative;
            left: 45%;
            top: 200px;
        }
    </style>
</head>

<body>
    <header-component></header-component>
    <div class="checkoutContainer">
    
    <form action="ProcessOrder" method="post">
        
        
        <div class="twodiv">
            <div class="checkoutdiv">
                <h1>Checkout Info</h1>
                <br>
                <label>Pick-up date</label>
                <input type="date" id="pickup" name="pickup">
                <br>
                <label>First Name</label>
                <input type="text" id="fname" name="fname">
                <br>
                <label>Last Name</label>
                <input type="text" id="lname" name="lname">
                <br>
                <label>Phone Number</label>
                <input type="tel" id="fname" name="fname">
                <br>
                <label>Email</label>
                <input type="email" id="fname" name="fname">
                <br>
                <div class="paymentOptions">
                    <label>Credit Card</label>
                    <input type="radio" id="fname" name="fname">
                    <label>Debit Card</label>
                    <input type="radio" id="fname" name="fname">
                    <label>Cash</label>
                    <input type="radio" id="fname" name="fname">
                </div>
                <br>



            </div>
            <div class="orderdiv">
                
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
          PreparedStatement ps = con.prepareStatement("SELECT * FROM ITEMS_ORDERED WHERE ORDERS_ORDER_ID = ?") ;
          
          int counter = GlobalOrderCount.OrderCounter;
          
          ps.setInt(1, counter);
          
          ResultSet rs = ps.executeQuery();

       %>
                
                
                <h1>Order Details</h1>
                <%
        while (rs.next()) {
           // String itemName = resultset.getString("item_name");
            int itemQuantity = rs.getInt("ITEM_QUANTITY");
            double itemPrice = rs.getDouble("PRICE_TOTAL");
            out.println("<p>" + "Total Items: " + itemQuantity + "</p>" + "<p>" + "Total Price: $" + itemPrice + "</p>");
        }
    %>
                
            </div>
        </div>
        <a href="Confirmation.jsp"><button class="submitbtn">Submit</button></a>
    </div>
</body>

</html>
