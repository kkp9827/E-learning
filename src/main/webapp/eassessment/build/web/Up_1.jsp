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
        <form method="get" action="edit_1.jsp">      
        <table>
  <%
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","");
  Statement st=con.createStatement();
  String sql="Select * from faculty where fid='"+request.getParameter("name") +"'";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
  {
  %>
  
  
  <tr><td><input type="hidden" name="fid" value="<%=rs.getString("fid") %>"></td></tr>
  
  <tr><th>Father Name</th><td><input type="text" name="fname" value="<%=rs.getString("fname") %>"></td></tr>
  <tr><th>CourseId</th><td><input type="text" name="course" value="<%=rs.getString("courseid") %>"></td></tr>
  
  <tr><th>Contact</th><td><input type="text" name="contact" value="<%=rs.getString("contact") %>"></td></tr>
  <tr><th>Email</th><td><input type="text" name="email" value="<%=rs.getString("email") %>"></td></tr>
  
  <tr><th>Password</th><td><input type="text" name="password" value="<%=rs.getString("password") %>"></td></tr>
  
  <tr><th>Status</th><td><input type="text" name="status" value="<%=rs.getString("status") %>"></td></tr>
  <tr><td><input type="submit"  value="Update" class="btn btn-success"></td></tr>
  
  
  <%
  }
 }
  catch(Exception e){}
  
  %>      
        </table>
        </form>
        
    </body>
</html>
