# city-website
Indore-the_heart is a Java-based web application using JSP, Servlets, and MySQL, deployed on Apache Tomcat. It features hotel &amp; bike booking, restaurants, places to visit, and a gallery. The backend manages user feedback and database connections, while the frontend uses CSS &amp; Bootstrap for UI.
📂 Project Structure

1. Web Pages (Frontend)
This contains JSP, HTML, CSS, and image files for the UI.
index.jsp → Likely the homepage.
about.html → About the city.
places_to_visit.jsp → Lists places to visit.
restaurant_JSP.jsp → Details about restaurants.
hotel_booking.jsp → Hotel booking functionality.
bike_booking.jsp → Bike booking system.
gallery_JSP.jsp → Photo gallery.
CSS Files
Home-CSS.css → Styles for the homepage.
gallery_style.css → Styles for the gallery.
format_CSS.css → Global formatting styles.


2. Source Packages (Backend)
This contains Java files for handling requests and database operations.
controller.UserFeedback.java → Handles user feedback (probably a servlet).
db.DBConnector.java → Handles MySQL database connection.


3. Database & Configuration
database_format → Likely contains SQL schema or properties for DB setup.
context.xml → Database connection settings.
glassfish-web.xml, web.xml → Deployment descriptors.

5. Libraries
Uses MySQL Connector for database communication.
Apache Tomcat 8.0.27 is the servlet container.
