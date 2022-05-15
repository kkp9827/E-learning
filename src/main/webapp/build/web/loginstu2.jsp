<%-- 
    Document   : loginstu2
    Created on : Sep 12, 2018, 2:32:08 AM
    Author     : Niti
--%>

<%@page contentType="text/html"  import="java.sql.*;"pageEncoding="UTF-8"%>
<%@page import=" javax.servlet.http.HttpSession;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
             
              boolean flag = false;
  try
  {
      String n=request.getParameter("uname");
      
      String p=request.getParameter("pwd");
      
      
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select *  from faculity where fname='"+n+"' and passward='"+p+"'";
     ResultSet rs=st.executeQuery(sql);
  rs.next();
  if(rs.getRow()>0)
  {
     session.setAttribute("id", rs.getString("fid"));
     session.setAttribute("fname", rs.getString("fname"));
     
      
      response.sendRedirect("index.jsp");
  }
  else
  {
      response.sendRedirect("http://localhost:8080/eassessment/loginstu.jsp");
    
  }
  }
  catch(Exception e)
  {
      out.print(e.getMessage());}
   
  %>  
    </body>
</html>
