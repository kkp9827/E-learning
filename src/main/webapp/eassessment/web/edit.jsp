<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<% 
String rollno=request.getParameter("rollno");
String name=request.getParameter("name");
String fname=request.getParameter("fname");
String course=request.getParameter("course");
String payStatus=request.getParameter("payStatus");
String contact=request.getParameter("contact");
String email=request.getParameter("email");
String dob=request.getParameter("dob");
String password=request.getParameter("password");
String qualification=request.getParameter("qualification");
String status=request.getParameter("status");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","");
Statement st=conn.createStatement();
String sql1=("update students set name='"+name+"',fname='"+fname+"',course='"+course+"',payStatus='"+payStatus+"',contact='"+contact+"',email='"+email+"',dob='"+dob+"',password='"+password+"',qualification='"+qualification+"',status='"+status+"' where rollno='"+rollno+"'");
int i=st.executeUpdate(sql1);
response.sendRedirect("http://localhost:8080/Kushagra/adminmasterpage.jsp?page=2");
}
catch(Exception e){}
%>