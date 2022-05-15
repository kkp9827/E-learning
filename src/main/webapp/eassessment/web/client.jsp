<%-- 
    Document   : client
    Created on : Nov 2, 2018, 11:28:45 PM
    Author     : Niti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
 
         <!-- Bootstrap core CSS-->
 <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

    </head>
    <body>
      <div class="container" style="width:600px;" >
          <div class="jumbotron" style="width:500 ">
              <h1><center> Client Details: </center></h1>
              <form   method="get" action="">
                          <div class="form-group">
  <label for="usr">Email id:</label>
  <input type="text" class="form-control"  name="email"
         
        id="usr">
</div>        
          <div class="form-group">
  <label for="usr">Name:</label>
  <input type="text" class="form-control"  name="usr" id="usr">
          </div>
                  <div class="form-group"> 
  <label for="usr">Current Place:</label>
  <input type="text" class="form-control"  name="current" id="usr">
       </div>
                 <div class="form-group">
  <label for="usr">Destination Place:</label>
  <input type="text" class="form-control"  name="place"
         
        id="usr">
</div> 
                                 <div class="form-group">
  <label for="usr">Activate Date:</label>
  <input type="date" class="form-control" name="adate">
</div>
                  <div class="form-group">
  <label for="usr">Activate Time:</label>
 <input type="time" class="form-control" name="atime">
</div>            
        
                <div class="form-group">
  <label for="usr">Phone no:</label>
  <input type="text" class="form-control"  name="no"
         
        id="usr">
</div>                
                   <div class="form-group">
  <label for="usr">Address:</label>
 
  <textarea class="form-control" rows="5"  name="write" placeholder="write.." ></textarea>
</div>                
     
                    
 <input type="submit" class="btn btn-primary" value="Submit">                                      
                  
              </form>
              
              
              
          </div>
          </div> 
    </body>
</html>
