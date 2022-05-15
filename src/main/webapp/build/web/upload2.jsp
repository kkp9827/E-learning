<%-- 
    Document   : upload2
    Created on : Sep 28, 2018, 2:33:41 PM
    Author     : user
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
          
         String p=request.getParameter("ccode");
         String q=request.getParameter("cfile");
         String d=request.getParameter("cdate");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini", "root", "root");
Statement st=conn.createStatement();
String sql="Insert into assignment(ccode,cfile,cdate)values('"+p+"','"+q+"','"+d+"')";
int i=st.executeUpdate(sql);

}
catch(Exception e) 
{
out.print(e.getMessage());
e.printStackTrace();
}
%>
Select a file to upload: <br />
<form action="assign.jsp" method="post" enctype="multipart/form-data">  
Select File:<input type="file" name="fname"/><br/>  
<input type="image" src="MainUpload.png"/>  
</form>
    </body>
</html>
