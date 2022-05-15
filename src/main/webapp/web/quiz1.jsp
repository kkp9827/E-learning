<%-- 
    Document   : quiz1
    Created on : Aug 15, 2018, 10:27:14 PM
    Author     : user
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
                     document.getElementById("demo").innerHTML = hours + "h"
                     + minutes + "m" + seconds + "s";

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
                 Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
                    Statement st=con.createStatement();
                    String sql="Select * from  fill where qid='"+a[x]+"'";
                    ResultSet rs=st.executeQuery(sql);
                    rs.next();
                    
        %>
        
        
        <form action="confirm.jsp" method="get">
            
            
            <div class="form-group"><h3><b><u>Question</u>-<%=(x+1)%></b></h3><br><h5><%=rs.getString("que") %></h5></div>
            
            <div><input type="hidden" id="pcode" value="p101" ></div>
             <div><input type="hidden" id="rollno" value="101" ></div>
            
           
                <div class="radio">
                    <label><input type="radio" id="op" value="option1"><b>&nbsp;a.</b> <%=rs.getString("obj1") %><br></label>
                </div>

                <div class="radio">
                    <label><input type="radio"  id="op" value="option2"><b>&nbsp;b.</b> <%=rs.getString("obj2") %><br></label>
                </div>
                
                <div class="radio">
                    <label><input type="radio"  id="op" value="option3"><b>&nbsp;c.</b> <%=rs.getString("obj3") %><br></label>
                </div>
                
                <div class="radio">
                    <label><input type="radio" id="op" value="option4"><b>&nbsp;d.</b> <%=rs.getString("obj4") %><br></label>
                </div>
                <br>
                <div>
                    <center> <button type="button" class="btn btn-primary" value="Next-123 %>">Next</button>&nbsp;&nbsp;
                    <button type="button" class="btn btn-success" value="Conf-123">Confirm</button>&nbsp;&nbsp;
                    <button type="button" class="btn btn-danger">Reset</button>&nbsp;&nbsp;</center>
                </div><br>
          </form>
        
        
        <%
              } catch(Exception e){ out.print(e.getMessage());}
           %>
        
               </div>
               
          
       
                  <div class="container col-sm-3">
                       
    <div class="form-group">            
   
  <label for="sel1">Select Course</label>
  <select class="form-control" id="sel1">
    <option>html</option>
    <option>Core java</option>
    <option> css</option>
    <option>javascript</option>
  </select>
</div>             
                      <br><br>
                      
  
    <%
                       
            String s="1,3,5,7,8,10,9,5,2,";
            
            String k[]=s.split(",");
            out.print("<table border='1' width='100%'><tr>");
            for(int x=1;x<=k.length;x++)
            {
                if(x%4==0)
                {
                out.print("<td><center><button class='btn btn-default id='query1' value='jump-"+(x-1)+"'>"+x+"</td></button></center></tr><tr>");
                }
                else
                {
            out.print("<td><center><button class='btn btn-default id='query2' value='jump-"+(x-1)+"'>"+x+"</button></center></td>");
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
        
        if(s[0]=="Conf")
        {
        
    $.get("confirm.jsp",
    {
      
        qindex:parseInt($("#index").val())+1,
        ques:$("#ques").val(),
        op1:$("#op").val(),
        paper:$("#pcode").val(),
        roll:$("#rollno").val()
        
    },
    function(data, status){
        alert(data);
       var m= parseInt($("#index").val())+1;
       $("#index").val(m+"");
        $("").html(data);
        
    });
       
            
        }
        
         if(s[0]=="jump")
        {
         
    $.get("next.jsp",

        
            
            
            
            {
        qindex:s[1],
        ques:$("#ques").val()
    },
    function(data, status){
       var m= parseInt(s[1]);
       $("#index").val(m+"");
        $("#qa").html(data);
        
    });
         }
         
  
    }); 
  });  
                  
         </script>   
         
          
        
    </body>
</html>















