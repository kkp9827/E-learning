<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<% 
String rollno=request.getParameter("fid");

String fname=request.getParameter("fname");
String courseid=request.getParameter("courseid");

String contact=request.getParameter("contact");
String email=request.getParameter("email");

String password=request.getParameter("password");
String status=request.getParameter("status");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","");
Statement st=conn.createStatement();
String sql1=("update faculty set fname='"+fname+"',courseid='"+courseid+"',contact='"+contact+"',email='"+email+"',password='"+password+"',status='"+status+"' where fid='"+rollno+"'");
int i=st.executeUpdate(sql1);
response.sendRedirect("http://localhost:8080/Kushagra/adminmasterpage.jsp?page=1");
}
catch(Exception e){}
%>