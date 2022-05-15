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
        <form method="get" action="edit.jsp">      
        <table>
  <%
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","");
  Statement st=con.createStatement();
  String sql="Select * from students where rollno='"+request.getParameter("name") +"'";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
  {
  %>
  
  
  <tr><td><input type="hidden" name="rollno" value="<%=rs.getString("rollno") %>"></td></tr>
  <tr><th>Name</th><td><input type="text" name="name" value="<%=rs.getString("name") %>"></td></tr>
  <tr><th>Father Name</th><td><input type="text" name="fname" value="<%=rs.getString("fname") %>"></td></tr>
  <tr><th>Course</th><td><input type="text" name="course" value="<%=rs.getString("course") %>"></td></tr>
  <tr><th>Pay Status</th><td><input type="text" name="payStatus" value="<%=rs.getString("payStatus") %>"></td></tr>
  <tr><th>Contact</th><td><input type="text" name="contact" value="<%=rs.getString("contact") %>"></td></tr>
  <tr><th>Email</th><td><input type="text" name="email" value="<%=rs.getString("email") %>"></td></tr>
  <tr><th>Date of Birth</th><td><input type="text" name="dob" value="<%=rs.getString("dob") %>"></td></tr>
  <tr><th>Password</th><td><input type="text" name="password" value="<%=rs.getString("password") %>"></td></tr>
  <tr><th>Qualification</th><td><input type="text" name="qualification" value="<%=rs.getString("qualification") %>"></td></tr>
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
