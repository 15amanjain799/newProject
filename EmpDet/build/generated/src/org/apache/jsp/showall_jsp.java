package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class showall_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Employee's Information</h1>\n");
      out.write("        <hr/>\n");
      out.write("        <table border='1'>\n");
      out.write("            <tr>\n");
      out.write("                <th>Employee Id</th>\n");
      out.write("                <th>Employee Name</th>\n");
      out.write("                <th>Department</th>\n");
      out.write("                <th>Designation</th>\n");
      out.write("                <th>Salary</th>\n");
      out.write("                <th>Delete</th>\n");
      out.write("                <th>Update</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

             Class .forName("com.mysql.jdbc.Driver"); 
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empinfo","root","");
             PreparedStatement ps=con.prepareStatement("select * from empdet");
             ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(rs.getString("empid") );
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("empname"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("department"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("designation"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getInt("salary"));
      out.write("</td>\n");
      out.write("                <td><a href=\"delete.jsp?empid=");
      out.print(rs.getString("empid"));
      out.write("\">Delete</a></td>\n");
      out.write("                <td><a href=\"show.jsp?empid=");
      out.print(rs.getString("empid"));
      out.write("\">Update</a></td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("           ");
 } 
      out.write(" \n");
      out.write("        </table>   \n");
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
