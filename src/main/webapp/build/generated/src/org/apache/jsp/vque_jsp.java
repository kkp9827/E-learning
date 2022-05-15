package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class vque_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
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
      out.write("\n");
      out.write("    \n");
      out.write(" <div class=\"card mb-3\">\n");
      out.write("        <div class=\"card-header\">\n");
      out.write("          <i class=\"fa fa-table\"></i> Question Bank</div>\n");
      out.write("        <div class=\"card-body\">\n");
      out.write("            <div class=\"table-responsive\">\n");
      out.write("   \n");
      out.write("                 <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-12 col-md-6\">\n");
      out.write("                                </div>\n");
      out.write("                    </div>\n");
      out.write("                  \n");
      out.write("              \n");
      out.write("              \n");
      out.write("                 \n");
      out.write("                        <table class=\"table table-bordered dataTable\" id=\"dataTable\" width=\"100%\" cellspacing=\"0\" role=\"grid\" aria-describedby=\"dataTable_info\" style=\"width: 100%;\">\n");
      out.write("              <thead>\n");
      out.write("                <tr role=\"row\">\n");
      out.write("                    <th class=\"sorting_asc\" tabindex=\"0\" aria-controls=\"dataTable\" rowspan=\"1\" colspan=\"1\" aria-label=\"Id: activate to sort column descending\" aria-sort=\"ascending\">Id</th>\n");
      out.write("                    <th class=\"sorting\" tabindex=\"0\" aria-controls=\"dataTable\" rowspan=\"1\" colspan=\"1\" aria-label=\"Question: activate to sort column ascending\">Question</th>\n");
      out.write("                    <th class=\"sorting\" tabindex=\"0\" aria-controls=\"dataTable\" rowspan=\"1\" colspan=\"1\" aria-label=\"Option 1: activate to sort column ascending\">Option1</th>\n");
      out.write("                    <th class=\"sorting\" tabindex=\"0\" aria-controls=\"dataTable\" rowspan=\"1\" colspan=\"1\" aria-label=\"Option 2: activate to sort column ascending\">Option2</th>\n");
      out.write("                    <th class=\"sorting\" tabindex=\"0\" aria-controls=\"dataTable\" rowspan=\"1\" colspan=\"1\" aria-label=\"Option 3: activate to sort column ascending\">Option3</th>\n");
      out.write("                    <th class=\"sorting\" tabindex=\"0\" aria-controls=\"dataTable\" rowspan=\"1\" colspan=\"1\" aria-label=\"Option 4: activate to sort column ascending\">Option4</th>\n");
      out.write("                 <th class=\"sorting\" tabindex=\"0\" aria-controls=\"dataTable\" rowspan=\"1\" colspan=\"1\" aria-label=\"Answer: activate to sort column ascending\">Answer</th>\n");
      out.write("               <th class=\"sorting\" tabindex=\"0\" aria-controls=\"dataTable\" rowspan=\"1\" colspan=\"1\" aria-label=\"Type: activate to sort column ascending\">Type</th>\n");
      out.write("               <th class=\"sorting\" tabindex=\"0\" aria-controls=\"dataTable\" rowspan=\"1\" colspan=\"1\" aria-label=\"Delete: activate to sort column ascending\">Delete</th>\n");
      out.write("               <th class=\"sorting\" tabindex=\"0\" aria-controls=\"dataTable\" rowspan=\"1\" colspan=\"1\" aria-label=\"Update: activate to sort column ascending\">Update</th>\n");
      out.write("               <th class=\"sorting\" tabindex=\"0\" aria-controls=\"dataTable\" rowspan=\"1\" colspan=\"1\" aria-label=\"View: activate to sort column ascending\">View</th>\n");
      out.write("              </tr>\n");
      out.write("              </thead>\n");
      out.write("             \n");
      out.write("              <tbody>\n");
      out.write("                                      \n");
      out.write("            ");

  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","root");
  Statement st=con.createStatement();
  String sql="Select * from fill";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
  {
  
      out.write("\n");
      out.write("  \n");
      out.write("  \n");
      out.write("            <tr role=\"row\" class=\"odd\"><td>");
      out.print(rs.getString("qid") );
      out.write("</td><td>");
      out.print(rs.getString("que") );
      out.write("</td><td>");
      out.print(rs.getString("obj1") );
      out.write("</td><td>");
      out.print(rs.getString("obj2") );
      out.write("</td><td>");
      out.print(rs.getString("obj3") );
      out.write("</td><td>");
      out.print(rs.getString("obj4") );
      out.write("</td><td>");
      out.print(rs.getString("ans") );
      out.write("</td><td class=\"sorting_1\">");
      out.print(rs.getString("qtype") );
      out.write("</td><td><button type=\"button\" value=\"Del-");
      out.print(rs.getString("qid") );
      out.write("\" class=\"btn btn-danger\">Delete</button></td><td><button type=\"button\" value=\"Up-");
      out.print(rs.getString("qid") );
      out.write("\" class=\"btn btn-success\" data-toggle=\"modal\" data-target=\"#myModal\"  >Update</button></td><td><button type=\"button\" value=\"View-");
      out.print(rs.getString("qid") );
      out.write("\" class=\"btn btn-primary\"  data-toggle=\"modal\" data-target=\"#myModal1\"  >View</button></td></tr>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  ");

  }
 }
  catch(Exception e){}
  
  
      out.write("      \n");
      out.write("       </tbody>\n");
      out.write("            </table>\n");
      out.write("            </div>\n");
      out.write("                </div>\n");
      out.write("                    \n");
      out.write("       \n");
      out.write("    \n");
      out.write("        <div class=\"card-footer small text-muted\">Updated yesterday at 11:59 PM</div>\n");
      out.write("      </div> \n");
      out.write("     <!-- Modal -->\n");
      out.write("<div id=\"myModal\" class=\"modal fade\" role=\"dialog\">\n");
      out.write("  <div class=\"modal-dialog\">\n");
      out.write("\n");
      out.write("    <!-- Modal content-->\n");
      out.write("    <div class=\"modal-content\">\n");
      out.write("      <div class=\"modal-header\">\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("        <h4 class=\"modal-title\">Modification</h4>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-body\">\n");
      out.write("        \n");
      out.write("          \n");
      out.write("          <div id=\"result\">\n");
      out.write("              \n");
      out.write("              \n");
      out.write("          </div>\n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-footer\">\n");
      out.write("        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("   \n");
      out.write("   <!-- Modal -->\n");
      out.write("<div id=\"myModal1\" class=\"modal fade\" role=\"dialog\">\n");
      out.write("  <div class=\"modal-dialog\">\n");
      out.write("\n");
      out.write("    <!-- Modal content-->\n");
      out.write("    <div class=\"modal-content\">\n");
      out.write("      <div class=\"modal-header\">\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("        <h4 class=\"modal-title\">Details</h4>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-body\">\n");
      out.write("        \n");
      out.write("          \n");
      out.write("          <div id=\"see\">\n");
      out.write("              \n");
      out.write("              \n");
      out.write("          </div>\n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-footer\">\n");
      out.write("        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("   \n");
      out.write("      \n");
      out.write("   \n");
      out.write("         \n");
      out.write("        \n");
      out.write("        \n");
      out.write("\n");
      out.write("   \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("            \n");
      out.write("$(document).ready(function(){\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    $(\"button\").click(function(){\n");
      out.write("        \n");
      out.write("        var a=$(this).val();\n");
      out.write("        var s=a.split(\"-\");\n");
      out.write("        \n");
      out.write("        if(s[0]==\"Del\")\n");
      out.write("        {\n");
      out.write("           \n");
      out.write("           \n");
      out.write("    $.get(\"qdel.jsp\",\n");
      out.write("    {\n");
      out.write("        name: s[1]\n");
      out.write("    },\n");
      out.write("    function(data, status){\n");
      out.write("        alert(\"Record is succesfully deleted\");\n");
      out.write("        location.reload();\n");
      out.write("    });\n");
      out.write("           \n");
      out.write("           \n");
      out.write("           \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        if(s[0]==\"Up\")\n");
      out.write("        {\n");
      out.write("            $.get(\"qupdate.jsp\",\n");
      out.write("    {\n");
      out.write("        name: s[1]\n");
      out.write("    },\n");
      out.write("    function(data, status){\n");
      out.write("       \n");
      out.write("       $(\"#result\").html(data);\n");
      out.write("       \n");
      out.write("     \n");
      out.write("    });\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        if(s[0]==\"View\")\n");
      out.write("        {\n");
      out.write("                   $.get(\"disp1.jsp\",\n");
      out.write("    {\n");
      out.write("        name: s[1]\n");
      out.write("    },\n");
      out.write("    function(data, status){\n");
      out.write("       \n");
      out.write("       $(\"#see\").html(data);\n");
      out.write("       \n");
      out.write("     \n");
      out.write("    });\n");
      out.write("        }\n");
      out.write("    });\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("});  \n");
      out.write("            \n");
      out.write("\n");
      out.write("         </script>   \n");
      out.write("        \n");
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
