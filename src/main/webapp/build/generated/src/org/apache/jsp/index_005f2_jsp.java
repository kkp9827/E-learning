package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_005f2_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  \n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("  <meta name=\"description\" content=\"\">\n");
      out.write("  <meta name=\"author\" content=\"\">\n");
      out.write("  <title>SB Admin - Start Bootstrap Template</title>\n");
      out.write("  <!-- Bootstrap core CSS-->\n");
      out.write("  <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  <!-- Custom fonts for this template-->\n");
      out.write("  <link href=\"vendor/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("  <!-- Page level plugin CSS-->\n");
      out.write("  <link href=\"vendor/datatables/dataTables.bootstrap4.css\" rel=\"stylesheet\">\n");
      out.write("  <!-- Custom styles for this template-->\n");
      out.write("  <link href=\"css/sb-admin.css\" rel=\"stylesheet\">\n");
      out.write("  \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"fixed-nav sticky-footer bg-dark\" id=\"page-top\">\n");
      out.write("  <!-- Navigation-->\n");
      out.write("  <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark fixed-top\" id=\"mainNav\">\n");
      out.write("    <a class=\"navbar-brand\" href=\"index.html\">Student</a>\n");
      out.write("    <button class=\"navbar-toggler navbar-toggler-right\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("      <ul class=\"navbar-nav navbar-sidenav\" id=\"exampleAccordion\">\n");
      out.write("           <li class=\"nav-item\" data-toggle=\"tooltip\" data-placement=\"right\" title=\"Charts\">\n");
      out.write("          <a class=\"nav-link\" href=\"masterpage.jsp\">\n");
      out.write("            <i class=\"fa fa-fw fa-plus\"></i>\n");
      out.write("            <span class=\"nav-link-text\">Home</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("       \n");
      out.write("        <li class=\"nav-item\" data-toggle=\"tooltip\" data-placement=\"right\" title=\"Charts\">\n");
      out.write("          <a class=\"nav-link\" href=\"index_2.jsp?page=1\">\n");
      out.write("            <i class=\"fa fa-fw fa-plus\"></i>\n");
      out.write("            <span class=\"nav-link-text\">Add Courses</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\" data-toggle=\"tooltip\" data-placement=\"right\" title=\"Tables\">\n");
      out.write("          <a class=\"nav-link\" href=\"index_2.jsp?page=2\">\n");
      out.write("            <i class=\"fa fa-fw fa-question\"></i>\n");
      out.write("            <span class=\"nav-link-text\">Ask Query</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\" data-toggle=\"tooltip\" data-placement=\"right\" title=\"Tables\">\n");
      out.write("          <a class=\"nav-link\" href=\"index_2.jsp?page=3\">\n");
      out.write("            <i class=\"fa fa-fw fa-table\"></i>\n");
      out.write("            <span class=\"nav-link-text\">View Courses</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\" data-toggle=\"tooltip\" data-placement=\"right\" title=\"Tables\">\n");
      out.write("          <a class=\"nav-link\" href=\"index_2.jsp?page=4\">\n");
      out.write("            <i class=\"fa fa-fw fa-table\"></i>\n");
      out.write("            <span class=\"nav-link-text\">View Assignment</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\" data-toggle=\"tooltip\" data-placement=\"right\" title=\"Tables\">\n");
      out.write("          <a class=\"nav-link\" href=\"index_2.jsp?page=5\">\n");
      out.write("            <i class=\"fa fa-fw fa-table\"></i>\n");
      out.write("            <span class=\"nav-link-text\">Take Exam</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\" data-toggle=\"tooltip\" data-placement=\"right\" title=\"Tables\">\n");
      out.write("          <a class=\"nav-link\" href=\"index_2.jsp?page=6\">\n");
      out.write("            <i class=\"fa fa-fw fa-table\"></i>\n");
      out.write("            <span class=\"nav-link-text\">View Results</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\" data-toggle=\"tooltip\" data-placement=\"right\" title=\"Tables\">\n");
      out.write("          <a class=\"nav-link\" href=\"index_2.jsp?page=7\">\n");
      out.write("            <i class=\"fa fa-fw fa-table\"></i>\n");
      out.write("            <span class=\"nav-link-text\">Analyze Performance</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("          </ul>\n");
      out.write("       \n");
      out.write("    \n");
      out.write("      <ul class=\"navbar-nav sidenav-toggler\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link text-center\" id=\"sidenavToggler\">\n");
      out.write("            <i class=\"fa fa-fw fa-angle-left\"></i>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("      <ul class=\"navbar-nav ml-auto\">\n");
      out.write("        <li class=\"nav-item dropdown\">\n");
      out.write("          <a class=\"nav-link dropdown-toggle mr-lg-2\" id=\"messagesDropdown\" href=\"#\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("            <i class=\"fa fa-fw fa-envelope\"></i>\n");
      out.write("            <span class=\"d-lg-none\">Messages\n");
      out.write("              <span class=\"badge badge-pill badge-primary\">12 New</span>\n");
      out.write("            </span>\n");
      out.write("            <span class=\"indicator text-primary d-none d-lg-block\">\n");
      out.write("              <i class=\"fa fa-fw fa-circle\"></i>\n");
      out.write("            </span>\n");
      out.write("          </a>\n");
      out.write("          <div class=\"dropdown-menu\" aria-labelledby=\"messagesDropdown\">\n");
      out.write("            <h6 class=\"dropdown-header\">New Messages:</h6>\n");
      out.write("            <div class=\"dropdown-divider\"></div>\n");
      out.write("            <a class=\"dropdown-item\" href=\"#\">\n");
      out.write("              <strong>David Miller</strong>\n");
      out.write("              <span class=\"small float-right text-muted\">11:21 AM</span>\n");
      out.write("              <div class=\"dropdown-message small\">Hey there! This new version of SB Admin is pretty awesome! These messages clip off when they reach the end of the box so they don't overflow over to the sides!</div>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"dropdown-divider\"></div>\n");
      out.write("            <a class=\"dropdown-item\" href=\"#\">\n");
      out.write("              <strong>Jane Smith</strong>\n");
      out.write("              <span class=\"small float-right text-muted\">11:21 AM</span>\n");
      out.write("              <div class=\"dropdown-message small\">I was wondering if you could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"dropdown-divider\"></div>\n");
      out.write("            <a class=\"dropdown-item\" href=\"#\">\n");
      out.write("              <strong>John Doe</strong>\n");
      out.write("              <span class=\"small float-right text-muted\">11:21 AM</span>\n");
      out.write("              <div class=\"dropdown-message small\">I've sent the final files over to you for review. When you're able to sign off of them let me know and we can discuss distribution.</div>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"dropdown-divider\"></div>\n");
      out.write("            <a class=\"dropdown-item small\" href=\"#\">View all messages</a>\n");
      out.write("          </div>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item dropdown\">\n");
      out.write("          <a class=\"nav-link dropdown-toggle mr-lg-2\" id=\"alertsDropdown\" href=\"#\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("            <i class=\"fa fa-fw fa-bell\"></i>\n");
      out.write("            <span class=\"d-lg-none\">Alerts\n");
      out.write("              <span class=\"badge badge-pill badge-warning\">6 New</span>\n");
      out.write("            </span>\n");
      out.write("            <span class=\"indicator text-warning d-none d-lg-block\">\n");
      out.write("              <i class=\"fa fa-fw fa-circle\"></i>\n");
      out.write("            </span>\n");
      out.write("          </a>\n");
      out.write("          <div class=\"dropdown-menu\" aria-labelledby=\"alertsDropdown\">\n");
      out.write("            <h6 class=\"dropdown-header\">New Alerts:</h6>\n");
      out.write("            <div class=\"dropdown-divider\"></div>\n");
      out.write("            <a class=\"dropdown-item\" href=\"#\">\n");
      out.write("              <span class=\"text-success\">\n");
      out.write("                <strong>\n");
      out.write("                  <i class=\"fa fa-long-arrow-up fa-fw\"></i>Status Update</strong>\n");
      out.write("              </span>\n");
      out.write("              <span class=\"small float-right text-muted\">11:21 AM</span>\n");
      out.write("              <div class=\"dropdown-message small\">This is an automated server response message. All systems are online.</div>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"dropdown-divider\"></div>\n");
      out.write("            <a class=\"dropdown-item\" href=\"#\">\n");
      out.write("              <span class=\"text-danger\">\n");
      out.write("                <strong>\n");
      out.write("                  <i class=\"fa fa-long-arrow-down fa-fw\"></i>Status Update</strong>\n");
      out.write("              </span>\n");
      out.write("              <span class=\"small float-right text-muted\">11:21 AM</span>\n");
      out.write("              <div class=\"dropdown-message small\">This is an automated server response message. All systems are online.</div>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"dropdown-divider\"></div>\n");
      out.write("            <a class=\"dropdown-item\" href=\"#\">\n");
      out.write("              <span class=\"text-success\">\n");
      out.write("                <strong>\n");
      out.write("                  <i class=\"fa fa-long-arrow-up fa-fw\"></i>Status Update</strong>\n");
      out.write("              </span>\n");
      out.write("              <span class=\"small float-right text-muted\">11:21 AM</span>\n");
      out.write("              <div class=\"dropdown-message small\">This is an automated server response message. All systems are online.</div>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"dropdown-divider\"></div>\n");
      out.write("            <a class=\"dropdown-item small\" href=\"#\">View all alerts</a>\n");
      out.write("          </div>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <form class=\"form-inline my-2 my-lg-0 mr-lg-2\">\n");
      out.write("            <div class=\"input-group\">\n");
      out.write("              <input class=\"form-control\" type=\"text\" placeholder=\"Search for...\">\n");
      out.write("              <span class=\"input-group-append\">\n");
      out.write("                <button class=\"btn btn-primary\" type=\"button\">\n");
      out.write("                  <i class=\"fa fa-search\"></i>\n");
      out.write("                </button>\n");
      out.write("              </span>\n");
      out.write("            </div>\n");
      out.write("          </form>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" data-toggle=\"modal\" data-target=\"#exampleModal\">\n");
      out.write("            <i class=\"fa fa-fw fa-sign-out\"></i>Logout</a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </nav>\n");
      out.write("  <div class=\"content-wrapper\">\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("      \n");
      out.write("     <!----------------Masterpage----------->\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    ");

                    
                    int p=1;
                    if(request.getParameter("page")!=null)
                    p=Integer.parseInt(request.getParameter("page"));
                    
                    switch(p)
                    {
                        case 1:
                            
      out.write("\n");
      out.write("                            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "addcourses.jsp", out, false);
      out.write("\n");
      out.write("                       ");
  
                       break;
                          
                             case 2:
                            
      out.write("\n");
      out.write("                       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "askquery.jsp", out, false);
      out.write("\n");
      out.write("                       ");
  
                       break;
                          case 3:
                       
      out.write("     \n");
      out.write("                       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "viewcourses.jsp", out, false);
      out.write("   \n");
      out.write("                       ");
  
                       break;
                           case 4:
                       
      out.write("     \n");
      out.write("                       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "viewassignment.jsp", out, false);
      out.write("   \n");
      out.write("                       ");
  
                       break;
                               case 5:
                       
      out.write("     \n");
      out.write("                       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "quiz1.jsp", out, false);
      out.write("   \n");
      out.write("                       ");
  
                       break;
                                   case 6:
                       
      out.write("     \n");
      out.write("                       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "viewresults.jsp", out, false);
      out.write("   \n");
      out.write("                       ");
  
                       break;
                                        case 7:
                       
      out.write("     \n");
      out.write("                       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "analyzeperformance.jsp", out, false);
      out.write("   \n");
      out.write("                       ");
  
                       break;
                    }
                    
      out.write("\n");
      out.write("                    \n");
      out.write("   \n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- /.container-fluid-->\n");
      out.write("    <!-- /.content-wrapper-->\n");
      out.write("    \n");
      out.write("    <!-- Scroll to Top Button-->\n");
      out.write("    <a class=\"scroll-to-top rounded\" href=\"#page-top\">\n");
      out.write("      <i class=\"fa fa-angle-up\"></i>\n");
      out.write("    </a>\n");
      out.write("    <!-- Logout Modal-->\n");
      out.write("    <div class=\"modal fade\" id=\"exampleModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("      <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("          <div class=\"modal-header\">\n");
      out.write("            <h5 class=\"modal-title\" id=\"exampleModalLabel\">Ready to Leave?</h5>\n");
      out.write("            <button class=\"close\" type=\"button\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("              <span aria-hidden=\"true\">Ã—</span>\n");
      out.write("            </button>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"modal-body\">Select \"Logout\" below if you are ready to end your current session.</div>\n");
      out.write("          <div class=\"modal-footer\">\n");
      out.write("            <button class=\"btn btn-secondary\" type=\"button\" data-dismiss=\"modal\">Cancel</button>\n");
      out.write("            <a class=\"btn btn-primary\" href=\"login.html\">Logout</a>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- Bootstrap core JavaScript-->\n");
      out.write("    <script src=\"vendor/jquery/jquery.min.js\"></script>\n");
      out.write("    <script src=\"vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    <!-- Core plugin JavaScript-->\n");
      out.write("    <script src=\"vendor/jquery-easing/jquery.easing.min.js\"></script>\n");
      out.write("    <!-- Page level plugin JavaScript-->\n");
      out.write("    <script src=\"vendor/chart.js/Chart.min.js\"></script>\n");
      out.write("    <script src=\"vendor/datatables/jquery.dataTables.js\"></script>\n");
      out.write("    <script src=\"vendor/datatables/dataTables.bootstrap4.js\"></script>\n");
      out.write("    <!-- Custom scripts for all pages-->\n");
      out.write("    <script src=\"js/sb-admin.min.js\"></script>\n");
      out.write("    <!-- Custom scripts for this page-->\n");
      out.write("    <script src=\"js/sb-admin-datatables.min.js\"></script>\n");
      out.write("    <script src=\"js/sb-admin-charts.min.js\"></script>\n");
      out.write("  </div>\n");
      out.write("</body>\n");
      out.write("\n");
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
