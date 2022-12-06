<%-- 
    Document   : Login
    Created on : Nov 29, 2022, 9:29:51 PM
    Author     : jackj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Voting System</title>
</head>
<body>
    <div style="text-align: center">
        <h1>Voter Login</h1>
        <form action="Login" method="post">
            <label for="email">Email:</label>
            <input name="email" size="30" />
            <br><br>
            <label for="password">Password:</label>
            <input type="password" name="password" size="30" />
            <br>${message}
            <br><br>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>