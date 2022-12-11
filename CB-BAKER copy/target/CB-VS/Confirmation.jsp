<%-- 
    Document   : Confirmation
    Created on : Dec 3, 2022, 9:45:50 PM
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
        }

        .Container {
            height: 800px;
            width: 95%;
            background-color: white;
            margin: auto;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1 {
            font-size: 30px;
            padding-top: 30px;
        }

        p {
            font-size: 20px;
            margin: 20px;
        }

        .submitbtn {
            font-size: 20px;
            background-color: #A9AF7E;
            color: white;
            width: 80px;
            height: 50px;
            border: none;
            position: relative;
            top: 200px;
        }
    </style>
</head>

<body>
    <header-component></header-component>
    <div class="Container">
        <h1>Confirmation</h1>
        <h1>Order Successful!</h1>
        <br>
        <br>
        <br>
        <br>
        <br>
        <p>Please check back here for progress updates on your order</p>
        <br>
        <p>Order Received</p>
        <a href="Customer.jsp"><button class="submitbtn">return home</button></a>
<%
        GlobalOrderCount.OrderCounter = GlobalOrderCount.OrderCounter + 1;
        
        %>
        
    </div>
</body>

</html>
