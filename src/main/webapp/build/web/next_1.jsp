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

    </head>
    <body>
 <!---Database Connection----->
        <%
            try
                {
                    
                 int x=Integer.parseInt(request.getParameter("qindex"));
                 String s=request.getParameter("ques");
                 out.println(x+" "+s);
                 String a[]=s.split(",");
                
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
                    Statement st=con.createStatement();
                    String sql="Select * from  fill where qid='"+a[x++]+"'";
                    ResultSet rs=st.executeQuery(sql);
                    rs.next();
                    
        %>
        
        
        <form action="confirm.jsp" method="get">
            <input type="hidden" id="index" value="<%=x%>">
            <input type="hidden" id="ques" value="<%=s%>">
            
                <div class="form-group"><h4><u>Question</u>-<%=x %></h4><h3><%=rs.getString("que") %></h3></div>
           
                <div class="radio">
                    <label><input type="radio" name="optradio"><b>a.</b> <%=rs.getString("obj1") %><br></label>
                </div>

                <div class="radio">
                    <label><input type="radio" name="optradio"><b>b.</b> <%=rs.getString("obj2") %><br></label>
                </div>
                
                <div class="radio">
                    <label><input type="radio" name="optradio"><b>c.</b> <%=rs.getString("obj3") %><br></label>
                </div>
                
                <div class="radio">
                    <label><input type="radio" name="optradio"><b>d.</b> <%=rs.getString("obj4") %><br></label>
                </div>
            
                <div>
                    <button type="button" class="btn btn-primary" >Previous</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="button" class="btn btn-primary" value="Next-<%=rs.getString("qid") %>">Next</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="submit" class="btn btn-success">Confirm</button>&nbsp;&nbsp;
                    <button type="button" class="btn btn-danger">Reset</button>
                </div>
        
                 
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
           alert($("#index").val()+" "+$("#ques").val());
    $.get("next.jsp",
    {
        qindex:$("#index").val(),
        ques:$("#ques").val()
    },
    function(data, status){
        $("#qa").html(data);
        
    });
       
            
        }
        
         });
    
    
    
});  
            
         </script>   
       
    </body>
</html>
