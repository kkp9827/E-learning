<%-- 
    Document   : custmer.java
    Created on : Nov 4, 2018, 1:10:16 AM
    Author     : Niti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
 
         <!-- Bootstrap core CSS-->
 <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
    </head>
    <body >
        
         <%
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select * from students where rollno='101'";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
  {
  %>
        
        <div class="well" style="background-color:black; color:white"><h1><center><%=rs.getString("name") %></center></h1></div>
      <div class="row">
           

          <div class="col-sm-6">
           <div class="jumbotron" style="height:600px" >
             
         
      <ul class="list-group">
          
                  <li class="list-group-item">Name:   <%=rs.getString("name") %></li><br><br>
                 <li class="list-group-item">Email:   <%=rs.getString("email") %></li><br><br>
                 <li class="list-group-item">Profession:   <%=rs.getString("qualification") %></li><br><br>
  <li class="list-group-item">Contact No:   <%=rs.getString("contact") %></li><br><br>
   <li class="list-group-item">Address:   <%=rs.getString("fname") %></li><br><br>
  <li class="list-group-item">Identity Card:    <%=rs.getString("status") %></li><br><br>
  
 
</ul>  
  
              
              
              
              
              
           </div>
          </div>
          
          <div class="col-sm-6">
              
            <ul class="nav nav-pills nav-stacked">
  <li class="active"><a href="#">Home</a></li>
  <li><a href="#">Available Rides </a></li>
  <li><a href="#">Updates Profile</a></li>
  <li><a href="#">Change Password</a></li>
   <li><a href="#">Enquiry</a></li>
    <li><a href="#">Help</a></li>
   
</ul>  
              
          </div> 
         
  
      </div>
   <%
  }
 }
  catch(Exception e){}
  
  %> 
    </body>
</html>
