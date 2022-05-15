

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
   
        <form role="form" method="get" action="csubmit.jsp">
 <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Question Bank</div>
        <div class="card-body">
            <div class="table-responsive">
                
                              <div class="form-group">
  <label for="usr">Paper code:</label>
  <input type="text" class="form-control"  name="pcode"
         
        id="usr">
</div>
         
                <div class="form-group">
  <label for="usr">Paper code:</label>
  <input type="text" class="form-control"  name="pcode"
         
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
  <label for="mark">Marks per question:</label>
  <input type="text" class="form-control"  name="marks" id=mark>
</div>
   
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
             <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Type: activate to sort column ascending">Select</th>
       
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
  
  
  <tr role="row" class="odd"><td><%=rs.getString("qid") %></td><td><%=rs.getString("que") %></td><td><%=rs.getString("obj1") %></td><td><%=rs.getString("obj2") %></td><td><%=rs.getString("obj3") %></td><td><%=rs.getString("obj4") %></td><td><%=rs.getString("ans") %></td><td class="sorting_1"><%=rs.getString("qtype") %></td><td><center><input type="checkbox" value="<%=rs.getString("qid") %>" name="ques"></center></td></tr>
  
  <%
  }
 }
  catch(Exception e){}
  
  %> 
  
       
       </tbody>
  
            </table>
  <center><input type="submit" class="btn btn-info" value="Submit"></center>
            </div>
  

                </div>
                    
 </div>
   
    </form> 
    </body>
</html>
