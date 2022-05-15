package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ankit_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        \n");
      out.write("               <title>JSP Page</title>\n");
      out.write("                     <title>JSP Page</title>\n");
      out.write("                            <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
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
      out.write("             <div class=\"container\" style=\"width:500px; height:100px; margin-top: 100px;\">\n");
      out.write("                 <div class=\"jumbotron\" style=\"height:500px;background-color: #cccccc\">\n");
      out.write(" \n");
      out.write("      <center><h2>Login</h2></center>\n");
      out.write("       <form   method=\"get\" action=\"data1.jsp\">\n");
      out.write("  \n");
      out.write("  <div class=\"form-group\">\n");
      out.write("         \n");
      out.write("     \n");
      out.write("       <br>   <br>\n");
      out.write("       \n");
      out.write("          <div class=\"form-horizontal\" >\n");
      out.write("  <label for=\"comment\">User Id:</label>\n");
      out.write("  <input  type=\"text\" class=\"form-control\" rows=\"5\"  name=\"write\" placeholder=\"Username\" >\n");
      out.write(" </div>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("       <br><br>\n");
      out.write("      \n");
      out.write("  <div   class=\"form-group\">\n");
      out.write("    <label for=\"obj1\"> Password:</label>\n");
      out.write("    <input type=\"text\" class=\"form-control\" name=\"obj1\" placeholder=\"Password\" >\n");
      out.write("  </div>\n");
      out.write("       </div>\n");
      out.write("                      \n");
      out.write(" <input type=\"submit\" class=\"btn btn-primary\" value=\"Submit\">\n");
      out.write("               \n");
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
