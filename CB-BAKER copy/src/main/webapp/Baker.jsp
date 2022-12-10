<%-- 
    Document   : Baker
    Created on : Dec 3, 2022, 9:42:29 PM
    Author     : matthew
--%>

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
        li{
            padding: 50px;
        }
        .infobtn{
            padding:0;
        }
        h1{
            padding:0;
        }
        .headers{
            display: flex;
            width: 100%;
            justify-content: space-around;
        }

        tables{
            border: 10px solid black;
            width: 100%;
        }

    </style>
</head>

<body>
    <header>
        <div class="header-container">
            <div class="home"><a href="Index.jsp">The Bakery</a></div>
        </div>
    </header>
    <div class="Container">
        <div class="headers">
            <ul>
                <li><h1>Order ID:</h1></li>
                <li><h1>Order Date:</h1></li>
                <li><h1>Pickup Date: </h1></li>
                <li><h1>Order Notes:</h1></li>
                <li><a href="BakerDetails.jsp"><button class="infobtn">more info</button></a></li>
            </ul>
            
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
          ResultSet resultset = statement.executeQuery("SELECT * FROM ORDERS") ;
       %>
       
        </div>
       
       <div>
       
    <table style="tables" class="center">
  <tr>
    <% while (resultset.next()) { %>
    
    <td><%= resultset.getInt(1) %></td>
    <td><%= resultset.getString(2) %></td>
    <td><%= resultset.getString(3) %></td>
    <td><%= resultset.getString(4) %></td>
    
    <% } %>
  </tr>
</table>
  
    </div>
</body>

</html>