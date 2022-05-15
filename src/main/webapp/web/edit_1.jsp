<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<% 
String rollno=request.getParameter("fid");
String fname=request.getParameter("fname");
String course=request.getParameter("course");
String contact=request.getParameter("contact");
String email=request.getParameter("email");
String password=request.getParameter("password");
String status=request.getParameter("status");

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
Statement st=conn.createStatement();
String sql1=("update faculity set fname='"+fname+"',courseid='"+course+"',contact='"+contact+"',email='"+email+"',passward='"+password+"',status='"+status+"' where fid='"+rollno+"'");
int i=st.executeUpdate(sql1);
{
response.sendRedirect("http://localhost:8080/online/web/adminmasterpage.jsp?page=1");
}
}
catch(Exception e){}
%>