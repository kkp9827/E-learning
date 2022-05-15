<%-- 
    Document   : masterpage
    Created on : Jul 25, 2018, 8:18:43 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>

  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
</style>
    </head>
    <body>
   

<nav class="nav-tabs-justified navbar-inverse">
  <div class="container-fluid">
    
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
          
        <li class="active"><a href="masterpage.jsp?page=1">Home</a></li>
        <li><a href="masterpage.jsp?page=2"><span class="glyphicon glyphicon-book"></span>HTML</a></li>
        
        <li><a href="masterpage.jsp?page=3"><span class="glyphicon glyphicon-book"></span>C Language</a></li>
        <li><a href="masterpage.jsp?page=4"><span class="glyphicon glyphicon-book"></span>C++ Programming</a></li>
         <li><a href="masterpage.jsp?page=5"><span class="glyphicon glyphicon-book"></span>Core Java</a></li>
          <li><a href="masterpage.jsp?page=6"><span class="glyphicon glyphicon-book"></span>Advance Java</a></li>
           <li><a href="masterpage.jsp?page=7"><span class="glyphicon glyphicon-book"></span>CSS</a></li>
           
      </ul>
      <ul class="nav navbar-nav navbar-right">
          <li><a href="masterpage.jsp?page=8"><span class="glyphicon glyphicon-user"></span>Faculty Registration</a></li>
      <li><a href="masterpage.jsp?page=9"><span class="glyphicon glyphicon-user"></span>Student Registration</a></li>
        <div class="container">
  
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-default btn-lg" id="myBtn">Login</button>

<!-- Modal -->
  <div class="modal animate" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="text" class="form-control" id="psw" placeholder="Enter password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Not a member? <a href="#">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>
        </div>
      </div>
      
    </div>
  </div> 
</div>
 

<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
</script>
      </ul>
    </div>
  </div>
</nav>
        
           <%
           
           int p=1;
           if(request.getParameter("page")!=null)
           p=Integer.parseInt(request.getParameter("page"));
           
           switch(p)
           {
               case 1:
           %>     
           <jsp:include page="master.jsp"></jsp:include>     
                <%
                break;
                case 2:
                %>
                <jsp:include page="HTML.jsp"></jsp:include>     
                <%
                break;
                case 3:
                %>
                <jsp:include page="c.jsp"></jsp:include>     
                <%
                break;
                case 4:
                %>
                <jsp:include page="c1.jsp"></jsp:include>     
                <%
                break;
                case 5:
                %>
                <jsp:include page="corejava.jsp"></jsp:include>     
                <%
                break;
                case 6:
                %>
                <jsp:include page="advjava.jsp"></jsp:include>     
                <%
                break;
                case 7:
                %>
                <jsp:include page="css.jsp"></jsp:include>     
                <%
                break;
                case 8:
                %>
                <jsp:include page="form2.jsp"></jsp:include>     
                <%
                break;
                case 9:
                %>
                <jsp:include page="form.jsp"></jsp:include>     
                <%
                break;
                case 10:
                %>
                <jsp:include page="login.jsp"></jsp:include>     
                <%
                break;
                }
                %>
             
        
        
    </body>
</html>