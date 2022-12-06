<%-- 
    Document   : Baker
    Created on : Dec 3, 2022, 9:42:29 PM
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
                <li><h1>Last Name</h1></li>
                <li><h1>First Name</h1></li>
                <li><h1>Order Date </h1></li>
                <li><h1>Item Quantity</h1></li>
                <li><a href="BakerDetails.jsp"><button class="infobtn">more info</button></a></li>
            </ul>
    </div>
</body>

</html>