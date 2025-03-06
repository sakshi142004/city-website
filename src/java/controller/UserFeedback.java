package controller;

import db.DBConnector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet to handle feedback submission.
 */
@WebServlet("/submitFeedback")
public class UserFeedback extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Set response content type
        response.setContentType("text/html");
        String email = request.getParameter("inputEmail4"); // Get email from form
        String feedback = request.getParameter("feedbackMessage"); // Get feedback from form

        // Initialize response message
        String message;

        try (Connection con = DBConnector.getConnection()) {
            // SQL query to insert data
            String sql = "INSERT INTO feedback_table (email, feedback) VALUES (?, ?)";
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setString(1, email);
                ps.setString(2, feedback);

                // Execute the insert query
                int result = ps.executeUpdate();

                // Determine success or failure
               if (result > 0) {
                    message = "<p style='color: green;'>Thank you for your feedback!</p>";
                } else {
                    message = "<p style='color: red;'>Failed to submit feedback. Please try again.</p>";
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            message = "<p style='color: red;'>An error occurred: " + e.getMessage() + "</p>";
        }

        // Print the feedback form along with the response message
       try (PrintWriter out = response.getWriter()) {
            out.println("<html>");
            out.println("<head><title>Feedback</title></head>");
            out.println("<body>");
            out.println("<center><h1> "+message+"  </h1></center>");
            
            out.println("</body>");
            out.println("</html>");
        }
    }
}
