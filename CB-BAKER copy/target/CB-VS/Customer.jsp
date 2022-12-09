<%-- 
    Document   : Customer
    Created on : Dec 3, 2022, 9:46:22 PM
    Author     : matthew
--%>

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
        <a href="Order.jsp"><button class="btn">Order</button></a>
    </div>
</body>
</html>