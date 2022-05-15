<%-- 
    Document   : viewQuery
    Created on : Aug 9, 2018, 5:31:03 AM
    Author     : user
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.min.js">
        <script src="jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

       
            
             <%
             String n=request.getParameter("type");
             String t=request.getParameter("tid");
             String q=request.getParameter("query");
             String f=request.getParameter("fid");
  try
  {
	  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql1="insert into query(query,type,tid,doq,fromid)values('"+q+"','"+n+"','"+t+"',now(),'"+f+"')";        
   int i=st.executeUpdate(sql1);
 
    response.sendRedirect("http://localhost:8080/online/web/index.jsp?page=11");
   } catch(Exception e){out.print (e.getMessage());
   e.printStackTrace();}
  
  %>   
        
        
   
    </body>
</html>
