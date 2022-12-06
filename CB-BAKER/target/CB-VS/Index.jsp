<%-- 
    Document   : Index
    Created on : Dec 3, 2022, 9:46:47 PM
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
            background-size: 100%;
        }

        body {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: 1rem;
            font-weight: normal;
            line-height: 1.5;
        }

        a,
        button {
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
            cursor: pointer;
            border: none;
            outline: none;
            background: none;
            text-decoration: none;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            max-width: 40%;
            min-height: 40%;
            width: 100%;
            padding: 0 2rem;
            margin: 0 auto;
            background: white;
        }

        .ion-logo-apple {
            font-size: 1.65rem;
            line-height: inherit;
            margin-right: 0.5rem;
            color: var(--color-black);
        }

        .ion-logo-google {
            font-size: 1.65rem;
            line-height: inherit;
            margin-right: 0.5rem;
            color: var(--color-red);
        }

        .ion-logo-facebook {
            font-size: 1.65rem;
            line-height: inherit;
            margin-right: 0.5rem;
            color: var(--color-blue);
        }

        .main .wrapper {
            max-width: 28rem;
            width: 100%;
            margin: 2rem auto;
            padding: 2rem 2.5rem;
            outline: none;
            border-radius: 0.25rem;
            color: var(--color-black);
            background: var(--color-white);
            box-shadow: var(--shadow-large);
        }

        .main .wrapper .form {
            width: 100%;
            height: auto;
            margin-top: 2rem;
        }

        .main .wrapper .form .input-control {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 1.25rem;
        }

        .main .wrapper .form .input-field {
            font-family: inherit;
            font-size: 1rem;
            font-weight: 400;
            line-height: inherit;
            width: 100%;
            height: auto;
            padding: 0.75rem 1.25rem;
            border-radius: 2rem;
            text-transform: unset;
            text-rendering: optimizeLegibility;
        }

        .main .wrapper .form .input-submit {
            font-family: inherit;
            font-size: 1rem;
            font-weight: 500;
            line-height: inherit;
            cursor: pointer;
            min-width: 40%;
            height: auto;
            padding: 0.65rem 1.25rem;
            border: none;
            outline: none;
            border-radius: 2rem;
            color: var(--color-white);
            background: var(--color-blue);
            box-shadow: var(--shadow-medium);
            text-transform: capitalize;
            text-rendering: optimizeLegibility;
        }

        .main .wrapper .striped {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            margin: 1rem 0;
        }

        .main .wrapper .striped-line {
            flex: auto;
            flex-basis: auto;
            border: none;
            outline: none;
            height: 2px;
            background: var(--color-grayish);
        }

        .main .wrapper .striped-text {
            font-family: inherit;
            font-size: 1rem;
            font-weight: 500;
            line-height: inherit;
            color: var(--color-black);
            margin: 0 1rem;
        }

        .main .wrapper .method-control {
            margin-bottom: 1rem;
        }

        .main .wrapper .method-action {
            font-family: inherit;
            font-size: 0.95rem;
            font-weight: 500;
            line-height: inherit;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: auto;
            padding: 0.35rem 1.25rem;
            outline: none;
            border: 2px solid var(--color-grayish);
            border-radius: 2rem;
            color: var(--color-black);
            background: var(--color-white);
            text-transform: capitalize;
            text-rendering: optimizeLegibility;
            transition: all 0.35s ease;
        }

        .main .wrapper .method-action:hover {
            background: var(--color-light);
        }
    </style>
</head>

<body>
    <header-component></header-component>
    <main class="main">
        <div class="container">
            <section class="wrapper">
                <div class="heading">
                    <h1 class="text text-large">User Log In</h1>
                    </p>
                </div>
                <form action="Login" method="post" class="form">
                    <div class="input-control">
                        <label for="email" class="input-label" hidden>Email Address</label>
                        <input type="email" name="email" id="email" class="input-field" placeholder="Email Address">
                    </div>
                    <div class="input-control">
                        <label for="password" class="input-label" hidden>Password</label>
                        <input type="password" name="password" id="password" class="input-field" placeholder="Password">
                    </div>
                
                <div class="btnContainer">
                    <a href="Customer.jsp"><button class="loginbtn">Customer login</button></a>
                    <a href="Baker.jsp"><button class="loginbtn">Baker login</button></a>
                </div>
                    
                    </form>
        </div>
        </section>
            
    </main>
</body>

</html>