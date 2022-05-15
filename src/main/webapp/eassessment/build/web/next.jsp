<%-- 
    Document   : next
    Created on : Aug 16, 2018, 5:13:05 AM
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
 <script src="jquery.min.js"></script>
    </head>
    <body>
 <!---Database Connection----->
        <%
            try
                {
                    
                 int x=Integer.parseInt(request.getParameter("qindex"));
                 String s=request.getParameter("ques");
                 
                 String a[]=s.split(",");
                
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
                    Statement st=con.createStatement();
                    String sql="Select * from  fill where qid='"+a[x]+"'";
                    ResultSet rs=st.executeQuery(sql);
                    rs.next();
                    
        %>
        
        
        <form action="confirm.jsp" method="get">
            <div><input type="hidden" id="pcode" value="p101" ></div>
             <div><input type="hidden" id="rollno" value="101" ></div>    
            
            
            <div class="form-group"><h3><b><u>Question</u>-<%=x+1+"  "%></b></h3><br><h5><%=rs.getString("que") %></h5></div>
           
                <div class="radio">
                    <label><input type="radio" name="optradio" id="op" value="option1"><b>&nbsp;a.</b> <%=rs.getString("obj1") %><br></label>
                </div>

                <div class="radio">
                    <label><input type="radio" name="optradio" id="op" value="option2"><b>&nbsp;b.</b> <%=rs.getString("obj2") %><br></label>
                </div>
                
                <div class="radio">
                    <label><input type="radio" name="optradio" id="op" value="option3"><b>&nbsp;c.</b> <%=rs.getString("obj3") %><br></label>
                </div>
                
                <div class="radio">
                    <label><input type="radio" name="optradio" id="op" value="option4"><b>&nbsp;d.</b> <%=rs.getString("obj4") %><br></label>
                </div>
                <br>
                <div>
                    <center><button type="button" class="btn btn-primary" value="Pre-123">Previous</button>&nbsp;&nbsp;
                    <% if(x<5) { %>
                    <button type="button" class="btn btn-primary" value="Next-123">Next</button> &nbsp;&nbsp;
                    <% } else { %>
                    <button type="button" class="btn btn-danger" value="Finish-123">Finish</button> &nbsp;&nbsp;
                    <% } %>
                    <button type="button" class="btn btn-success" value="Conf">Confirm</button>&nbsp;&nbsp;
                    <button type="button" class="btn btn-danger">Reset</button>&nbsp;&nbsp;</center>
                 </div><br>
        
                 
            </form>
        
        
        <%
              }catch(Exception e){ out.print(e.getMessage());}
           %>
        
           
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
        
                
       if(s[0]=="Pre")
        {
          
    $.get("previous.jsp",
    {
        qindex:parseInt($("#index").val())-1,
        ques:$("#ques").val()
    },
    function(data, status){
        var m= parseInt($("#index").val())-1;
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
        
         });
    
    
    
});          
         </script>   
       
    </body>
</html>
