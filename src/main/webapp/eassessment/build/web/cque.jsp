<%-- 
    Document   : cque
    Created on : Aug 7, 2018, 4:58:17 PM
    Author     : Niti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <!-- Bootstrap core CSS-->
 <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

    </head>
    <body>
       <div class="container" style="width:500px;">
  <div class="jumbotron" style="height:1200px">
 
      <h1><u>Create Question</u></h1>
      <br>   <br>
      
      <form   method="get" action="data1.jsp">
  
  <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                  <div class="form-horizontal" >
                 <label for="sel1"> Question Type :</label>
  <select class="form-control" name="lang" >
    <option>c language</option>
    <option>Core java</option>
    <option>html</option>
    <option>css</option>
  </select> </div>
              </div>
              
            </div>
          </div>
   
     
       <br>   <br>
       
          <div class="form-horizontal" >
  <label for="comment">Write Question:</label>
  <textarea class="form-control" rows="5"  name="write" placeholder="write.." ></textarea>
 </div>
        
       
       <br><br>
       <div class="form-horizontal" >
  <div   class="form-group">
    <label for="obj1"> Option 1:</label>
    <input type="text" class="form-control" name="obj1" >
  </div>
       </div>
    <div class="form-horizontal" >      
  <div class="form-group">
    <label for="obj2"> Option 2:</label>
    <input type="text" class="form-control"  name="obj2" >
  </div>
    </div>    
           
   
             
           <div class="form-horizontal" >  
  <div  class="form-group">
    <label for="obj3"> Option 3:</label>
    <input type="text" class="form-control" name="obj3" >
  </div>          
           </div>   
               <div class="form-horizontal" >
  <div class="form-group">
    <label for="obj4"> Option 4:</label>
    <input type="text" class="form-control" name="obj4" >
  </div></div><br> <br>
                 <div class="form-horizontal" >
              <div  class="form-group">
    <label for="ans"> Answer:</label>
    <select class="form-control" name="ans" >
    <option>Option1</option>
    <option>Option2</option>
    <option>Option3</option>
    <option>Option4</option>
  </select>
 
              </div>
                 </div><br> <br>
                
               
                    
 <input type="submit" class="btn btn-primary" value="Submit">
               
  
      </form>
  
  
  </div>
    </div>
    
    </body>
</html>
