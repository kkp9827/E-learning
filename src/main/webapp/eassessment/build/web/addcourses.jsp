<%-- 
    Document   : addcourses
    Created on : Aug 7, 2018, 4:03:20 AM
    Author     : Arti
--%>

<%@page contentType="text/html"  import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>add course</title>
		<link type='text/css' rel='stylesheet' href='stylesheet.css'/>
		<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open Sans"/>
                    
	</head>
	<body>
		 <div class="card mb-3">
                     <div class="card-header"><b><h3> Courses</h3></b></div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                    <th><center>Course ID</center></th>
                  <th><center>Course Name</center></th>
                  <th><center>Duration</center></th>
                  <th><center>Fees</center></th>
                  <th><center>Discount %</center></th>
                  <th><center>Apply</center></th>
                  </tr>
              </thead>
              <tfoot>
                <tr>
                  <th><center>Course ID</center></th>
                  <th><center>Course Name</center></th>
                  <th><center>Duration</center></th>
                  <th><center>Fees</center></th>
                  <th><center>Discount %</center></th>
                  <th><center>Apply</center></th>
                  </tr>
              </tfoot>
              
              <tbody>
           
                
               <%
                    try
                    {
                        
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
                       Statement st=con.createStatement();
                       
                       String sql="select * from course";
                       ResultSet rs=st.executeQuery(sql);
                       while(rs.next())
                       {
                       %>
                       
                       <tr><td><center><%=rs.getString(1) %></center></td><td><center><%=rs.getString(2) %></center></td><td><center><%=rs.getString(3) %></center></td><td><center><%=rs.getString(4) %></center></td><td><center><%=rs.getString(5) %></center></td><td><center><button class="btn btn-danger">Apply</button></center></td></tr>
                       
                       <%
                       }
                       }catch(Exception e){}
                       
                       %>
                  
               
                   </tbody>
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>
         
      
	</body>
</html>

