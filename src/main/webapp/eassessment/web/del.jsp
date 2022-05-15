

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
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","");
  Statement st=con.createStatement();
  String sql="Delete from students where rollno='"+request.getParameter("name") +"'";
  int i=st.executeUpdate(sql);
  
  
 }
  catch(Exception e){
  System.out.println(e);
  }
  
  %>      
  
        
        
    </body>
</html>
