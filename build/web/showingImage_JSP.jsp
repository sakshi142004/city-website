<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dynamic Image Viewer</title>
    </head>
    <body>
        <%
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;

            Blob image = null;
            byte[] imgData = null;
           try {
                // Retrieve table name and place name from request parameters
                String tableName = request.getParameter("table");
                String name = request.getParameter("name");
                if (tableName == null || name == null) {
                    out.println("<p>Error: Missing required parameters (table or name).</p>");
                    return;
                }

                // Validate table name to prevent SQL injection
                if (!tableName.matches("^[a-zA-Z0-9_]+$")) {
                    out.println("<p>Error: Invalid table name.</p>");
                    return;
                }
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/indore", "root", "root");
                st = con.createStatement();
 // Query using the dynamic table name
                rs = st.executeQuery("SELECT image FROM " + tableName + " WHERE name='" + name + "'");

                if (rs.next()) {
                    image = rs.getBlob(1);
                    imgData = image.getBytes(1, (int) image.length());

                    response.setContentType("image/jpg");
                    OutputStream o = response.getOutputStream();
                    o.write(imgData);
                    o.flush();
                    o.close();
                } else {
                    out.println("<p>No image found for the given name.</p>");
                }
            } catch (Exception e) {
                out.println("<p>Error: Unable to display image. " + e.getMessage() + "</p>");
                e.printStackTrace();
            } finally {
                try {
                    if (con != null) con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                } }
        %>        
    </body></html>
