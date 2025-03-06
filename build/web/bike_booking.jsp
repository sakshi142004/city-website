<%-- 
    Document   : bike_booking
    Created on : 15 Dec, 2024, 4:53:31 PM
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
        <title>bike booking</title>
        <link rel="stylesheet" href="bikeBooking_CSS.css">
    </head>
    <body>
        <header>
    
    <h1>Transport Rentals</h1></header>

    <div class="redirect-buttons">
        <a href="https://www.rentrip.in/rent-bike/indore?gad_source=1&gclid=CjwKCAiA9IC6BhA3EiwAsbltOPC6OzRnU3iQmwC19LIe6KajyX27r25coNbxUVfugeIxza_XCtoPlhoCCwYQAvD_BwE">Book Two-Wheelers</a>
        <a href="https://indoreselfdrivencar.com/">Book Four-Wheelers</a>
    </div>


    <div class="container">
        <%-- Server-side logic to dynamically generate vehicle cards --%>
        <% 
            String searchInput = request.getParameter("searchInput");
            String tableName = "bikebooking";
            String query = "SELECT * FROM " + tableName;

            if (searchInput != null && !searchInput.trim().isEmpty()) {
                query = "SELECT * FROM " + tableName + " WHERE name LIKE ?";
            }

            try {
                Connection conn = DBConnector.getConnection();
                PreparedStatement ps = conn.prepareStatement(query);

                if (searchInput != null && !searchInput.trim().isEmpty()) {
                    ps.setString(1, "%" + searchInput + "%");
                }

                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
        %>
        <div class="card">
            <div class="image-container">
                <img src="showingImage_JSP.jsp?table=<%=tableName%>&name=<%=rs.getString("name")%>" alt="<%=rs.getString("name")%>">
            </div>
            <h3><%=rs.getString("name")%></h3>
            <p class="price">₹ <%=rs.getString("perDay")%></p>
        </div>
        <%  
                }
            } catch (SQLException e) {
                out.println("<p>Error: Unable to execute the query. " + e.getMessage() + "</p>");
                e.printStackTrace();
            }
        %>
    </div> <!-- Home Button -->
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
