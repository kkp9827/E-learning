<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String typee=request.getParameter("type");
String tide=request.getParameter("tid");
String questione=request.getParameter("question");
try{
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root", "root");
      Statement st=conn.createStatement();
      String sql1="insert into query(type,tid,question,date)values('"+typee+"','"+tide+"','"+questione+"',now())";
      int i=st.executeUpdate(sql1);
      response.sendRedirect("http://localhost:8080/Kushagra/adminmasterpage.jsp?page=6");

}
catch(Exception e){}

%>