<%-- 
    Document   : 11
    Created on : 8 Aug, 2018, 12:44:59 PM
    Author     : Kushagra Deep Mishra
--%>


<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <style> 
body {font-family: "Times New Roman", Georgia, Serif;}
h1,h2,h3,h4,h5,h6 {
    font-family: "Playfair Display";
    letter-spacing: 5px;
}
</style>
    <body>
        <h1>Ask Query</h1>
        <form method="get" action="insert.jsp">
            <select name="type" class="custom-select mb-3">
      <option selected>Type</option>
      <option value="student">Student</option>
      <option value="faculty">Faculty</option>
    </select>
  <div class="form-group">
    <label for="email">Id</label>
    <input type="text" class="form-control" id="email" name="tid">
  </div>
  <div class="form-group">
    <label for="pwd">Question</label>
    
    <textarea class="form-control rounded-0" id="exampleFormControlTextarea1" rows="5" name="question"></textarea>
  </div>
  <div class="form-group form-check">
    
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
  <div class="container">
  <h2>Queries</h2>
  <table class="table">
      <%
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","");
  Statement st=con.createStatement();
  String sql="Select * from query";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
  {
  %>
  <tr>QueryId:- <%=rs.getString("qid") %></tr><br><tr>User Type:- <%=rs.getString("type") %></tr><br><tr>TypeID:- <%=rs.getString("tid") %></tr><br><tr>Your Query:- <%=rs.getString("question") %></tr><br><tr>Date:- <%=rs.getString("date") %></tr>
  <%
  }
 }
  catch(Exception e){}
  
  %>      
  </table>
</div>      
        
    </body>
</html>
