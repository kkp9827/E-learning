

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
             String  a=request.getParameter("fid");
             String b=request.getParameter("fname");
              String c=request.getParameter("courseid");
               String d=request.getParameter("contac");
               String m=request.getParameter("em");
                String f=request.getParameter("psw");
                 String g=request.getParameter("st");
                 
  try
  {
	  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini?useSSL=False","root","root");
  Statement st=con.createStatement();
  String sql="insert into faculity(fid,fname,courseid,contact,email,passward,status)values('"+a+"','"+b+"','"+c+"','"+d+"','"+m+"','"+f+"','"+g+"')";
           
  int z=st.executeUpdate(sql);
  if(z>0)
  {
      
            response.sendRedirect("http://localhost:8080/online/web/masterpage.jsp?page=8");

  }
}catch(Exception e){}
  
  %>      
       
        </body>
</html>
