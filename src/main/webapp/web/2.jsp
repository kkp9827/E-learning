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
        <div class="container">
  <h2>All Students</h2>
  <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Data Table Example</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                  <tr><th>Rollno</th><th>Name</th><th>Fname</th><th>Course</th><th>Pay Status</th><th>Contact</th><th>Delete</th><th>Update</th><th>View</th></tr>
      
              </thead>
              <tfoot>
                <tr><th>Rollno</th><th>Name</th><th>Fname</th><th>Course</th><th>Pay Status</th><th>Contact</th><th>Delete</th><th>Update</th><th>View</th></tr>
      
              </tfoot>
              <tbody>
                
               <%
  try
  {
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select * from students";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
  {
  %>
  <tr><td><%=rs.getString("rollno") %></td><td><%=rs.getString("name") %></td><td><%=rs.getString("fname") %></td><td><%=rs.getString("course")%></td><td><%=rs.getString("payStatus") %></td><td><%=rs.getString("contact") %></td><td><button type="button" value="Del-<%=rs.getString("rollno") %>" class="btn btn-danger">Delete</button></td><td><button type="button" value="Up-<%=rs.getString("rollno") %>" class="btn btn-success" data-toggle="modal" data-target="#myModal" >Update</button></td><td><button type="button" value="View-<%=rs.getString("rollno") %>" class="btn btn-primary" data-toggle="modal" data-target="#myModal" >View</button></td></tr>
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
           
           
    $.get("del.jsp",
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
            
        $.get("Up.jsp",
    { 
        name: s[1]
    },
    function(data, status){
       
       $("#result").html(data);
    });    
        }
        if(s[0]=="View")
        {
            $.get("view.jsp",
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
