<%-- 
    Document   : Order
    Created on : Dec 9, 2022, 9:21:44 AM
    Author     : matthew
--%>

<%@page import="com.mycompany.vs.GlobalUser"%>
<%@page import="com.mycompany.vs.GlobalOrderCount"%>
<%@page import="com.mycompany.vs.User"%>
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

        .orderContainer {
            height: 80%;
            background-color: white;
            width: 95%;
            margin: auto;
        }

        .itemContainer {
            height: 230px;
            padding-left: 10px;
            padding-top: 10px;
            overflow-x: scroll;
            overflow-y: hidden;
            white-space: nowrap;
        }

        h1 {
            font-size: 20px;
            padding-top: 10px;
        }

        .item {
            height: 80%;
            width: 250px;
            padding: 5px;
        }

        .cart {
            background-color: #EEE3CB;
            padding: 20px;
            margin: auto;
            display: flex;
            align-items: center;
            justify-content: space-evenly;
        }

        h2 {
            color: black;
            font-size: 25px;
        }

        .checkoutbtn {
            background-color: white;
            color: black;
            font-size: 20px;
            border-radius: 10px;
            padding: 10px;
            border: none;
            text-decoration: none;
        }

        .black_overlay {
            display: none;
            position: absolute;
            top: 0%;
            left: 0%;
            width: 100%;
            height: 100%;
            background-color: black;
            z-index: 1001;
            -moz-opacity: 0.8;
            opacity: .80;
            filter: alpha(opacity=80);
        }

        .white_content {
            display: none;
            position: absolute;
            top: 25%;
            left: 25%;
            width: 50%;
            height: 50%;
            padding: 16px;
            background-color: white;
            z-index: 1002;
            overflow: auto;
        }

        .close {
            color: black;
            text-transform: lowercase;
            font-size: 20px;
            display: flex;
            align-items: center;
            flex-direction: column;
        }

        .addbtn {
            background-color: #90A17D;
            color: black;
            font-size: 20px;
            border-radius: 10px;
            padding: 10px;
            text-decoration: none;
            margin-top: 20px;
        }

        .itemHeaders {
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            align-items: center;
            padding: 20px;
        }

        .closebtn {
            background-color: grey;
            color: black;
            font-size: 20px;
            border-radius: 10px;
            padding: 10px;
            text-decoration: none;

        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        p{
            padding: 10px;
            margin:0px;
        }
    </style>
</head>

<body>
    <header-component></header-component>
    <div class="orderContainer">
        <div class="scrolling">
            <div class="itemContainer">
                <h1>Cakes</h1>
                <div id="fade" class="black_overlay"></div>

                <a href="javascript:void(0)"
                    onclick="document.getElementById('light1').style.display='block';document.getElementById('fade').style.display='block'">
                    <img class="item" src="images/cake1.jpg"></a>
                <div id="light1" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name: Double Chocolate Cake</p>
                        <p>Item Description: Amazing Chocolate Cake</p>
                        <p>Item Price:$9.99 </p>
                        <p>Item Quantity: </p>
                    </div>
                    <form action="ReadOrder" method="post">
                        <input type="text" id="quantity1" name="quantity">
                        <button class="addbtn" type="submit" name="cake" value="chocolate cake">add to cart</button>
                    </form>
                    <a class="close" href="javascript:void(0)"
                        onclick="document.getElementById('light1').style.display='none';document.getElementById('fade').style.display='none'">
                        <button class="closebtn">Close</button></a>
                </div>

                <a href="javascript:void(0)"
                    onclick="document.getElementById('light2').style.display='block';document.getElementById('fade').style.display='block'">
                    <img class="item" src="images/cake2.jpg"></a>
                <div id="light2" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name: Fancy Pink Cake</p>
                        <p>Item Description: Pink cake with fancy icing</p>
                        <p>Item Price: $19.99 </p>
                        <p>Item Quantity: </p>
                    </div>
                    <form action="ReadOrder" method="post">

                        <input type="text" id="quantity2" name="quantity">

                        <button class="addbtn" type="submit" name="cake" value="pink cake">add to cart</button>
                    </form>

                    <a class="close" href="javascript:void(0)"
                        onclick="document.getElementById('light2').style.display='none';document.getElementById('fade').style.display='none'"><button
                            class="closebtn">Close</button></a>
                </div>

                <a href="javascript:void(0)"
                    onclick="document.getElementById('light3').style.display='block';document.getElementById('fade').style.display='block'">
                    <img class="item" src="images/cake3.jpg"></a>
                <div id="light3" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name: Upside Down Icecream Cone Cake</p>
                        <p>Item Description: Icecream cone inspired cake</p>
                        <p>Item Price: $12.99</p>
                        <p>Item Quantity: </p>
                    </div>

                    <form action="ReadOrder" method="post">

                        <input type="text" id="quantity3" name="quantity">
                        <button class="addbtn" type="submit" name="cake" value="cone cake">add to cart</button>
                    </form>

                    <a class="close" href="javascript:void(0)"
                        onclick="document.getElementById('light3').style.display='none';document.getElementById('fade').style.display='none'"><button
                            class="closebtn">Close</button></a>
                </div>
                <div id="fade" class="black_overlay"></div>

                <a href="javascript:void(0)"
                    onclick="document.getElementById('light4').style.display='block';document.getElementById('fade').style.display='block'">
                    <img class="item" src="images/cake4.jpg"></a>
                <div id="light4" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name: Lemon Chocolate Cake</p>
                        <p>Item Description: A delicious lemon cake with hrd chocolate topping</p>
                        <p>Item Price: $12.99 </p>
                        <p>Item Quantity: </p>
                    </div>

                    <form action="ReadOrder" method="post">

                        <input type="text" id="quantity4" name="quantity">
                        <button class="addbtn" type="submit" name="cake" value="lemon cake">add to cart</button>
                    </form>

                    <a class="close" href="javascript:void(0)"
                        onclick="document.getElementById('light4').style.display='none';document.getElementById('fade').style.display='none'"><button
                            class="closebtn">Close</button></a>
                </div>

                <a href="javascript:void(0)"
                    onclick="document.getElementById('light5').style.display='block';document.getElementById('fade').style.display='block'">

                    <img class="item" src="images/cake5.jpg"></a>
                <div id="light5" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name: Chocolate Fudge Cake</p>
                        <p>Item Description: a nice thick chocolate cake even chocolatier than the double chocolate
                            cake.</p>
                        <p>Item Price: $19.99</p>
                        <p>Item Quantity: </p>
                    </div>

                    <form action="ReadOrder" method="post">

                        <input type="text" id="quantity5" name="quantity">

                        <button class="addbtn" type="submit" name="cake" value="fudge cake">add to cart</button>
                    </form>

                    <a class="close" href="javascript:void(0)"
                        onclick="document.getElementById('light5').style.display='none';document.getElementById('fade').style.display='none'"><button
                            class="closebtn">Close</button></a>
                </div>
            </div>

            <div class="itemContainer">
                <h1>Cupcakes</h1>
                <a href="javascript:void(0)"
                    onclick="document.getElementById('light6').style.display='block';document.getElementById('fade').style.display='block'">
                    <img class="item" src="images/cupcake1.jpg"></a>
                <div id="light6" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name:Ferrero Rocher Cupcake</p>
                        <p>Item Description: Everything you love about Ferrero Rocher in a cupcake!</p>
                        <p>Item Price: $3.99</p>
                        <p>Item Quantity: </p>
                    </div>

                    <form action="ReadOrder" method="post">

                        <input type="text" id="quantity6" name="quantity">

                        <button class="addbtn" type="submit" name="cake" value="rocher cupcake">add to cart</button>
                    </form>

                    <a class="close" href="javascript:void(0)"
                        onclick="document.getElementById('light6').style.display='none';document.getElementById('fade').style.display='none'"><button
                            class="closebtn">Close</button></a>
                </div>

                <a href="javascript:void(0)"
                    onclick="document.getElementById('light7').style.display='block';document.getElementById('fade').style.display='block'">
                    <img class="item" src="images/cupcake2.jpg"></a>
                <div id="light7" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name: Oreo Cupcake</p>
                        <p>Item Description: A perfectly interpretation of a double stuffed Oreo.</p>
                        <p>Item Price:$2.99 </p>
                        <p>Item Quantity: </p>
                    </div>

                    <form action="ReadOrder" method="post">

                        <input type="text" id="quantity7" name="quantity">

                        <button class="addbtn" type="submit" name="cake" value="oreo cupcake">add to cart</button>
                    </form>

                    <a class="close" href="javascript:void(0)"
                        onclick="document.getElementById('light7').style.display='none';document.getElementById('fade').style.display='none'"><button
                            class="closebtn">Close</button></a>
                </div>

                <a href="javascript:void(0)"
                    onclick="document.getElementById('light8').style.display='block';document.getElementById('fade').style.display='block'">
                    <img class="item" src="images/cupcake3.jpg"></a>
                <div id="light8" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name: Carmel Stroopwafel Cupcake</p>
                        <p>Item Description: A cupcake inspired by the Ducth wafflecookie with spicel carmel syrup inthe
                            middle</p>
                        <p>Item Price: $3.99 </p>
                        <p>Item Quantity: </p>
                    </div>

                    <form action="ReadOrder" method="post">

                        <input type="text" id="quantity8" name="quantity">

                        <button class="addbtn" type="submit" name="cake" value="carmel cupcake">add to cart</button>
                    </form>

                    <a class="close" href="javascript:void(0)"
                        onclick="document.getElementById('light8').style.display='none';document.getElementById('fade').style.display='none'"><button
                            class="closebtn">Close</button></a>
                </div>

                <a href="javascript:void(0)"
                    onclick="document.getElementById('light9').style.display='block';document.getElementById('fade').style.display='block'">
                    <img class="item" src="images/cupcake4.jpg"></a>
                <div id="light9" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name: Red Velvet Cupcake</p>
                        <p>Item Description: The classic red velvet cupcake. Can anyone really describe the taste of red
                            velvet?</p>
                        <p>Item Price: $1.99 </p>
                        <p>Item Quantity: </p>
                    </div>

                    <form action="ReadOrder" method="post">

                        <input type="text" id="quantity9" name="quantity">

                        <button class="addbtn" type="submit" name="cake" value="velvet cupcake">add to cart</button>
                    </form>

                    <a class="close" href="javascript:void(0)"
                        onclick="document.getElementById('light9').style.display='none';document.getElementById('fade').style.display='none'"><button
                            class="closebtn">Close</button></a>
                </div>

                <a href="javascript:void(0)"
                    onclick="document.getElementById('light10').style.display='block';document.getElementById('fade').style.display='block'">
                    <img class="item" src="images/cupcake5.jpg"></a>
                <div id="light10" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name: Confetti Cupcake</p>
                        <p>Item Description: The classic confetti cupcake with strawberry frosting.</p>
                        <p>Item Price: $1.99 </p>
                        <p>Item Quantity: </p>
                    </div>

                    <form action="ReadOrder" method="post">

                        <input type="text" id="quantity10" name="quantity">

                        <button class="addbtn" type="submit" name="cake" value="confetti cupcake">add to cart</button>
                    </form>

                    <a class="close" href="javascript:void(0)"
                        onclick="document.getElementById('light10').style.display='none';document.getElementById('fade').style.display='none'"><button
                            class="closebtn">Close</button></a>
                </div>
            </div>

            <div class="itemContainer">
                <h1>Breads</h1>

                <a href="javascript:void(0)"
                    onclick="document.getElementById('light11').style.display='block';document.getElementById('fade').style.display='block'">
                    <img class="item" src="images/bread1.jpg"></a>
                <div id="light11" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name: Everything Bagel</p>
                        <p>Item Description: This bagel is seasoned with EVERYTHING</p>
                        <p>Item Price: $2.99 </p>
                        <p>Item Quantity: </p>
                    </div>

                    <form action="ReadOrder" method="post">

                        <input type="text" id="quantity11" name="quantity">

                        <button class="addbtn" type="submit" name="cake" value="everything bagel">add to cart</button>
                    </form>

                    <a class="close" href="javascript:void(0)"
                        onclick="document.getElementById('light11').style.display='none';document.getElementById('fade').style.display='none'"><button
                            class="closebtn">Close</button></a>
                </div>

                <a href="javascript:void(0)"
                    onclick="document.getElementById('light12').style.display='block';document.getElementById('fade').style.display='block'">
                    <img class="item" src="images/bread2.jpg"></a>
                <div id="light12" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name: Sourdough Loaf</p>
                        <p>Item Description: A light airy bread perfect for sandwiches or dipping in oil.</p>
                        <p>Item Price: $5.99</p>
                        <p>Item Quantity: </p>
                    </div>

                    <form action="ReadOrder" method="post">

                        <input type="text" id="quantity12" name="quantity">

                        <button class="addbtn" type="submit" name="cake" value="sour loaf">add to cart</button>
                    </form>

                    <a class="close" href="javascript:void(0)"
                        onclick="document.getElementById('light12').style.display='none';document.getElementById('fade').style.display='none'"><button
                            class="closebtn">Close</button></a>
                </div>

                <a href="javascript:void(0)"
                    onclick="document.getElementById('light13').style.display='block';document.getElementById('fade').style.display='block'">
                    <img class="item" src="images/bread3.jpg"></a>
                <div id="light13" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name: Country Rolls</p>
                        <p>Item Description: A soft, buttery, flaky roll perfect to pass around the table. </p>
                        <p>Item Price: $2.99 </p>
                        <p>Item Quantity: </p>
                    </div>

                    <form action="ReadOrder" method="post">

                        <input type="text" id="quantity13" name="quantity">

                        <button class="addbtn" type="submit" name="cake" value="country rolls">add to cart</button>
                    </form>

                    <a class="close" href="javascript:void(0)"
                        onclick="document.getElementById('light13').style.display='none';document.getElementById('fade').style.display='none'"><button
                            class="closebtn">Close</button></a>
                </div>

                <a href="javascript:void(0)"
                    onclick="document.getElementById('light14').style.display='block';document.getElementById('fade').style.display='block'">
                    <img class="item" src="images/bread4.jpg"></a>
                <div id="light14" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name: Croissant</p>
                        <p>Item Description: The perfect buttery, flaky croissant.</p>
                        <p>Item Price: $3.99 </p>
                        <p>Item Quantity: </p>
                    </div>

                    <form action="ReadOrder" method="post">

                        <input type="text" id="quantity14" name="quantity">

                        <button class="addbtn" type="submit" name="cake" value="croissant">add to cart</button>
                    </form>

                    <a class="close" href="javascript:void(0)"
                        onclick="document.getElementById('light14').style.display='none';document.getElementById('fade').style.display='none'"><button
                            class="closebtn">Close</button></a>
                </div>
                <a href="javascript:void(0)"
                    onclick="document.getElementById('light15').style.display='block';document.getElementById('fade').style.display='block'">
                    <img class="item" src="images/bread5.jpg"></a>
                <div id="light15" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name: Wheat Loaf</p>
                        <p>Item Description: a yummy seeded loaf.</p>
                        <p>Item Price: $5.99 </p>
                        <p>Item Quantity: </p>
                    </div>

                    <form action="ReadOrder" method="post">

                        <input type="text" id="quantity15" name="quantity">

                        <button class="addbtn" type="submit" name="cake" value="wheat loaf">add to cart</button>
                    </form>

                    <a class="close" href="javascript:void(0)"
                        onclick="document.getElementById('light15').style.display='none';document.getElementById('fade').style.display='none'"><button
                            class="closebtn">Close</button></a>
                </div>
            </div>
        </div>
    </div>

    <div class="cart">
        
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
           
          
           user.setOrderID(GlobalOrderCount.OrderCounter);
           
          // GlobalOrderCount.OrderCounter = GlobalOrderCount.OrderCounter + 1;
           
           int newOrderID = user.getOrderID();
           
           PreparedStatement preparedStatement = con.prepareStatement("SELECT ITEM_QUANTITY, PRICE_TOTAL FROM ITEMS_ORDERED WHERE ORDERS_ORDER_ID = ?");
          
           preparedStatement.setInt(1, newOrderID);
           
          ResultSet resultset = preparedStatement.executeQuery();
       %>
        
        <% while (resultset.next()) { %>
        <h2>Items: <%= resultset.getInt(1) %></h2>

        <h2>Total: $<%= resultset.getDouble(2) %></h2>
        
        <% } %>
        
        <a href="Checkout.jsp"><button class="checkoutbtn">Checkout</button></a>
    </div>
</body>

</html>