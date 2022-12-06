<%-- 
    Document   : change
    Created on : Nov 28, 2022, 1:20:48 PM
    Author     : jackj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Account</title>
    <link rel="stylesheet" href="stylesheet.css">
    <script src="./javascript.js" defer></script>

</head>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color:#414544;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
}

input[type="submit"] {
	color: black;
	padding: 15px 30px ;
	font-size: 16px;
	margin: 12px 14px;
	cursor: pointer;
	
}

label {
	font-weight: bold;
	display: inline-block;
	margin: 5px;
}

</style>

<body>

   <ul>
  <li><a href="ballot.jsp">Ballot</a></li>
  <li><a href="registration.jsp">Sign Up</a></li>
  <li><a href="change.jsp">Update Account</a></li>
  <li><a href="PassedResults.jsp">View Results</a></li>
</ul>
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <div id="form">
        <form action="thanks.jsp"></form>
        <fieldset>
            <legend>
                <h1>Update Account</h1>
            </legend>

          

               <label>Address:</label>&nbsp &nbsp
            <input type="text" name="Address" placeholder="Enter your Address" required>
            
            <br>
            
            
            
            <label>Zip Code:</label>&nbsp &nbsp
            <input type="number" name="ZipCode" placeholder="Enter your Zip Code" maxlength="10" required><br>
            
               <label>Phone Number:</label>&nbsp &nbsp
            <input type="number" name="phoneNum" placeholder="Enter your Phone Number" maxlength="10" required><br>
            
               <label>Email:</label>&nbsp &nbsp
            <input type="text" name="email" placeholder="Enter your Email" maxlength="15" required><br>

          


        </fieldset>
        <a href="./thankyou.html">
            <input type="submit" id="register" name="submit" value="Submit">
        </a>
    </div>

</body>

</html>