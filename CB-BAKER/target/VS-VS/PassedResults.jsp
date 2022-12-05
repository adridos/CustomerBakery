<%-- 
    Document   : PassedResults
    Created on : Dec 1, 2022, 1:40:22 PM
    Author     : matthew
--%>
        

<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>



<div id="form">
        
        <form action="PassedResults" method="post">
</fieldset>
<center>
        <button type="refresh">Refresh Results</button>
        <form>
</center>

<HTML>
        <HEAD>
       <style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

table.center {
  margin-left: auto; 
  margin-right: auto;
}

h1 {text-align: center;}
p {text-align: center;}
div {text-align: center;}

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

</style>
       

<ul>
  <li><a href="ballot.jsp">Ballot</a></li>
  <li><a href="registration.jsp">Sign Up</a></li>
  <li><a href="change.jsp">Update Account</a></li>
  <li><a href="PassedResults.jsp">View Results</a></li>
</ul>


        <h1><TITLE>Easy Election Results: Dec 5, 2022 </TITLE><h1>
       
       </HEAD>
       <BODY BGCOLOR="white">
       <H1>Easy Election Results: Dec 5, 2022 </H1>
       <%
           String dbDriver = "com.mysql.jdbc.Driver";
        String dbURL = "jdbc:mysql:// localhost:3306/";
        // Database name to access
        String dbName = "VotingSystem";
        String dbUsername = "root";
        String dbPassword = "MySQL2022!";
  
        Class.forName(dbDriver);
        Connection con = DriverManager.getConnection(dbURL + dbName,
                                                     dbUsername, 
                                                     dbPassword);
           Statement statement = con.createStatement() ;
          ResultSet resultset = statement.executeQuery("SELECT * FROM RESULTS") ;
       %>
      <TABLE BORDER="1">
            <table class = "center">
      <tr>
           <% while(resultset.next()){ %>
    <th style="width:25%">Red President:</th>
    <TD> <%= resultset.getInt(2) %></td>
    <th style="width:25%">Blue President:</th>
    <TD> <%= resultset.getInt(3) %></TD>
    <th style="width:25%">Yellow President:</th>
    <TD> <%= resultset.getInt(4) %></TD>
    <th style="width:25%">Green President:</th>
    <TD> <%= resultset.getInt(5) %></TD>
  </tr>
  <tr>
    <th>Red Gov:</th>
    <TD> <%= resultset.getInt(9) %></td>
    <th>Blue Gov:</th>
    <TD> <%= resultset.getInt(8) %></TD>
    <th>Yellow Gov:</th>
    <TD> <%= resultset.getInt(7) %></TD>
    <th>Green Gov:</th>
    <TD> <%= resultset.getInt(6) %></TD>
  </tr>
  <tr>
    <th>Red Rep:</th>
    <TD> <%= resultset.getInt(10) %></td>
    <th>Blue Rep:</th>
    <TD> <%= resultset.getInt(11) %></TD>
    <th>Yellow Rep:</th>
    <TD> <%= resultset.getInt(13) %></TD>
    <th>Green Rep:</th>
    <TD> <%= resultset.getInt(12) %></TD>
  </tr>
       
      </TR>
      <% } %>
     </TABLE>
     
     
     </BODY>
</HTML>
