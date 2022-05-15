<%-- 
    Document   : assign
    Created on : Sep 28, 2018, 12:19:52 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
<%  
   MultipartRequest m = new MultipartRequest (request, "f:/new");  
   out.print("successfully uploaded");  
  
%>  
    </body>
</html>
