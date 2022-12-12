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
    <script src="components/header.js" type="text/javascript" defer></script>
    <style>
        body {
            background-image: url("images/bakeryBG.jpg");
        }

        li {
            padding: 50px;
        }

        .infobtn {
            padding: 0;
        }

        h1 {
            padding: 0;
        }

        .headers {
            display: flex;
            width: 100%;
            justify-content: space-around;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        td,
        th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 20px;
        }
        th{
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #e9e9e9;
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
        //  ResultSet resultset = statement.executeQuery("SELECT * FROM ORDERS") ;
          
          ResultSet rs = statement.executeQuery("SELECT C.CUST_FNAME, C.CUST_LNAME, I.ITEM_QUANTITY, O.ORDER_DATE FROM CUSTOMER C INNER JOIN ORDERS O ON C.ORDERS_ORDER_ID=O.ORDER_ID INNER JOIN ITEMS_ORDERED I ON O.ORDER_ID=I.ORDERS_ORDER_ID");

       %>
            
            
            <table>
                
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Item Quantity</th>
                    <th>Order Date </th>
                </tr>
                
                <tr>
                <% while (rs.next()) { %>
    
                <td><%= rs.getString("CUST_FNAME") %></td>
                <td><%= rs.getString("CUST_LNAME") %></td>
                <td><%= rs.getString("ITEM_QUANTITY") %></td>
                <td><%= rs.getString("ORDER_DATE") %></td>
                </tr>
                    
                <% } %>
                
                
            </table>
            </div>

                
     <form action="BakerMasterReset.jsp" method="GET">
    <input type="submit" value="Reset Values">
    </form>
                
</body>

</html>