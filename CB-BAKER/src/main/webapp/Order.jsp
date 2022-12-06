<%-- 
    Document   : Order
    Created on : Dec 3, 2022, 9:47:57 PM
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
        }

        .addbtn {
            background-color: #90A17D;
            color: black;
            font-size: 20px;
            border-radius: 10px;
            padding: 10px;
            text-decoration: none;
        }

        .itemHeaders {
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            align-items: center;
            padding: 20px;
        }

        .bottom {
            position: absolute;
            width: 100%;
            bottom: 0;
            padding-bottom: 20px;
            display: flex;
            align-items: center;
            flex-direction: column;
            align-content: center;
        }

        .closebtn {
            background-color: grey;
            color: black;
            font-size: 20px;
            border-radius: 10px;
            padding: 10px;
            text-decoration: none;
        }
    </style>
</head>

<body>
    <header-component></header-component>
    <div class="orderContainer">
        <div class="scrolling">
            
           <!-- <form action="ReadOrder" method="post"> -->

            <div class="itemContainer">
                <h1>Cakes</h1>
                <a href="javascript:void(0)"
                    onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
                    <img class="item" src="images/cake1.jpg"></a>
                <div id="light" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name:</p>
                        <p>Item Description:</p>
                        <p>Item Quantity: </p>
                        
                        <form action="ReadOrder" method="post">
                        
                        <input type="text" id="quantity1" name="quantity">
                    </div>
                    <div class="bottom">
                        
                        <button class="addbtn" type="submit" name="cake1"> add to cart </button>
                        </form>
                        <a class="close" href="javascript:void(0)"
                            onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><button
                                class="closebtn">Close</button></a>
                    </div>
                </div>
                <div id="fade" class="black_overlay"></div>
                <a href="javascript:void(0)"
                    onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'"><img
                        <img class="item" src="images/cake2.jpg">
                    <div id="light" class="white_content">
                        <div class="itemHeaders">
                            <p>Item Name:</p>
                            <p>Item Description:</p>
                            <p>Item Quantity: </p>
                            <input type="text" id="quantity" name="quantity">
                        </div>
                        <div class="bottom">
                            <button class="addbtn">add to cart</button>
                            <a class="close" href="javascript:void(0)"
                                onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><button
                                    class="closebtn">Close</button></a>
                        </div>
                    </div>

                    <a href="javascript:void(0)"
                        onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
                        <img class="item" src="images/cake3.jpg">
                        <div id="light" class="white_content">
                            <div class="itemHeaders">
                                <p>Item Name:</p>
                                <p>Item Description:</p>
                                <p>Item Quantity: </p>
                                <input type="text" id="quantity" name="quantity">
                            </div>
                            <div class="bottom">
                                <button class="addbtn">add to cart</button>
                                <a class="close" href="javascript:void(0)"
                                    onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><button
                                        class="closebtn">Close</button></a>
                            </div>
                        </div>

                        <a href="javascript:void(0)"
                            onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
                            <img class="item" src="images/cake4.jpg">
                            <div id="light" class="white_content">
                                <div class="itemHeaders">
                                    <p>Item Name:</p>
                                    <p>Item Description:</p>
                                    <p>Item Quantity: </p>
                                    <input type="text" id="quantity" name="quantity">
                                </div>
                                <div class="bottom">
                                    <button class="addbtn">add to cart</button>
                                    <a class="close" href="javascript:void(0)"
                                        onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><button
                                            class="closebtn">Close</button></a>
                                </div>
                            </div>

                            <a href="javascript:void(0)"
                                onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">

                                <img class="item" src="images/cake5.jpg">
                                <div id="light" class="white_content">
                                    <div class="itemHeaders">
                                        <p>Item Name:</p>
                                        <p>Item Description:</p>
                                        <p>Item Quantity: </p>
                                        <input type="text" id="quantity" name="quantity">
                                    </div>
                                    <div class="bottom">
                                        <button class="addbtn">add to cart</button>
                                        <a class="close" href="javascript:void(0)"
                                            onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><button
                                                class="closebtn">Close</button></a>
                                    </div>
                                </div>
            </div>
            <div class="itemContainer">
                <h1>Cupcakes</h1>
                <a href="javascript:void(0)"
                onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
                <img class="item" src="images/cupcake1.jpg">
                <div id="light" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name:</p>
                        <p>Item Description:</p>
                        <p>Item Quantity: </p>
                        <input type="text" id="quantity" name="quantity">
                    </div>
                    <div class="bottom">
                        <button class="addbtn">add to cart</button>
                        <a class="close" href="javascript:void(0)"
                            onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><button
                                class="closebtn">Close</button></a>
                    </div>
                </div>

                <a href="javascript:void(0)"
                onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
                <img class="item" src="images/cupcake2.jpg">
                <div id="light" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name:</p>
                        <p>Item Description:</p>
                        <p>Item Quantity: </p>
                        <input type="text" id="quantity" name="quantity">
                    </div>
                    <div class="bottom">
                        <button class="addbtn">add to cart</button>
                        <a class="close" href="javascript:void(0)"
                            onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><button
                                class="closebtn">Close</button></a>
                    </div>
                </div>

                <a href="javascript:void(0)"
                onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
                <img class="item" src="images/cupcake3.jpg">
                <div id="light" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name:</p>
                        <p>Item Description:</p>
                        <p>Item Quantity: </p>
                        <input type="text" id="quantity" name="quantity">
                    </div>
                    <div class="bottom">
                        <button class="addbtn">add to cart</button>
                        <a class="close" href="javascript:void(0)"
                            onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><button
                                class="closebtn">Close</button></a>
                    </div>
                </div>

                <a href="javascript:void(0)"
                onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
                <img class="item" src="images/cupcake4.jpg">
                <div id="light" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name:</p>
                        <p>Item Description:</p>
                        <p>Item Quantity: </p>
                        <input type="text" id="quantity" name="quantity">
                    </div>
                    <div class="bottom">
                        <button class="addbtn">add to cart</button>
                        <a class="close" href="javascript:void(0)"
                            onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><button
                                class="closebtn">Close</button></a>
                    </div>
                </div>

                <a href="javascript:void(0)"
                onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
                <img class="item" src="images/cupcake5.jpg">
                <div id="light" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name:</p>
                        <p>Item Description:</p>
                        <p>Item Quantity: </p>
                        <input type="text" id="quantity" name="quantity">
                    </div>
                    <div class="bottom">
                        <button class="addbtn">add to cart</button>
                        <a class="close" href="javascript:void(0)"
                            onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><button
                                class="closebtn">Close</button></a>
                    </div>
                </div>
            </div>

            <div class="itemContainer">
                <h1>Breads</h1>

                <a href="javascript:void(0)"
                onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
                <img class="item" src="images/bread1.jpg">
                <div id="light" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name:</p>
                        <p>Item Description:</p>
                        <p>Item Quantity: </p>
                        <input type="text" id="quantity" name="quantity">
                    </div>
                    <div class="bottom">
                        <button class="addbtn">add to cart</button>
                        <a class="close" href="javascript:void(0)"
                            onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><button
                                class="closebtn">Close</button></a>
                    </div>
                </div>

                <a href="javascript:void(0)"
                onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
                <img class="item" src="images/bread2.jpg">
                <div id="light" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name:</p>
                        <p>Item Description:</p>
                        <p>Item Quantity: </p>
                        <input type="text" id="quantity" name="quantity">
                    </div>
                    <div class="bottom">
                        <button class="addbtn">add to cart</button>
                        <a class="close" href="javascript:void(0)"
                            onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><button
                                class="closebtn">Close</button></a>
                    </div>
                </div>

                <a href="javascript:void(0)"
                onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
                <img class="item" src="images/bread3.jpg">
                <div id="light" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name:</p>
                        <p>Item Description:</p>
                        <p>Item Quantity: </p>
                        <input type="text" id="quantity" name="quantity">
                    </div>
                    <div class="bottom">
                        <button class="addbtn">add to cart</button>
                        <a class="close" href="javascript:void(0)"
                            onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><button
                                class="closebtn">Close</button></a>
                    </div>
                </div>

                <a href="javascript:void(0)"
                onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
                <img class="item" src="images/bread4.jpg">
                <div id="light" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name:</p>
                        <p>Item Description:</p>
                        <p>Item Quantity: </p>
                        <input type="text" id="quantity" name="quantity">
                    </div>
                    <div class="bottom">
                        <button class="addbtn">add to cart</button>
                        <a class="close" href="javascript:void(0)"
                            onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><button
                                class="closebtn">Close</button></a>
                    </div>
                </div>
                <a href="javascript:void(0)"
                onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
                <img class="item" src="images/bread5.jpg">
                <div id="light" class="white_content">
                    <div class="itemHeaders">
                        <p>Item Name:</p>
                        <p>Item Description:</p>
                        <p>Item Quantity: </p>
                        <input type="text" id="quantity" name="quantity">
                    </div>
                    <div class="bottom">
                        <button class="addbtn">add to cart</button>
                        <a class="close" href="javascript:void(0)"
                            onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><button
                                class="closebtn">Close</button></a>
                    </div>
                </div>
            </div>
                
          <!--    </form>  -->
                
        </div>
    </div>
    <div class="cart">
        <h2>Items: </h2>
        <h2>Total: </h2>
        <a href="Checkout.jsp"><button class="checkoutbtn">Checkout</button></a>
    </div>
</body>

</html>