<%-- 
    Document   : upload
    Created on : Aug 7, 2018, 5:00:28 PM
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
   
          <form action="upload2.jsp" method="get">  
          <h1>Assignment</h1>
          <div> 
                
  <label for="usr">Course code:</label>
  <input type="text" class="form-control"  name="ccode" id="usr"></div>
 
                <div class="form-group">
  <label for="usr">Submission Date:</label>
  <input type="date" class="form-control" name="cdate">
</div>

          <div> 
                
  <label for="usr">File Name:</label>
  <input type="text" class="form-control"  name="cfile" id="usr"></div>
 
          <br> <input type="submit" class="btn btn-info" value="Submit Button">

</form>
  </body>                
                
</html>           
                