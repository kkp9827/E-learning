package com.tom;

import java.io.*;
import java.sql.*;

public class Helper 
{
    
    public static String getQuestions()
    {
    String s="";
        try
        {
            
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
                    Statement st=con.createStatement();
                    String sql="Select * from paper where pcode='pcs1'";
                    ResultSet rs=st.executeQuery(sql);
                    rs.next();
                    s=rs.getString("ques");
                    con.close();
                
        }catch(Exception e){}
    return s;
    }
    
}
