package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class disp1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  <!-- Custom fonts for this template-->\n");
      out.write("  <link href=\"vendor/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("  <!-- Page level plugin CSS-->\n");
      out.write("  <link href=\"vendor/datatables/dataTables.bootstrap4.css\" rel=\"stylesheet\">\n");
      out.write("  <!-- Custom styles for this template-->\n");
      out.write("  <link href=\"css/sb-admin.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          <form role=\"form\">      \n");
      out.write("        <div class=\"container\">\n");
      out.write(" \n");
      out.write("    <div class=\"table-responsive\">      \n");
      out.write("  <table class=\"table table-striped\">\n");
      out.write("   \n");
      out.write("  ");

  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select * from fill where qid='"+request.getParameter("name") +"'";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
  {
  
      out.write("\n");
      out.write("  \n");
      out.write("  \n");
      out.write("    <tr><th>Question</th><td class=\"form-control\">");
      out.print(rs.getString("que") );
      out.write("</td></tr>\n");
      out.write("  <tr><th>option 1</th><td class=\"form-control\">");
      out.print(rs.getString("obj1") );
      out.write("</td></tr>\n");
      out.write("  <tr><th>option 2</th><td class=\"form-control\">");
      out.print(rs.getString("obj2") );
      out.write("</td></tr>\n");
      out.write("  <tr><th>option 3</th><td class=\"form-control\">");
      out.print(rs.getString("obj3") );
      out.write("</td></tr>\n");
      out.write("    <tr><th>option 4</th><td class=\"form-control\">");
      out.print(rs.getString("obj4") );
      out.write("</td></tr>\n");
      out.write("   <tr><th>Answer</th><td class=\"form-control\">");
      out.print(rs.getString("ans") );
      out.write("</td></tr>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  ");


  }
 }
  catch(Exception e){}
  
  
      out.write("      \n");
      out.write("        </table>\n");
      out.write("    </div>\n");
      out.write("        </div>\n");
      out.write("        </form>\n");
      out.write("       \n");
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
