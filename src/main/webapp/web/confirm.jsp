<%-- 
    Document   : confirm
    Created on : Aug 30, 2018, 4:29:22 AM
    Author     : Arti
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
            
  try
  {
	  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql1="Insert into answer(qid,ans,pcode,rollno)values('"+request.getParameter("qindex")+"','"+request.getParameter("op1")+"','"+request.getParameter("paper")+"','"+request.getParameter("roll")+"')";        
   int i=st.executeUpdate(sql1);
 if(i>0)
     out.println("Data is saved");
   } catch(Exception e){out.print (e.getMessage());
   e.printStackTrace();}
  
  %>   
        
    </body>
</html>