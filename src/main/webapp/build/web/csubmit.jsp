<%-- 
    Document   : csubmit
    Created on : Aug 16, 2018, 12:29:00 AM
    Author     : Niti
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title
               <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  
    </head>
    <body>
          <%
               String s1="";
         String p=request.getParameter("pcode");
      String d=request.getParameter("adate");
         String t=request.getParameter("atime");
          String m=request.getParameter("marks");
          
           String s[]=request.getParameterValues("ques");
           for(int x=0;x<s.length;x++)
             s1=s1+s[x]+",";
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini", "root", "root");
Statement st=conn.createStatement();
String sql="Insert into paper(pcode,adate,atime,marks,ques)values('"+p+"','"+d+"','"+t+"','"+m+"','"+s1+"')";
int i=st.executeUpdate(sql);
out.println("Data is successfully inserted!");

response.sendRedirect("http://localhost:8080/eassessment/index.jsp?page=3");
}
catch(Exception e) 
{
out.print(e.getMessage());
e.printStackTrace();
}
%>
   
    </body>
</html>
