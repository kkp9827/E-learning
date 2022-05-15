package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class custmer_java_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("         <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write(" \n");
      out.write(" \n");
      out.write("         <!-- Bootstrap core CSS-->\n");
      out.write(" <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("  <script src=\"jquery.min.js\"></script>\n");
      out.write("  <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body >\n");
      out.write("        \n");
      out.write("         ");

  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select * from students where rollno='101'";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
  {
  
      out.write("\n");
      out.write("        \n");
      out.write("        <div class=\"well\" style=\"background-color:black; color:white\"><h1><center>");
      out.print(rs.getString("name") );
      out.write("</center></h1></div>\n");
      out.write("      <div class=\"row\">\n");
      out.write("           \n");
      out.write("\n");
      out.write("          <div class=\"col-sm-6\">\n");
      out.write("           <div class=\"jumbotron\" style=\"height:600px\" >\n");
      out.write("             \n");
      out.write("         \n");
      out.write("      <ul class=\"list-group\">\n");
      out.write("          \n");
      out.write("                  <li class=\"list-group-item\">Name:   ");
      out.print(rs.getString("name") );
      out.write("</li><br><br>\n");
      out.write("                 <li class=\"list-group-item\">Email:   ");
      out.print(rs.getString("email") );
      out.write("</li><br><br>\n");
      out.write("                 <li class=\"list-group-item\">Profession:   ");
      out.print(rs.getString("qualification") );
      out.write("</li><br><br>\n");
      out.write("  <li class=\"list-group-item\">Contact No:   ");
      out.print(rs.getString("contact") );
      out.write("</li><br><br>\n");
      out.write("   <li class=\"list-group-item\">Address:   ");
      out.print(rs.getString("fname") );
      out.write("</li><br><br>\n");
      out.write("  <li class=\"list-group-item\">Identity Card:    ");
      out.print(rs.getString("status") );
      out.write("</li><br><br>\n");
      out.write("  \n");
      out.write(" \n");
      out.write("</ul>  \n");
      out.write("  \n");
      out.write("              \n");
      out.write("              \n");
      out.write("              \n");
      out.write("              \n");
      out.write("              \n");
      out.write("           </div>\n");
      out.write("          </div>\n");
      out.write("          \n");
      out.write("          <div class=\"col-sm-6\">\n");
      out.write("              \n");
      out.write("            <ul class=\"nav nav-pills nav-stacked\">\n");
      out.write("  <li class=\"active\"><a href=\"#\">Home</a></li>\n");
      out.write("  <li><a href=\"#\">Available Rides </a></li>\n");
      out.write("  <li><a href=\"#\">Updates Profile</a></li>\n");
      out.write("  <li><a href=\"#\">Change Password</a></li>\n");
      out.write("   <li><a href=\"#\">Enquiry</a></li>\n");
      out.write("    <li><a href=\"#\">Help</a></li>\n");
      out.write("   \n");
      out.write("</ul>  \n");
      out.write("              \n");
      out.write("          </div> \n");
      out.write("         \n");
      out.write("  \n");
      out.write("      </div>\n");
      out.write("   ");

  }
 }
  catch(Exception e){}
  
  
      out.write(" \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
