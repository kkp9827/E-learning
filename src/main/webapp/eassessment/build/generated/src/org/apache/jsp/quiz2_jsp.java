package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.tom.Helper;

public final class quiz2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("   <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  <!-- Custom fonts for this template-->\n");
      out.write("  <link href=\"vendor/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("  <!-- Page level plugin CSS-->\n");
      out.write("  <link href=\"vendor/datatables/dataTables.bootstrap4.css\" rel=\"stylesheet\">\n");
      out.write("  <!-- Custom styles for this template-->\n");
      out.write("  <link href=\"css/sb-admin.css\" rel=\"stylesheet\">\n");
      out.write("   <script src=\"jquery.min.js\"></script>\n");
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
      out.write("    \n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      \n");
      out.write("         <div class=\"container\">\n");
      out.write("        \n");
      out.write("        \n");
      out.write("             <center><b><h1>GATE</h1></b></center>\n");
      out.write("        \n");
      out.write("         </div>  \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("         <div>\n");
      out.write("        \n");
      out.write("   \n");
      out.write("          <!-------countdowm------>     \n");
      out.write("               \n");
      out.write("               \n");
      out.write("            <!-- Display the countdown timer in an element -->\n");
      out.write("            <center><p id=\"demo\" style=\"background-color: red;color: white;\"></p></center>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("                      // Set the date we're counting down to\n");
      out.write("                      var countDownDate = new Date(\"Aug 30, 2018 13:48:00\").getTime();\n");
      out.write("\n");
      out.write("                        // Update the count down every 1 second\n");
      out.write("                        var x = setInterval(function() {\n");
      out.write("\n");
      out.write("                         // Get todays date and time\n");
      out.write("                         var now = new Date().getTime();\n");
      out.write("\n");
      out.write("                        // Find the distance between now and the count down date\n");
      out.write("                        var distance = countDownDate - now;\n");
      out.write("\n");
      out.write("                     // Time calculations for days, hours, minutes and seconds\n");
      out.write("                     var days = Math.floor(distance / (1000 * 60 * 60 * 24));\n");
      out.write("                     var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));\n");
      out.write("                     var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));\n");
      out.write("                     var seconds = Math.floor((distance % (1000 * 60)) / 1000);\n");
      out.write("\n");
      out.write("                     // Display the result in the element with id=\"demo\"\n");
      out.write("                     document.getElementById(\"demo\").innerHTML = hours + \"h \"\n");
      out.write("                     + minutes + \"m \" + seconds + \"s \";\n");
      out.write("\n");
      out.write("                     // If the count down is finished, write some text \n");
      out.write("                     if (distance < 0) {\n");
      out.write("                     clearInterval(x);\n");
      out.write("                     document.getElementById(\"demo\").innerHTML = \"EXPIRED\";\n");
      out.write("                    }\n");
      out.write("                    }, 1000);\n");
      out.write("            </script>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("     <div class=\"container\">   \n");
      out.write("        \n");
      out.write("           \n");
      out.write("            \n");
      out.write("            <div class=\"row\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                ");

                 String s=com.tom.Helper.getQuestions();
                 String a[]=s.split(",");
                 int x=0;  
                 
                
      out.write("    \n");
      out.write("                 <input type=\"hidden\" id=\"index\" value=\"0\">\n");
      out.write("            <input type=\"hidden\" id=\"ques\" value=\"1,3,5,7,8,10,\">    \n");
      out.write("                    \n");
      out.write("               <div class=\"col-sm-8\" id=\"qa\">         \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!---Database Connection----->\n");
      out.write("        ");

            try
                {
                    
                  
                
                 Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","");
                    Statement st=con.createStatement();
                    String sql="Select * from  fill where qid='"+a[x]+"'";
                    
                    ResultSet rs=st.executeQuery(sql);
                   
                    rs.next();
                    
        
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <form action=\"confirm2.jsp\" method=\"get\">\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <div class=\"form-group\"><h3><b><u>Question</u>-");
      out.print((x+1));
      out.write("</b></h3><br><h5>");
      out.print(rs.getString("que") );
      out.write("</h5></div>\n");
      out.write("           \n");
      out.write("            <div> <input type=\"hidden\" id=\"pcode\" value=\"p101\"></div>\n");
      out.write("            <div> <input type=\"hidden\" id=\"rollno\" value=\"101\"></div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("                <div class=\"radio\">\n");
      out.write("                    <label><input type=\"radio\" name=\"optradio\" id=\"op\" value=\"option1\"><b>&nbsp;a.</b> ");
      out.print(rs.getString("obj1") );
      out.write("<br></label>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"radio\">\n");
      out.write("                    <label><input type=\"radio\" name=\"optradio\" id=\"op\" value=\"option2\"><b>&nbsp;b.</b> ");
      out.print(rs.getString("obj2") );
      out.write("<br></label>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div class=\"radio\">\n");
      out.write("                    <label><input type=\"radio\" name=\"optradio\" id=\"op\" value=\"option3\"><b>&nbsp;c.</b> ");
      out.print(rs.getString("obj3") );
      out.write("<br></label>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div class=\"radio\">\n");
      out.write("                    <label><input type=\"radio\" name=\"optradio\" id=\"op\" value=\"option4\"><b>d.</b> ");
      out.print(rs.getString("obj4") );
      out.write("<br></label>\n");
      out.write("                </div>\n");
      out.write("                <br>          \n");
      out.write("                <div><center>\n");
      out.write("                    \n");
      out.write("                    <button type=\"button\" class=\"btn btn-primary\" value=\"Next\">Next</button>&nbsp;&nbsp;\n");
      out.write("                    <button type=\"button\" class=\"btn btn-success\" value=\"Conf\">Confirm</button>&nbsp;&nbsp;\n");
      out.write("                    <button type=\"button\" class=\"btn btn-danger\">Review</button>\n");
      out.write("                    </center>\n");
      out.write("                </div>\n");
      out.write("                <br>\n");
      out.write("                 \n");
      out.write("            </form>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

              }catch(Exception e){ out.print(e.getMessage());}
           
      out.write("\n");
      out.write("        \n");
      out.write("               \n");
      out.write("               \n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    <div class=\"col-sm-3\">\n");
      out.write("       \n");
      out.write("        \n");
      out.write("                <button class=\"btn btn-primary dropdown-toggle col-sm-12\" data-toggle=\"dropdown\">\n");
      out.write("      Select Option\n");
      out.write("    </button>\n");
      out.write("    <div class=\"dropdown-menu col-sm-11\">\n");
      out.write("      <a class=\"dropdown-item\" href=\"#\">Link 1</a>\n");
      out.write("      <a class=\"dropdown-item\" href=\"#\">Link 2</a>\n");
      out.write("      <a class=\"dropdown-item-text\" href=\"#\">Text Link</a>\n");
      out.write("      <span class=\"dropdown-item-text\" href=\"#\">Just Text</span>\n");
      out.write("    </div><br><br>\n");
      out.write("                      \n");
      out.write("               ");

                       
            String t="1,3,5,7,8,10,";
            String k[]=s.split(",");
           out.print("<table border='2' width='100%'><tr>");
            for(int g=1;g<=k.length;g++)
            {
                if(g%5==0)
                {
                out.print("<td><button  id='query1' value='jump-"+(g-1)+"'>"+g+"</button></td></tr><tr>");
                }
                else
                {
            out.print("<td><button  id='query2' value='jump-"+(g-1)+"'>"+g+"</button></td>");
                }
            }
             out.print("</tr></table>");          
                       
                       
      out.write("\n");
      out.write("                 \n");
      out.write("      \n");
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("  \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("   </div>  \n");
      out.write("               \n");
      out.write("               \n");
      out.write("               \n");
      out.write("               \n");
      out.write("               \n");
      out.write("    </div>            \n");
      out.write("               \n");
      out.write("              \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    \n");
      out.write("        \n");
      out.write("        \n");
      out.write("                <script>\n");
      out.write("            \n");
      out.write("$(document).ready(function(){\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    $(\"button\").click(function(){\n");
      out.write("        \n");
      out.write("        var z=$(this).val();\n");
      out.write("        \n");
      out.write("        if(z==\"Next\")\n");
      out.write("        {\n");
      out.write("           \n");
      out.write("    $.get(\"next.jsp\",\n");
      out.write("    {\n");
      out.write("        alert(\"hello\");\n");
      out.write("        qindex:parseInt($(\"#index\").val())+1,\n");
      out.write("        ques:$(\"#ques\").val()\n");
      out.write("    },\n");
      out.write("    function(data, status){\n");
      out.write("       var m= parseInt($(\"#index\").val())+1;\n");
      out.write("       $(\"#index\").val(m+\"\");\n");
      out.write("        $(\"#qa\").html(data);\n");
      out.write("        \n");
      out.write("    });\n");
      out.write("       \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        if(z==\"Conf\")\n");
      out.write("        {\n");
      out.write("          \n");
      out.write("    $.get(\"confirm.jsp\",\n");
      out.write("    {\n");
      out.write("        alert(\"hello\");\n");
      out.write("        qindex:parseInt($(\"#index\").val()),\n");
      out.write("       \n");
      out.write("    },\n");
      out.write("    function(data, status){\n");
      out.write("        var m= parseInt($(\"#index\").val());\n");
      out.write("       $(\"#index\").val(m+\"\");\n");
      out.write("        $(\"#qa\").html(data);\n");
      out.write("        \n");
      out.write("    });\n");
      out.write("       \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        if(s[0]==\"jump\")\n");
      out.write("        {\n");
      out.write("           alert(\"jump\");\n");
      out.write("    $.get(\"next.jsp\",\n");
      out.write("    {\n");
      out.write("        qindex:s[1],\n");
      out.write("        ques:$(\"#ques\").val()\n");
      out.write("    },\n");
      out.write("    function(data, status){\n");
      out.write("       var m= parseInt(s[1]);\n");
      out.write("       $(\"#index\").val(m+\"\");\n");
      out.write("        $(\"#qa\").html(data);\n");
      out.write("        \n");
      out.write("    });\n");
      out.write("       \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("\n");
      out.write("        \n");
      out.write("         });\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("});  \n");
      out.write("            \n");
      out.write("         </script>   \n");
      out.write("        \n");
      out.write("        \n");
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
