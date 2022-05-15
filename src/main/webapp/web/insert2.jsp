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
             String  a=request.getParameter("rollno");
             String b=request.getParameter("name");
              String c=request.getParameter("fname");
               String d=request.getParameter("course");
               String m=request.getParameter("payStatus");
                String f=request.getParameter("contact");
                 String g=request.getParameter("em");
                  String h=request.getParameter("bday");
                   String i=request.getParameter("psw");
                    String j=request.getParameter("qualification");
                     String k=request.getParameter("st");
             
  try
  {
	  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini?useSSL=False","root","root");
  Statement st=con.createStatement();
  String sql="insert into students(rollno,name,fname,course,payStatus,contact,email,dob,password,qualification,status)values('"+a+"','"+b+"','"+c+"','"+d+"','"+m+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"')";
           
  int z=st.executeUpdate(sql);
  if(z>0)
  {
      response.sendRedirect("http://localhost:8080/online/web/masterpage.jsp?page=9");
  }
  
}catch(Exception e){}
         
  
  %>      
     
  </body>
</html>