<%-- 
    Document   : quiz
    Created on : Aug 14, 2018, 3:39:16 PM
    Author     : Niti
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
              <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
              <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title> <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
   <script src="jquery.min.js"></script>

    </head>
    <body>
            <%
  try
  {
	  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select * from  course";
  ResultSet rs=st.executeQuery(sql);
  %>
   
   
                    <div class=" col-md-12">
                <div class="row">
                    <div class="col-md-8">
                    </div>
                    <div class="col-md-4">
  <div class="form-group">
      <label for="sel1"></label>
      <select class="form-control" id="sel1">
  
  <%
  
  while(rs.next())
  {
  %>
    <option value="<%=rs.getString("courseid") %>">  
        <%=rs.getString("course") %>
    </option>
    
    <%
  }
 }
  catch(Exception e){}
  
  %>      
        </select> 
  </div><br>
  <br>
        <div class="container">
  <div class="jumbotron">
   
        <div class="row">
  <div class="col-sm-3"><button type="button" class="btn btn-info btn-sm">1</button>
</div>
  <div class="col-sm-3"><button type="button" class="btn btn-primary btn-sm">2</button>
</div>
  <div class="col-sm-3"><button type="button" class="btn btn-primary btn-sm">3</button>
</div>
    <div class="col-sm-3"><button type="button" class="btn btn-primary btn-sm">4</button>
</div>
        </div><br>
            <div class="row">
  <div class="col-sm-2"><button type="button" class="btn btn-primary btn-sm">Small</button>
</div>
  <div class="col-sm-2"><button type="button" class="btn btn-primary btn-sm">Small</button></div>
  <div class="col-sm-2"><button type="button" class="btn btn-primary btn-sm">Small</button></div>
    <div class="col-sm-2"><button type="button" class="btn btn-primary btn-sm">Small</button></div>
</div>   
  </div></div>  
        
        
                    </div>
                    </div></div>
   
  
    </body>
</html>
