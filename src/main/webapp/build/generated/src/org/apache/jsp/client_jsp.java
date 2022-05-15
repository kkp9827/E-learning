package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class client_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("           <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write(" <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write(" \n");
      out.write(" \n");
      out.write("         <!-- Bootstrap core CSS-->\n");
      out.write(" <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("  <script src=\"jquery.min.js\"></script>\n");
      out.write("  <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      <div class=\"container\" style=\"width:600px;\" >\n");
      out.write("          <div class=\"jumbotron\" style=\"width:500 \">\n");
      out.write("              <h1><center> Client Details: </center></h1>\n");
      out.write("              <form   method=\"get\" action=\"\">\n");
      out.write("                          <div class=\"form-group\">\n");
      out.write("  <label for=\"usr\">Email id:</label>\n");
      out.write("  <input type=\"text\" class=\"form-control\"  name=\"email\"\n");
      out.write("         \n");
      out.write("        id=\"usr\">\n");
      out.write("</div>        \n");
      out.write("          <div class=\"form-group\">\n");
      out.write("  <label for=\"usr\">Name:</label>\n");
      out.write("  <input type=\"text\" class=\"form-control\"  name=\"usr\" id=\"usr\">\n");
      out.write("          </div>\n");
      out.write("                  <div class=\"form-group\"> \n");
      out.write("  <label for=\"usr\">Current Place:</label>\n");
      out.write("  <input type=\"text\" class=\"form-control\"  name=\"current\" id=\"usr\">\n");
      out.write("       </div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("  <label for=\"usr\">Destination Place:</label>\n");
      out.write("  <input type=\"text\" class=\"form-control\"  name=\"place\"\n");
      out.write("         \n");
      out.write("        id=\"usr\">\n");
      out.write("</div> \n");
      out.write("                                 <div class=\"form-group\">\n");
      out.write("  <label for=\"usr\">Activate Date:</label>\n");
      out.write("  <input type=\"date\" class=\"form-control\" name=\"adate\">\n");
      out.write("</div>\n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("  <label for=\"usr\">Activate Time:</label>\n");
      out.write(" <input type=\"time\" class=\"form-control\" name=\"atime\">\n");
      out.write("</div>            \n");
      out.write("        \n");
      out.write("                <div class=\"form-group\">\n");
      out.write("  <label for=\"usr\">Phone no:</label>\n");
      out.write("  <input type=\"text\" class=\"form-control\"  name=\"no\"\n");
      out.write("         \n");
      out.write("        id=\"usr\">\n");
      out.write("</div>                \n");
      out.write("                   <div class=\"form-group\">\n");
      out.write("  <label for=\"usr\">Address:</label>\n");
      out.write(" \n");
      out.write("  <textarea class=\"form-control\" rows=\"5\"  name=\"write\" placeholder=\"write..\" ></textarea>\n");
      out.write("</div>                \n");
      out.write("     \n");
      out.write("                    \n");
      out.write(" <input type=\"submit\" class=\"btn btn-primary\" value=\"Submit\">                                      \n");
      out.write("                  \n");
      out.write("              </form>\n");
      out.write("              \n");
      out.write("              \n");
      out.write("              \n");
      out.write("          </div>\n");
      out.write("          </div> \n");
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
