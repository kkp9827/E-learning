<%-- 
    Document   : data1
    Created on : Aug 9, 2018, 2:58:19 AM
    Author     : Niti
--%>

<%@page contentType="text/html" import="java.sql.*"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
   
    </head>
    <body>
        <%
         String d=request.getParameter("lang");
      String w=request.getParameter("write");
         String o1=request.getParameter("obj1");
          String o2=request.getParameter("obj2");
           String o3=request.getParameter("obj3");
            String o4=request.getParameter("obj4");
           String a=request.getParameter("ans");
        try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini", "root", "root");
Statement st=conn.createStatement();
String sql="Insert into fill(qtype,obj1,obj2,obj3,obj4,ans,que)values('"+d+"','"+o1+"','"+o2+"','"+o3+"','"+o4+"','"+a+"','"+w+"')";
int i=st.executeUpdate(sql);
out.println("Data is successfully inserted!");

response.sendRedirect("http://localhost:8080/eassessment/index.jsp?page=2");
}
catch(Exception e) 
{
out.print(e.getMessage());
e.printStackTrace();
}
%>
    </body>
</html>
