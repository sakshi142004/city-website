package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import db.DBConnector;

public final class hospital_002dJSP_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Hospital</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"format_CSS.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <div class=\"header-content\">\n");
      out.write("                <h1 class=\"upper-heading\">INDORE: The Heart Of India</h1>\n");
      out.write("                <form action=\"hospital-JSP.jsp\" method=\"post\">\n");
      out.write("                    <label for=\"criteria\">Search By:</label>\n");
      out.write("                    <select id=\"criteria\" name=\"criteria\">\n");
      out.write("                        <option value=\"name\">Place Name</option>\n");
      out.write("                        <option value=\"address\">Address</option>\n");
      out.write("                        <option value=\"area\">Area</option>\n");
      out.write("                    </select>\n");
      out.write("                    <label for=\"searchInput\">Search:</label>\n");
      out.write("                    <input type=\"text\" id=\"searchInput\" name=\"searchInput\" required>\n");
      out.write("                    <button type=\"submit\">Search</button>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        ");

            // Fetch search parameters
            String criteria = request.getParameter("criteria");
            String searchInput = request.getParameter("searchInput");

            // Set default table name
            String tableName = "hospital";

            // Default query
            String query = "SELECT * FROM " + tableName;

            // Modify query if search input exists
            if (searchInput != null && !searchInput.trim().isEmpty()) {
                query = "SELECT * FROM " + tableName + " WHERE " + criteria + " LIKE ?";
            }

            try {
                Connection conn = DBConnector.getConnection(); // Database connection
                PreparedStatement ps = conn.prepareStatement(query);

                if (searchInput != null && !searchInput.trim().isEmpty()) {
                    ps.setString(1, "%" + searchInput + "%");
                }

                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
        
      out.write("\n");
      out.write("            <div class=\"content-Div-Hotel\">\n");
      out.write("                <div class=\"hotel-images\">\n");
      out.write("                    <!-- Pass table name and name dynamically -->\n");
      out.write("                    <img src=\"showingImage_JSP.jsp?table=");
      out.print(tableName);
      out.write("&name=");
      out.print(rs.getString("name"));
      out.write("\" alt=\"Image\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"hotel-text\">\n");
      out.write("                    <h2>");
      out.print(rs.getString("name"));
      out.write("</h2>\n");
      out.write("                    <p>\n");
      out.write("                        <strong>Area: ");
      out.print(rs.getString("area"));
      out.write("</strong><br>\n");
      out.write("                        <strong>Address: ");
      out.print(rs.getString("address"));
      out.write("</strong>\n");
      out.write("                    </p>\n");
      out.write("                    <a href=\"https://www.google.com/maps/dir/?api=1&destination=");
      out.print(rs.getDouble("latitude"));
      out.write(',');
      out.print(rs.getDouble("longitude"));
      out.write("\" \n");
      out.write("                       target=\"_blank\" \n");
      out.write("                       class=\"navigate-link\">\n");
      out.write("                       <img src=\"images/logo-location.png\" alt=\"Location Icon\" style=\"width: 25px; height: 25px;text-decoration: none\"> Get Directions\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        ");

                }
            } catch (SQLException e) {
                out.println("<p>Error: Unable to execute the query. " + e.getMessage() + "</p>");
                e.printStackTrace();
            } catch (IllegalStateException e) {
                out.println("<p>Error: Database connection is not initialized. " + e.getMessage() + "</p>");
            }
        
      out.write("\n");
      out.write("         <!-- Home Button -->\n");
      out.write("    <button class=\"home-button\" id=\"homeButton\"><a href=\"Home.jsp\">🏠</a></button>\n");
      out.write("\n");
      out.write("  \n");
      out.write("    <script>\n");
      out.write("    // JavaScript for toggle functionality\n");
      out.write("    const homeButton = document.getElementById('homeButton');\n");
      out.write("    const dropdownMenu = document.getElementById('dropdownMenu');\n");
      out.write("\n");
      out.write("    homeButton.addEventListener('click', () => {\n");
      out.write("      const isMenuVisible = dropdownMenu.style.display === 'block';\n");
      out.write("      dropdownMenu.style.display = isMenuVisible ? 'none' : 'block';\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    // Optional: Close menu when clicking outside\n");
      out.write("    window.addEventListener('click', (event) => {\n");
      out.write("      if (!homeButton.contains(event.target) && !dropdownMenu.contains(event.target)) {\n");
      out.write("        dropdownMenu.style.display = 'none';\n");
      out.write("      }\n");
      out.write("    });\n");
      out.write("  </script>\n");
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
