package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class masterpage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("         <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Raleway\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("<script src=\"jquery.min.js\"></script>\n");
      out.write("  <script src=\"bootstrap.min.js\"></script>\n");
      out.write("   \n");
      out.write("<style>\n");
      out.write("body,h1,h2,h3,h4,h5,h6 {font-family: \"Raleway\", sans-serif}\n");
      out.write("body, html {\n");
      out.write("    height: 100%;\n");
      out.write("    line-height: 1.8;\n");
      out.write("}\n");
      out.write("/* Full height image header */\n");
      out.write(".bgimg-1 {\n");
      out.write("    background-position: center;\n");
      out.write("    background-size: cover;\n");
      out.write("    background-image: url(\"pic2.jpeg\");\n");
      out.write("    min-height: 100%;\n");
      out.write("}\n");
      out.write(".w3-bar .w3-button {\n");
      out.write("  \n");
      out.write("  padding:16px;\n");
      out.write("}\n");
      out.write(".modal-header, h4, .close {\n");
      out.write("      background-color: #5cb85c;\n");
      out.write("      color:white !important;\n");
      out.write("      text-align: center;\n");
      out.write("      font-size: 30px;\n");
      out.write("  }\n");
      out.write("  .modal-footer {\n");
      out.write("      background-color: #f9f9f9;\n");
      out.write("  }\n");
      out.write("  \n");
      out.write("  \n");
      out.write("</style>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<!-- Navbar (sit on top) -->\n");
      out.write("<div class=\"w3-top\">\n");
      out.write("  <div class=\"w3-bar w3-white w3-animate-opacity\" id=\"myNavbar\">\n");
      out.write("    <a href=\"masterpage.jsp?page=1\" class=\"w3-bar-item w3-button w3-wide\">Home</a>\n");
      out.write("    <!-- Right-sided navbar links -->\n");
      out.write("    \n");
      out.write(" <script>\n");
      out.write("function myFunction() {\n");
      out.write("    var x = document.getElementById(\"demo\");\n");
      out.write("    if (x.className.indexOf(\"w3-show\") == -1) {\n");
      out.write("        x.className += \" w3-show\";\n");
      out.write("    } else { \n");
      out.write("        x.className = x.className.replace(\" w3-show\", \"\");\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("function myFunction1() {\n");
      out.write("    var y = document.getElementById(\"demo1\");\n");
      out.write("    if (y.className.indexOf(\"w3-show\") == -1) {\n");
      out.write("        y.className += \" w3-show\";\n");
      out.write("    } else { \n");
      out.write("        y.className = y.className.replace(\" w3-show\", \"\");\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("function myFunction2() {\n");
      out.write("    var y = document.getElementById(\"demo2\");\n");
      out.write("    if (y.className.indexOf(\"w3-show\") == -1) {\n");
      out.write("        y.className += \" w3-show\";\n");
      out.write("    } else { \n");
      out.write("        y.className = y.className.replace(\" w3-show\", \"\");\n");
      out.write("    }\n");
      out.write("}\n");
      out.write(" </script>   \n");
      out.write(" <!-- Right-sided navbar links -->\n");
      out.write("    <div class=\"w3-right w3-hide-small\">\n");
      out.write("      \n");
      out.write("             <div class=\"w3-dropdown-click\">\n");
      out.write("      <button class=\" w3-button\" onclick=\"myFunction1()\">\n");
      out.write("        COURSE <i class=\"fa fa-caret-down\"></i>\n");
      out.write("      </button>\n");
      out.write("      <div id=\"demo1\" class=\"w3-dropdown-content w3-bar-block w3-card\">\n");
      out.write("        <a href=\"masterpage.jsp?page=2\" class=\"w3-bar-item w3-button\">HTML</a>\n");
      out.write("        <a href=\"masterpage.jsp?page=3\" class=\"w3-bar-item w3-button\">C Language</a>\n");
      out.write("       <a href=\"masterpage.jsp?page=4\" class=\"w3-bar-item w3-button\">C++ Programming</a>\n");
      out.write("       <a href=\"masterpage.jsp?page=5\" class=\"w3-bar-item w3-button\">Core Java</a>\n");
      out.write("       <a href=\"masterpage.jsp?page=6\" class=\"w3-bar-item w3-button\">Advance Java</a>\n");
      out.write("       <a href=\"masterpage.jsp?page=7\" class=\"w3-bar-item w3-button\">CSS</a>\n");
      out.write("       \n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("        <div class=\"w3-dropdown-click\">\n");
      out.write("      <button class=\"w3-button\" onclick=\"myFunction()\">\n");
      out.write("        REGISTRATION <i class=\"fa fa-caret-down\"></i>\n");
      out.write("      </button>\n");
      out.write("      <div id=\"demo\" class=\"w3-dropdown-content w3-bar-block w3-card\">\n");
      out.write("        <a href=\"masterpage.jsp?page=8\" class=\"w3-bar-item w3-button\">Faculty Registration</a>\n");
      out.write("        <a href=\"masterpage.jsp?page=9\" class=\"w3-bar-item w3-button\">Student Registration</a>\n");
      out.write("       \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  <div class=\"w3-dropdown-click\">\n");
      out.write("      <button class=\"w3-button\" onclick=\"myFunction2()\">\n");
      out.write("        LOGIN <i class=\"fa fa-caret-down\"></i>\n");
      out.write("      </button>\n");
      out.write("      <div id=\"demo2\" class=\"w3-dropdown-content w3-bar-block w3-card\">\n");
      out.write("        <a href=\"loginstu.jsp\" class=\"w3-bar-item w3-button\" data-toggle=\"modal\" data-target=\"#myModal\">Faculty LOGIN</a>\n");
      out.write("        <a href=\"profile1.jsp\" class=\"w3-bar-item w3-button\">Student LOGIN</a>\n");
      out.write("       <a href=\"ad1.jsp\" class=\"w3-bar-item w3-button\">Admin LOGIN</a>\n");
      out.write("       \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("   \n");
      out.write("<!-- Hide right-floated links on small screens and replace them with a menu icon -->\n");
      out.write("\n");
      out.write("    <a href=\"javascript:void(0)\" class=\"w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium\" onclick=\"w3_open()\">\n");
      out.write("      <i class=\"fa fa-bars\"></i>\n");
      out.write("    </a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Sidebar on small screens when clicking the menu icon -->\n");
      out.write("<nav class=\"w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large\" style=\"display:none\" id=\"mySidebar\">\n");
      out.write("  <a href=\"javascript:void(0)\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button w3-large w3-padding-16\">Close ×</a>\n");
      out.write("  <a href=\"#course\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button\">COURSE</a>\n");
      out.write("  <a href=\"#registration\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button\">REGISTRATION</a>\n");
      out.write("  <a href=\"#login\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button \">LOGIN</a>\n");
      out.write("</nav>\n");
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("           ");

           
           int p=1;
           if(request.getParameter("page")!=null)
           p=Integer.parseInt(request.getParameter("page"));
           
           switch(p)
           {
               case 1:
           
      out.write("     \n");
      out.write("           ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "master.jsp", out, false);
      out.write("     \n");
      out.write("                ");

                break;
                case 2:
                
      out.write("\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "HTML.jsp", out, false);
      out.write("     \n");
      out.write("                ");

                break;
                case 3:
                
      out.write("\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "c.jsp", out, false);
      out.write("     \n");
      out.write("                ");

                break;
                case 4:
                
      out.write("\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "c1.jsp", out, false);
      out.write("     \n");
      out.write("                ");

                break;
                case 5:
                
      out.write("\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "corejava.jsp", out, false);
      out.write("     \n");
      out.write("                ");

                break;
                case 6:
                
      out.write("\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "advjava.jsp", out, false);
      out.write("     \n");
      out.write("                ");

                break;
                case 7:
                
      out.write("\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "css.jsp", out, false);
      out.write("     \n");
      out.write("                ");

                break;
                case 8:
                
      out.write("\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "form2.jsp", out, false);
      out.write("     \n");
      out.write("                ");

                break;
                case 9:
                
      out.write("\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "form.jsp", out, false);
      out.write("     \n");
      out.write("                ");

                break;
                case 10:
                
      out.write("\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "login.jsp", out, false);
      out.write("     \n");
      out.write("                ");

                break;
                }
                
      out.write("\n");
      out.write("             \n");
      out.write("                <script>\n");
      out.write("                    \n");
      out.write("// Toggle between showing and hiding the sidebar when clicking the menu icon\n");
      out.write("var mySidebar = document.getElementById(\"mySidebar\");\n");
      out.write("\n");
      out.write("function w3_open() {\n");
      out.write("    if (mySidebar.style.display === 'block') {\n");
      out.write("        mySidebar.style.display = 'none';\n");
      out.write("    } else {\n");
      out.write("        mySidebar.style.display = 'block';\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("\n");
      out.write("// Close the sidebar with the close button\n");
      out.write("function w3_close() {\n");
      out.write("    mySidebar.style.display = \"none\";\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
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
