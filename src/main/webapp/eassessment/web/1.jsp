<%-- 
    Document   : 1
    Created on : 8 Aug, 2018, 12:09:31 PM
    Author     : Kushagra Deep Mishra
--%>


<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Faculty</title>
          
    <style> 
body {font-family: "Times New Roman", Georgia, Serif;}
h1,h2,h3,h4,h5,h6 {
    font-family: "Playfair Display";
    letter-spacing: 5px;
}
</style>
    </head>
    <body>
        <div class="container-fluid">
  
  <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> ALL FACULTIES</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                  <tr><th>FId</th><th>FName</th><th>CourseId</th><th>Contact</th><th>Email</th><th>Delete</th><th>Update</th><th>View</th></tr>
      
              </thead>
              <tfoot>
                  <tr><th>FId</th><th>FName</th><th>CourseId</th><th>Contact</th><th>Email</th><th>Delete</th><th>Update</th><th>View</th></tr>
      
              </tfoot>
              <tbody>
                
                <%
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select * from faculity";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
  {
  %>
     <tr><td><%=rs.getString("fid") %></td><td><%=rs.getString("fname") %></td><td><%=rs.getString("courseid") %></td><td><%=rs.getString("contact")%></td><td><%=rs.getString("email") %></td><td><button type="button" value="Del-<%=rs.getString("fid") %>" class="btn btn-danger">Delete</button></td><td><button type="button" value="Up-<%=rs.getString("fid") %>" class="btn btn-success" data-toggle="modal" data-target="#myModal" >Update</button></td><td><button type="button" value="View-<%=rs.getString("fid") %>" class="btn btn-primary" data-toggle="modal" data-target="#myModal" >View</button></td></tr>
     <%
  }
 }
  catch(Exception e){}
  
  %>        
              </tbody>
            </table>
              <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
          <h4 class="modal-title"></h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        
      </div>
      <div class="modal-body">
        
          
          <div id="result">
              
              
          </div>
          
          
          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
          </div>
        </div>
        <div class="card-footer small text-muted"></div>
      </div>
    </div>
<script>
            
$(document).ready(function(){
    
    
    $("button").click(function(){
        
        var a=$(this).val();
        var s=a.split("-");
        
        if(s[0]=="Del")
        {
           
           
    $.get("del_1.jsp",
    {
        name: s[1]
    },
    function(data, status){
        alert("Record is succesfully deleted");
        location.reload();
    });     
        }
        if(s[0]=="Up")
        {
            
        $.get("Up_1.jsp",
    { 
        name: s[1]
    },
    function(data, status){
       
       $("#result").html(data);
    });    
        }
        if(s[0]=="View")
        {
            $.get("view_1.jsp",
    {
        name: s[1]
    },
    function(data, status){
       
       $("#result").html(data);
       
     
    });
        }
    });
    
    
    
});  
            
         </script>               

    
       
    </body>
</html>
