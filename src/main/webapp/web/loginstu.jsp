<%-- 
    Document   : loginstu
    Created on : Sep 11, 2018, 3:32:17 AM
    Author     : Niti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
        
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS--> +
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
    </head>
    <body>
     
             <div class="container" style="width:500px; height:100px; margin-top: 100px;">
                 <div class="jumbotron" style="height:500px;background-color: #cccccc">
 
      <center><h2>Faculty Login</h2></center>
       <form   method="get" action="loginstu2.jsp">
        
       
    <div class="form-group">
         
     
       <br>   <br>
       
          <div class="form-horizontal" >
  <label for="comment">User Id:</label>
  <input  type="text" class="form-control" rows="5"  name="uname" placeholder="Username" >
 </div>
        
       
       <br><br>
      
  <div   class="form-group">
    <label for="obj1"> Password:</label>
    <input type="password" class="form-control" name="pwd" placeholder="Password" >
  </div>
       </div>
                      
 <input type="submit" class="btn btn-primary" value="Submit">
</form> 
      
     
      </body>
</html>
