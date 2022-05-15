<%-- 
    Document   : insert1
    Created on : 10 Aug, 2018, 4:02:27 PM
    Author     : DELL
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
        <div>
         <%
             String  a=request.getParameter("fid");
             String b=request.getParameter("fname");
              String c=request.getParameter("courseid");
               String d=request.getParameter("contact");
               String m=request.getParameter("em");
                String f=request.getParameter("pass");
                 String g=request.getParameter("st");
                 
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","");
  Statement st=con.createStatement();
  String sql="Insert into faculity(fid,fname,courseid,cont,em,pass,st)values('"+a+"','"+b+"','"+c+"','"+d+"','"+m+"','"+f+"','"+g+"')";
           
  int z=st.executeUpdate(sql);
  if(z>0)
  {
      
            response.sendRedirect("http://localhost:8080/task2/masterpage.jsp");

  }
}catch(Exception e){ }
  
  %>      
        </div>
        </body>
</html>
