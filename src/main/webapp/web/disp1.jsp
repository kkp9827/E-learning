<%-- 
    Document   : disp1
    Created on : Aug 10, 2018, 3:52:21 PM
    Author     : Niti
--%>

<%@page contentType="text/html"  import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

    </head>
    <body>
          <form role="form">      
        <div class="container">
 
    <div class="table-responsive">      
  <table class="table table-striped">
   
  <%
  try
  {
   Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select * from fill where qid='"+request.getParameter("name") +"'";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
  {
  %>
  
  
    <tr><th>Question</th><td class="form-control"><%=rs.getString("que") %></td></tr>
  <tr><th>option 1</th><td class="form-control"><%=rs.getString("obj1") %></td></tr>
  <tr><th>option 2</th><td class="form-control"><%=rs.getString("obj2") %></td></tr>
  <tr><th>option 3</th><td class="form-control"><%=rs.getString("obj3") %></td></tr>
    <tr><th>option 4</th><td class="form-control"><%=rs.getString("obj4") %></td></tr>
   <tr><th>Answer</th><td class="form-control"><%=rs.getString("ans") %></td></tr>
  
  
  <%

  }
 }
  catch(Exception e){}
  
  %>      
        </table>
    </div>
        </div>
        </form>
       
    </body>
</html>
