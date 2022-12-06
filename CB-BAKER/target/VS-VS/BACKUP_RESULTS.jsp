<%-- 
    Document   : BACKUP PassedResults
    Created on : Dec 1, 2022, 1:40:22 PM
    Author     : matthew
--%>
        

<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>



<div id="form">
        
        <form action="PassedResults" method="post">
</fieldset>
   
        <button type="refresh">Refresh Results</button>
        <form>

<HTML>
       <HEAD>
       <TITLE>The View Of Database Table </TITLE>
       </HEAD>
       <BODY BGCOLOR="white">
       <H1>The View Of Database Table </H1>
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
      <TR>
      <TH>Red President</TH>
      <TH>Blue President</TH>
      <TH>Green President</TH>
      <TH>Yellow President</TH>
      <TH>Red Gov</TH>
      <TH>Blue Gov</TH>
      <TH>Green Gov</TH>
      <TH>Yellow Gov</TH>
      <TH>Red Rep</TH>
      <TH>Blue Rep</TH>
      <TH>Green Rep</TH>
      <TH>Yellow Rep</TH>
      </TR>
      <% while(resultset.next()){ %>
      <TR>
       <TD> <%= resultset.getInt(2) %></td>
       <TD> <%= resultset.getInt(3) %></TD>
       <TD> <%= resultset.getInt(4) %></TD>
       <TD> <%= resultset.getInt(5) %></TD>
       <TD> <%= resultset.getInt(6) %></td>
       <TD> <%= resultset.getInt(7) %></TD>
       <TD> <%= resultset.getInt(8) %></TD>
       <TD> <%= resultset.getInt(9) %></TD>
       <TD> <%= resultset.getInt(10) %></td>
       <TD> <%= resultset.getInt(11) %></TD>
       <TD> <%= resultset.getInt(12) %></TD>
       <TD> <%= resultset.getInt(13) %></TD>
      </TR>
      <% } %>
     </TABLE>
     </BODY>
</HTML>

