<%-- 
    Document   : qupdate
    Created on : Aug 10, 2018, 12:52:11 PM
    Author     : Niti
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

    </head>
    <body>
           <form  role="form" method="get" action="http://localhost:8080/online/web/qedit.jsp">      
    <div class="container">
 
    <div class="table-responsive">      
  <table class="table table-striped">
   
  <%
  try
  {
	  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select * from  fill where qid='"+request.getParameter("name") +"'";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
  {
  %>
  
  
  <tr><td><input type="hidden" name="id" value="<%=rs.getString("qid") %>"></td></tr>
  <tr><th>Question</th><td><input type="text"  class="form-control" name="qu" value="<%=rs.getString("que") %>"></td></tr>
  <tr><th>Option 1</th><td><input type="text" class="form-control" name="o1" value="<%=rs.getString("obj1") %>"></td></tr>
   <tr ><th>Option 2</th><td><input type="text" class="form-control" name="o2" value="<%=rs.getString("obj2") %>"></td></tr>
  <tr ><th>Option 3</th><td><input type="text"  class="form-control" name="o3" value="<%=rs.getString("obj3") %>"></td></tr>
  <tr ><th>Option 4</th><td><input type="text" class="form-control" name="o4" value="<%=rs.getString("obj4") %>"></td></tr>
  <tr><th>Type</th><td> <input type="text" class="form-control"  name="type" value="<%=rs.getString("qtype") %>"></td></tr>
 
  <tr><th>Answer</th><td>
<select class="form-control" name="ans" >
    <option>Option1</option>
    <option>Option2</option>
    <option>Option3</option>
    <option>Option4</option>
  </select></td></tr>
  <tr><td><input type="submit"  value="Update" class="btn btn-success"></td></tr>
  
  
  <%
  }
 }
  catch(Exception e){}
  
  %>      
        </table>
    </div>
        </form>
      
    </body>
</html>
