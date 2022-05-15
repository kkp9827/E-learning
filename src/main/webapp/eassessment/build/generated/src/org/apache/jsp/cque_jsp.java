package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cque_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("         <!-- Bootstrap core CSS-->\n");
      out.write(" <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("  <script src=\"jquery.min.js\"></script>\n");
      out.write("  <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <div class=\"container\" style=\"width:500px;\">\n");
      out.write("  <div class=\"jumbotron\" style=\"height:1200px\">\n");
      out.write(" \n");
      out.write("      <h1><u>Create Question</u></h1>\n");
      out.write("      <br>   <br>\n");
      out.write("      \n");
      out.write("      <form   method=\"get\" action=\"data1.jsp\">\n");
      out.write("  \n");
      out.write("  <div class=\"form-group\">\n");
      out.write("            <div class=\"form-row\">\n");
      out.write("              <div class=\"col-md-6\">\n");
      out.write("                  <div class=\"form-horizontal\" >\n");
      out.write("                 <label for=\"sel1\"> Question Type :</label>\n");
      out.write("  <select class=\"form-control\" name=\"lang\" >\n");
      out.write("    <option>c language</option>\n");
      out.write("    <option>Core java</option>\n");
      out.write("    <option>html</option>\n");
      out.write("    <option>css</option>\n");
      out.write("  </select> </div>\n");
      out.write("              </div>\n");
      out.write("              \n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("   \n");
      out.write("     \n");
      out.write("       <br>   <br>\n");
      out.write("       \n");
      out.write("          <div class=\"form-horizontal\" >\n");
      out.write("  <label for=\"comment\">Write Question:</label>\n");
      out.write("  <textarea class=\"form-control\" rows=\"5\"  name=\"write\" placeholder=\"write..\" ></textarea>\n");
      out.write(" </div>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("       <br><br>\n");
      out.write("       <div class=\"form-horizontal\" >\n");
      out.write("  <div   class=\"form-group\">\n");
      out.write("    <label for=\"obj1\"> Option 1:</label>\n");
      out.write("    <input type=\"text\" class=\"form-control\" name=\"obj1\" >\n");
      out.write("  </div>\n");
      out.write("       </div>\n");
      out.write("    <div class=\"form-horizontal\" >      \n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label for=\"obj2\"> Option 2:</label>\n");
      out.write("    <input type=\"text\" class=\"form-control\"  name=\"obj2\" >\n");
      out.write("  </div>\n");
      out.write("    </div>    \n");
      out.write("           \n");
      out.write("   \n");
      out.write("             \n");
      out.write("           <div class=\"form-horizontal\" >  \n");
      out.write("  <div  class=\"form-group\">\n");
      out.write("    <label for=\"obj3\"> Option 3:</label>\n");
      out.write("    <input type=\"text\" class=\"form-control\" name=\"obj3\" >\n");
      out.write("  </div>          \n");
      out.write("           </div>   \n");
      out.write("               <div class=\"form-horizontal\" >\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label for=\"obj4\"> Option 4:</label>\n");
      out.write("    <input type=\"text\" class=\"form-control\" name=\"obj4\" >\n");
      out.write("  </div></div><br> <br>\n");
      out.write("                 <div class=\"form-horizontal\" >\n");
      out.write("              <div  class=\"form-group\">\n");
      out.write("    <label for=\"ans\"> Answer:</label>\n");
      out.write("    <select class=\"form-control\" name=\"ans\" >\n");
      out.write("    <option>Option1</option>\n");
      out.write("    <option>Option2</option>\n");
      out.write("    <option>Option3</option>\n");
      out.write("    <option>Option4</option>\n");
      out.write("  </select>\n");
      out.write(" \n");
      out.write("              </div>\n");
      out.write("                 </div><br> <br>\n");
      out.write("                \n");
      out.write("               \n");
      out.write("                    \n");
      out.write(" <input type=\"submit\" class=\"btn btn-primary\" value=\"Submit\">\n");
      out.write("               \n");
      out.write("  \n");
      out.write("      </form>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
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
