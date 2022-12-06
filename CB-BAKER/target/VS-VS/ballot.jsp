<%-- 
    Document   : ballot
    Created on : Nov 28, 2022, 11:04:25 AM
    Author     : jackj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ballot</title>
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
        
        <form action="PassVote" method="post">
        <fieldset>
            <legend>
                <h1>Ballot</h1>
            </legend>

            <label> President:</label> &nbsp &nbsp <br>
            <input type="radio" name="president" value="1" /> Red <br>
            <input type="radio" name="president" value="2" /> Blue <br>
            <input type="radio" name="president" value="3" /> Yellow <br>
            <input type="radio" name="president" value="4" /> Green <br>
            
             <label> Governor:</label> &nbsp &nbsp <br>
            <input type="radio" name="gov" value="1" /> Red <br>
            <input type="radio" name="gov" value="2" /> Blue <br>
            <input type="radio" name="gov" value="3" /> Yellow <br>
            <input type="radio" name="gov" value="4" /> Green <br>
           
            <label> Representative:</label> &nbsp &nbsp <br>
            <input type="radio" name="rep" value="1" /> Red <br>
            <input type="radio" name="rep" value="2" /> Blue <br>
            <input type="radio" name="rep" value="3" /> Yellow <br>
            <input type="radio" name="rep" value="4" /> Green <br>
            
          
        </fieldset>
   
        <button type="submit">Submit</button>
        
            </form>
    </div>

</body>

</html>