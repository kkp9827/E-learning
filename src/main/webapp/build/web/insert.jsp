<%-- 
    Document   : insert
    Created on : 9 Aug, 2018, 3:54:04 PM
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
             String  a=request.getParameter("rollno");
             String b=request.getParameter("name");
              String c=request.getParameter("fname");
               String d=request.getParameter("course");
               String m=request.getParameter("payStatus");
                String f=request.getParameter("contact");
                 String g=request.getParameter("em");
                  String h=request.getParameter("dob");
                   String i=request.getParameter("pass");
                    String j=request.getParameter("qualification");
                     String k=request.getParameter("st");
             
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","");
  Statement st=con.createStatement();
  String sql="Insert into students(rollno,name,fname,course,payStatus,contact,em,dob,pass,qualification,st)values('"+a+"','"+b+"','"+c+"','"+d+"','"+m+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"')";
           
  int z=st.executeUpdate(sql);
  if(z>0)
  {
            response.sendRedirect("http://localhost:8080/task2/masterpage.jsp");
  

  }
}catch(Exception e){}
         
  
  %>      
        </div>
        </body>
</html>
