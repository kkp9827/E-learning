<%-- 
    Document   : askQuery
    Created on : Aug 7, 2018, 4:58:22 PM
    Author     : user
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="jquery.min.js"></script>
  <script src="https:js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
  
  <style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1,h2,h3,h4,h5,h6 {
    font-family: "Playfair Display";
    letter-spacing: 5px;
}
</style>
    </head>
    <body>
         <div class="card">

    
  
           
      <div class="container" class="form-group" style="background-image: url('images/semi55.jpg');" >
     <div class="row">
    
         <div class="col-sm-4">
        
             <center><img src="images/semi59.jpg" alt="Smiley face"></center>
        
         </div>    
        
    <div class="col-sm-8">    
        <h1><b><u>Query</u></b></h1> 
           <form action="viewQuery.jsp" method="get">
    <div class="form-group">
       <label for="sel1">Type</label>
       <select class="form-control" name="type">
  
      <option selected>Type</option>
      <option value="admin">Admin</option>
      <option value="faculty">Faculty</option>
  </select>
    </div>
     
    <div class="form-group">
      <label >To ID:</label>
      <input type="text" class="form-control" placeholder="Type id or roll no." name="tid">
    </div>
          <div class="form-group">     
      <label >From ID:</label>
      <input type="text" class="form-control" placeholder="enter your id or roll no." name="fid">
    </div>
    <div class="form-group">
        <label>Query</label><br>
        <textarea class="form-control rounded-0" rows="4" name="query"></textarea>
    </div>
               <button type="submit" class="btn btn-success">Submit</button>
  </form>
     <br>          
      </div>

    </div>
      </div></div>
        <br>
        
         
        <div class="card">
<h4 class="card-header p-4 bg-success text-white text-center">
    <strong>Answers</strong>
    
  </h4>
           <br><br>
        
   <div class="container">
             <%
            
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select * from query";
  ResultSet rs=st.executeQuery(sql);

  %>
     
  <%
  
  while(rs.next())
  {
    int i=rs.getInt("quid");      
  %>
       <div class="col-lg-12">
           <hr>
        <div class="row">
         <div class="col-lg-2">
             <center><img src="images/semi60.jpg" alt="img" height="80" width="80"></center>
             </div>
         <div class="col-lg-8">
          <div><b><%=rs.getString("query") %></b><br><br>
                  <button type="button" class="btn btn-danger btn-md">Answer</button>&nbsp;&nbsp;<button type="button" class="btn"><i class="fa fa-reply" aria-hidden="true"></i></button>&nbsp;&nbsp;   
                  <b> Asked On:</b>&nbsp;<%=rs.getString("doq") %></div><br>
         </div>
         <div class="col-lg-2"><center>
        <button class="btn"><i class="fa fa-eye" aria-hidden="true"></i></button>
        <button class="btn"><i class="fa fa-heart" aria-hidden="true"></i></button>
        <button class="btn"><i class="fa fa-facebook-official" aria-hidden="true"></i></button>
             </center> 
         </div>
                  
            <%
  }

   } catch(Exception e){}
  
  %> 
  
        </div>
        </div>
        </div>
         </div>
  
   </body>
</html>

