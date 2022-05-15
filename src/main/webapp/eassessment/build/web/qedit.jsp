<%-- 
    Document   : qedit
    Created on : Aug 10, 2018, 1:03:59 PM
    Author     : Niti
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="update  fill set  que='"+request.getParameter("qu")+"',obj1='"+request.getParameter("o1")+"',obj2='"+request.getParameter("o2")+"',obj3='"+request.getParameter("o3")+"',obj4='"+request.getParameter("o4")+"',ans='"+request.getParameter("ans")+"',qtype='"+request.getParameter("type")+"' where qid='"+request.getParameter("id")+"'";
     int i= st.executeUpdate(sql);
     while(i>0)
     {
     
response.sendRedirect("http://localhost:8080/eassessment/index.jsp?page=5");
     
     }
  }
  
  catch(Exception e){}
  
  %>      
  
     
 
    </body>
</html>
