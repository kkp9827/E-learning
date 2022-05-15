<%-- 
    Document   : table
    Created on : Aug 28, 2018, 3:41:51 AM
    Author     : Niti
--%>


<%@page contentType="text/html" import="java.sql.*,com.tom.Helper" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
   <script src="jquery.min.js"></script>
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
    
}
</style>
    </head>
    <body>
        <div class="container">
          
            <center><h1><b>GATE</b></h1></center>
    
            </div>
     <!-------countdowm------>     
               
    
            <!-- Display the countdown timer in an element -->
    <center><h4><p id="demo" style="background-color: red;color: white; height: 30px;"></p></h4></center>

        <script>
                      // Set the date we're counting down to
                      var countDownDate = new Date("Aug 25, 2018 13:48:00").getTime();

                        // Update the count down every 1 second
                        var x = setInterval(function() {

                         // Get todays date and time
                         var now = new Date().getTime();

                        // Find the distance between now and the count down date
                        var distance = countDownDate - now;

                     // Time calculations for days, hours, minutes and seconds
                     var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                     var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                     var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                     var seconds = Math.floor((distance % (1000 * 60)) / 1000);

                     // Display the result in the element with id="demo"
                     document.getElementById("demo").innerHTML = hours + "h "
                     + minutes + "m " + seconds + "s ";

                     // If the count down is finished, write some text 
                     if (distance < 0) {
                     clearInterval(x);
                     document.getElementById("demo").innerHTML = "EXPIRED";
                    }
                    }, 1000);
            </script>
      
       
          
           
           
    
        
        <div class="container">
           
            
            <div class="row">
                 <input type="hidden" id="index" value="0">
            <input type="hidden" id="ques" value="1,3,5,7,8,10,">
               <div class="col-sm-9" id="qa">         
        
        
        <!---Database Connection----->
        <%
            try
                {
                    
                  
                 String s=com.tom.Helper.getQuestions();
                 String a[]=s.split(",");
                 int x=0;
                 Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
                    Statement st=con.createStatement();
                    String sql="Select * from  fill where qid='"+a[x]+"'";
                    ResultSet rs=st.executeQuery(sql);
                    rs.next();
                    
        %>
        
        
        <form action="confirm.jsp" method="get">
            
            
            <div class="form-group"><h3><b><u>Question</u>-<%=(x+1)%></b></h3><br><h5><%=rs.getString("que") %></h5></div>
           
                <div class="radio">
                    <label><input type="radio" name="optradio"><b>&nbsp;a.</b> <%=rs.getString("obj1") %><br></label>
                </div>

                <div class="radio">
                    <label><input type="radio" name="optradio"><b>&nbsp;b.</b> <%=rs.getString("obj2") %><br></label>
                </div>
                
                <div class="radio">
                    <label><input type="radio" name="optradio"><b>&nbsp;c.</b> <%=rs.getString("obj3") %><br></label>
                </div>
                
                <div class="radio">
                    <label><input type="radio" name="optradio"><b>&nbsp;d.</b> <%=rs.getString("obj4") %><br></label>
                </div>
                <br>
                <div>
                    <center> <button type="button" class="btn btn-primary" >Previous</button>&nbsp;&nbsp;
                    <button type="button" class="btn btn-primary" value="Next-<%=rs.getString("qid") %>">Next</button>
                    &nbsp;&nbsp;
                    <button type="submit" class="btn btn-success">Confirm</button>&nbsp;&nbsp;
                    <button type="button" class="btn btn-danger">Reset</button>&nbsp;&nbsp;</center>
                </div><br>
          </form>
       
                     <%  
              }catch(Exception e){ out.print(e.getMessage());}
           %>
        
               </div>  
               
          
       
                  <div class="container col-sm-3">
                       
    <button class="btn btn-primary dropdown-toggle col-sm-12" data-toggle="dropdown">
      Select Option
    </button>
    <div class="dropdown-menu col-sm-11">
      <a class="dropdown-item" href="#">Link 1</a>
      <a class="dropdown-item" href="#">Link 2</a>
      <a class="dropdown-item-text" href="#">Text Link</a>
      <span class="dropdown-item-text" href="#">Just Text</span>
    </div><br><br>
                      
               <%
                       
            String s="1,3,5,7,8,10,9,5,2,1";
            String k[]=s.split(",");
           out.print("<table border='2' width='100%'><tr>");
            for(int x=1;x<=k.length;x++)
            {
                if(x%5==0)
                {
                out.print("<td><button  value='change-index'>"+x+"</button></td></tr><tr>");
                }
                else
                {
            out.print("<td><button  value='change-index'>"+x+"</button></td>");
                }
            }
             out.print("</tr></table>");          
                       
                       %>
                 
    
</div>    
        </div>
      
        </div>
                   
                       
    
        
        
                <script>
            
$(document).ready(function(){
    
    
    $("button").click(function(){
        
        var a=$(this).val();
        var s=a.split("-");
        
        if(s[0]=="Next")
        {
           
    $.get("next.jsp",
    {
        qindex:parseInt($("#index").val())+1,
        ques:$("#ques").val()
    },
    function(data, status){
       var m= parseInt($("#index").val())+1;
       $("#index").val(m+"");
        $("#qa").html(data);
        
    });
       
            
        }
        
        if(s[0]=="change")
            
               $.get("table.jsp",
    {
        name: s[1]
    },
    
     function(data, status){
       
       $("#qa").html(data);
   }
       
         });
    
    
    
});  
            
         </script>   
        
        
    </body>
</html>

    </body>
</html>
