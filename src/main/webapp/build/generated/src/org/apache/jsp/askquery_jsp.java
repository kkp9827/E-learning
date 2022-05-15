package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class askquery_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("  <script src=\"jquery.min.js\"></script>\n");
      out.write("  <script src=\"https:js/bootstrap.min.js\"></script>\n");
      out.write("  <style>\n");
      out.write("    /* Remove the navbar's default margin-bottom and rounded borders */ \n");
      out.write("    .navbar {\n");
      out.write("      margin-bottom: 0;\n");
      out.write("      border-radius: 0;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    /* Add a gray background color and some padding to the footer */\n");
      out.write("    footer {\n");
      out.write("      background-color: #f2f2f2;\n");
      out.write("      padding: 25px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("  .carousel-inner img {\n");
      out.write("      width: 100%; /* Set width to 100% */\n");
      out.write("      margin: auto;\n");
      out.write("      min-height:200px;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  /* Hide the carousel text when the screen is less than 600 pixels wide */\n");
      out.write("  @media (max-width: 600px) {\n");
      out.write("    .carousel-caption {\n");
      out.write("      display: none; \n");
      out.write("    }\n");
      out.write("  }\n");
      out.write("  </style>\n");
      out.write("  \n");
      out.write("  <style>\n");
      out.write("body {font-family: \"Times New Roman\", Georgia, Serif;}\n");
      out.write("h1,h2,h3,h4,h5,h6 {\n");
      out.write("    font-family: \"Playfair Display\";\n");
      out.write("    letter-spacing: 5px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div class=\"card\">\n");
      out.write("\n");
      out.write("    \n");
      out.write("  \n");
      out.write("           \n");
      out.write("      <div class=\"container\" class=\"form-group\" style=\"background-image: url('images/semi55.jpg');\" >\n");
      out.write("     <div class=\"row\">\n");
      out.write("    \n");
      out.write("         <div class=\"col-sm-4\">\n");
      out.write("        \n");
      out.write("             <center><img src=\"images/semi59.jpg\" alt=\"Smiley face\"></center>\n");
      out.write("        \n");
      out.write("         </div>    \n");
      out.write("        \n");
      out.write("    <div class=\"col-sm-8\">    \n");
      out.write("        <h1><b><u>Query</u></b></h1> \n");
      out.write("           <form action=\"viewQuery.jsp\" method=\"get\">\n");
      out.write("    <div class=\"form-group\">\n");
      out.write("       <label for=\"sel1\">Type</label>\n");
      out.write("       <select class=\"form-control\" name=\"type\">\n");
      out.write("  \n");
      out.write("      <option selected>Type</option>\n");
      out.write("      <option value=\"admin\">Admin</option>\n");
      out.write("      <option value=\"faculty\">Faculty</option>\n");
      out.write("  </select>\n");
      out.write("    </div>\n");
      out.write("     \n");
      out.write("    <div class=\"form-group\">\n");
      out.write("      <label >To ID:</label>\n");
      out.write("      <input type=\"text\" class=\"form-control\" placeholder=\"Type id or roll no.\" name=\"tid\">\n");
      out.write("    </div>\n");
      out.write("          <div class=\"form-group\">     \n");
      out.write("      <label >From ID:</label>\n");
      out.write("      <input type=\"text\" class=\"form-control\" placeholder=\"enter your id or roll no.\" name=\"fid\">\n");
      out.write("    </div>\n");
      out.write("    <div class=\"form-group\">\n");
      out.write("        <label>Query</label><br>\n");
      out.write("        <textarea class=\"form-control rounded-0\" rows=\"4\" name=\"query\"></textarea>\n");
      out.write("    </div>\n");
      out.write("               <button type=\"submit\" class=\"btn btn-success\">Submit</button>\n");
      out.write("  </form>\n");
      out.write("     <br>          \n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("      </div></div>\n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("         \n");
      out.write("        <div class=\"card\">\n");
      out.write("<h4 class=\"card-header p-4 bg-success text-white text-center\">\n");
      out.write("    <strong>Answers</strong>\n");
      out.write("    \n");
      out.write("  </h4>\n");
      out.write("           <br><br>\n");
      out.write("        \n");
      out.write("   <div class=\"container\">\n");
      out.write("             ");

            
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select * from query";
  ResultSet rs=st.executeQuery(sql);

  
      out.write("\n");
      out.write("     \n");
      out.write("  ");

  
  while(rs.next())
  {
    int i=rs.getInt("quid");      
  
      out.write("\n");
      out.write("       <div class=\"col-lg-12\">\n");
      out.write("           <hr>\n");
      out.write("        <div class=\"row\">\n");
      out.write("         <div class=\"col-lg-2\">\n");
      out.write("             <center><img src=\"images/semi60.jpg\" alt=\"img\" height=\"80\" width=\"80\"></center>\n");
      out.write("             </div>\n");
      out.write("         <div class=\"col-lg-8\">\n");
      out.write("          <div><b>");
      out.print(rs.getString("query") );
      out.write("</b><br><br>\n");
      out.write("                  <button type=\"button\" class=\"btn btn-danger btn-md\">Answer</button>&nbsp;&nbsp;<button type=\"button\" class=\"btn\"><i class=\"fa fa-reply\" aria-hidden=\"true\"></i></button>&nbsp;&nbsp;   \n");
      out.write("                  <b> Asked On:</b>&nbsp;");
      out.print(rs.getString("doq") );
      out.write("</div><br>\n");
      out.write("         </div>\n");
      out.write("         <div class=\"col-lg-2\"><center>\n");
      out.write("        <button class=\"btn\"><i class=\"fa fa-eye\" aria-hidden=\"true\"></i></button>\n");
      out.write("        <button class=\"btn\"><i class=\"fa fa-heart\" aria-hidden=\"true\"></i></button>\n");
      out.write("        <button class=\"btn\"><i class=\"fa fa-facebook-official\" aria-hidden=\"true\"></i></button>\n");
      out.write("             </center> \n");
      out.write("         </div>\n");
      out.write("                  \n");
      out.write("            ");

  }

   } catch(Exception e){}
  
  
      out.write(" \n");
      out.write("  \n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("         </div>\n");
      out.write("  \n");
      out.write("   </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
