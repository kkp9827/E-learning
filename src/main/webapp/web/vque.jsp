<%-- 
    Document   : vque
    Created on : Aug 7, 2018, 4:59:51 PM
    Author     : Niti
--%>
<%@page contentType="text/html"  import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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

    
 <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Question Bank</div>
        <div class="card-body">
            <div class="table-responsive">
   
                 <div class="row">
                    <div class="col-sm-12 col-md-6">
                                </div>
                    </div>
                  
              
              
                 
                        <table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
              <thead>
                <tr role="row">
                    <th class="sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Id: activate to sort column descending" aria-sort="ascending">Id</th>
                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Question: activate to sort column ascending">Question</th>
                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Option 1: activate to sort column ascending">Option1</th>
                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Option 2: activate to sort column ascending">Option2</th>
                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Option 3: activate to sort column ascending">Option3</th>
                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Option 4: activate to sort column ascending">Option4</th>
                 <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Answer: activate to sort column ascending">Answer</th>
               <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Type: activate to sort column ascending">Type</th>
               <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Delete: activate to sort column ascending">Delete</th>
               <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Update: activate to sort column ascending">Update</th>
               <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="View: activate to sort column ascending">View</th>
              </tr>
              </thead>
             
              <tbody>
                                      
            <%
  try
  {
	  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select * from fill";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
  {
  %>
  
  
            <tr role="row" class="odd"><td><%=rs.getString("qid") %></td><td><%=rs.getString("que") %></td><td><%=rs.getString("obj1") %></td><td><%=rs.getString("obj2") %></td><td><%=rs.getString("obj3") %></td><td><%=rs.getString("obj4") %></td><td><%=rs.getString("ans") %></td><td class="sorting_1"><%=rs.getString("qtype") %></td><td><button type="button" value="Del-<%=rs.getString("qid") %>" class="btn btn-danger">Delete</button></td><td><button type="button" value="Up-<%=rs.getString("qid") %>" class="btn btn-success" data-toggle="modal" data-target="#myModal"  >Update</button></td><td><button type="button" value="View-<%=rs.getString("qid") %>" class="btn btn-primary"  data-toggle="modal" data-target="#myModal1"  >View</button></td></tr>
  
  
  <%
  }
 }
  catch(Exception e){}
  
  %>      
       </tbody>
            </table>
            </div>
                </div>
                    
       
    
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div> 
     <!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modification</h4>
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
   
   <!-- Modal -->
<div id="myModal1" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Details</h4>
      </div>
      <div class="modal-body">
        
          
          <div id="see">
              
              
          </div>
          
          
          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
   
      
   
         
        
        

   
        
        
        <script>
            
$(document).ready(function(){
    
    
    $("button").click(function(){
        
        var a=$(this).val();
        var s=a.split("-");
        
        if(s[0]=="Del")
        {
           
           
    $.get("qdel.jsp",
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
            $.get("qupdate.jsp",
    {
        name: s[1]
    },
    function(data, status){
       
       $("#result").html(data);
       
     
    });
            
        }
        if(s[0]=="View")
        {
                   $.get("disp1.jsp",
    {
        name: s[1]
    },
    function(data, status){
       
       $("#see").html(data);
       
     
    });
        }
    });
    
    
    
});  
            

         </script>   
        
    
    </body>
</html>
