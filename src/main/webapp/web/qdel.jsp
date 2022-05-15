<%-- 
    Document   : qdel
    Created on : Aug 10, 2018, 12:33:01 PM
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
         
        <%
  try
  {
	  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Delete from fill where qid='"+request.getParameter("name") +"'";
  int i=st.executeUpdate(sql);
  
  
 }
  catch(Exception e){out.print(e.getMessage());
e.printStackTrace();
}
  
  %>      
  
       
    </body>
</html>
