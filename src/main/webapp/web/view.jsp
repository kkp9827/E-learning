<%-- 
    Document   : updateRecord
    Created on : Aug 3, 2018, 2:56:29 PM
    Author     : user
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           
        <table border="3" class="table">
  <%
  try
  {
	  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select * from students where rollno='"+request.getParameter("name") +"'";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
  {
  %>
  
  
  <tr><td>Rollno</td><td><%=rs.getString("rollno") %></td></tr>
  <tr><th>Name</th><td><%=rs.getString("name") %></td></tr>
  <tr><th>FName</th><td><%=rs.getString("fname") %></td></tr>
  <tr><th>Course</th><td><%=rs.getString("course") %></td></tr>
  <tr><th>Pay Status</th><td><%=rs.getString("payStatus") %></td></tr>
  <tr><th>Contact</th><td><%=rs.getString("contact") %></td></tr>
  <tr><th>Email</th><td><%=rs.getString("email") %></td></tr>
  <tr><th>DOB</th><td><%=rs.getString("dob") %></td></tr>
  <tr><th>Password</th><td><%=rs.getString("password") %></td></tr>
  <tr><th>Qualification</th><td><%=rs.getString("qualification") %></td></tr>
  <tr><th>Status</th><td><%=rs.getString("status") %></td></tr>
  
  
  <%
  }
 }
  catch(Exception e){}
  
  %>      
        </table>
        
        
    </body>
</html>
