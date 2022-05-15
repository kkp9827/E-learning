<%-- 
    Document   : ad2
    Created on : Sep 27, 2018, 11:57:56 AM
    Author     : Niti
--%>

<%@page contentType="text/html"  import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <body>
         <%
             
              boolean flag = false;
  try
  {
      String n=request.getParameter("uname");
      
      String p=request.getParameter("pwd");
      
      
   Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select *  from admin where name='"+n+"' and pass1='"+p+"'";
     ResultSet rs=st.executeQuery(sql);
   rs.next();
  if(rs.getRow()>0)
  {
     session.setAttribute("aid", rs.getString("id"));
     session.setAttribute("aname", rs.getString("name"));
     
      
      response.sendRedirect("http://localhost:8080/online/web/adminmasterpage.jsp");
  }
  else
  {
      response.sendRedirect("http://localhost:8080/online/web/ad1.jsp");
    
  }
  }
  catch(Exception e)
  {
      out.print(e.getMessage());}
   
  %>  
    </body>
</html>

