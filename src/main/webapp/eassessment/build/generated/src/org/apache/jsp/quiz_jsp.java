package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class quiz_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("              <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("              <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title> <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  <!-- Custom fonts for this template-->\n");
      out.write("  <link href=\"vendor/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("  <!-- Page level plugin CSS-->\n");
      out.write("  <link href=\"vendor/datatables/dataTables.bootstrap4.css\" rel=\"stylesheet\">\n");
      out.write("  <!-- Custom styles for this template-->\n");
      out.write("  <link href=\"css/sb-admin.css\" rel=\"stylesheet\">\n");
      out.write("   <script src=\"jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("            ");

  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select * from  course";
  ResultSet rs=st.executeQuery(sql);
  
      out.write("\n");
      out.write("   \n");
      out.write("   \n");
      out.write("                    <div class=\" col-md-12\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-8\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-4\">\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("      <label for=\"sel1\"></label>\n");
      out.write("      <select class=\"form-control\" id=\"sel1\">\n");
      out.write("  \n");
      out.write("  ");

  
  while(rs.next())
  {
  
      out.write("\n");
      out.write("    <option value=\"");
      out.print(rs.getString("courseid") );
      out.write("\">  \n");
      out.write("        ");
      out.print(rs.getString("course") );
      out.write("\n");
      out.write("    </option>\n");
      out.write("    \n");
      out.write("    ");

  }
 }
  catch(Exception e){}
  
  
      out.write("      \n");
      out.write("        </select> \n");
      out.write("  </div><br>\n");
      out.write("  <br>\n");
      out.write("        <div class=\"container\">\n");
      out.write("  <div class=\"jumbotron\">\n");
      out.write("   \n");
      out.write("        <div class=\"row\">\n");
      out.write("  <div class=\"col-sm-3\"><button type=\"button\" class=\"btn btn-info btn-sm\">1</button>\n");
      out.write("</div>\n");
      out.write("  <div class=\"col-sm-3\"><button type=\"button\" class=\"btn btn-primary btn-sm\">2</button>\n");
      out.write("</div>\n");
      out.write("  <div class=\"col-sm-3\"><button type=\"button\" class=\"btn btn-primary btn-sm\">3</button>\n");
      out.write("</div>\n");
      out.write("    <div class=\"col-sm-3\"><button type=\"button\" class=\"btn btn-primary btn-sm\">4</button>\n");
      out.write("</div>\n");
      out.write("        </div><br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("  <div class=\"col-sm-1\"><button type=\"button\" class=\"btn btn-primary btn-sm\">Small</button>\n");
      out.write("</div>\n");
      out.write("  <div class=\"col-sm-1\">.col-sm-4</div>\n");
      out.write("  <div class=\"col-sm-1\">.col-sm-4</div>\n");
      out.write("    <div class=\"col-sm-1\">.col-sm-4</div>\n");
      out.write("</div>   \n");
      out.write("  </div></div>  \n");
      out.write("        \n");
      out.write("        \n");
      out.write("                    </div>\n");
      out.write("                    </div></div>\n");
      out.write("   \n");
      out.write("  \n");
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
