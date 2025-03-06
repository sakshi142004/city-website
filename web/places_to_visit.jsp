<%-- 
    Document   : places_to_visit.jsp
    Created on : 21 Dec, 2024, 9:04:09 PM
    Author     : saksh
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="db.DBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Place To Visit</title>
        <link rel="stylesheet" href="format_CSS.css">
    </head>
    <body>
        <header>
    <div class="header-content">
        <h1 class="upper-heading">INDORE:The Heart of Madhya Pradesh</h1>
        <form action="places_to_visit.jsp" method="post">
            <label for="criteria">Search By:</label>
            <select id="criteria" name="criteria">
                <option value="name">Place Name</option>
                <option value="address">Address</option>
                <option value="area">Area</option>
            </select>
            <label for="searchInput"></label>
            <input type="text" id="searchInput" name="searchInput" required>
            <button type="submit">Search</button>
        </form>
    </div>
</header>


        <%
            // Fetch search parameters
            String criteria = request.getParameter("criteria");
            String searchInput = request.getParameter("searchInput");

            // Set default table name
            String tableName = "famousplaces";

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
        %>
            <div class="content-Div-Hotel">
                <div class="hotel-images">
                    <!-- Pass table name and name dynamically -->
                    <img src="showingImage_JSP.jsp?table=<%=tableName%>&name=<%=rs.getString("name")%>" alt="Image">
                </div>
                <div class="hotel-text">
                    <h2><%=rs.getString("name")%></h2>
                    <p>
                        <strong>Area: <%=rs.getString("area")%></strong><br>
                        <strong>Address: <%=rs.getString("address")%></strong>
                    </p>
                    <a href="https://www.google.com/maps/dir/?api=1&destination=<%=rs.getDouble("latitude")%>,<%=rs.getDouble("longitude")%>" 
                       target="_blank" 
                       class="navigate-link">
                       <img src="images/logo-location.png" alt="Location Icon" style="width: 25px; height: 25px;text-decoration: none"> Get Directions
                    </a>
                </div>
            </div>
        <%
                }
            } catch (SQLException e) {
                out.println("<p>Error: Unable to execute the query. " + e.getMessage() + "</p>");
                e.printStackTrace();
            } catch (IllegalStateException e) {
                out.println("<p>Error: Database connection is not initialized. " + e.getMessage() + "</p>");
            }
        %>
        <!-- Home Button -->
    <button class="home-button" id="homeButton"><a href="Home.jsp">🏠</a></button>

  
    <script>
    // JavaScript for toggle functionality
    const homeButton = document.getElementById('homeButton');
    const dropdownMenu = document.getElementById('dropdownMenu');

    homeButton.addEventListener('click', () => {
      const isMenuVisible = dropdownMenu.style.display === 'block';
      dropdownMenu.style.display = isMenuVisible ? 'none' : 'block';
    });

    // Optional: Close menu when clicking outside
    window.addEventListener('click', (event) => {
      if (!homeButton.contains(event.target) && !dropdownMenu.contains(event.target)) {
        dropdownMenu.style.display = 'none';
      }
    });
  </script>
    </body>
</html>