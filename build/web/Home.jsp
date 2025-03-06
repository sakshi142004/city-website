<%-- 
    Document   : Home
    Created on : 15 Dec, 2024, 4:24:36 PM
    Author     : saksh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Indore - The Heart of Madhya Pradesh</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="Home-CSS.css">

    
   
    
    <script> window.chtlConfig = { chatbotId: "2984958683" } </script>
    <script async data-id="2984958683" id="chatling-embed-script" type="text/javascript" src="https://chatling.ai/js/embed.js"></script>


   

<body>
     <!-- Loading Screen -->
    <div id="loading-screen">
        <div id="loading-text">INFOSPHERE</div>
    </div>

    <!-- Main Content -->
    <div id="main-content">
   
      
   
     
   <!-- Fullscreen Image and Welcome Popup -->
    <div id="welcome">
       <img src="images/gate.jpg" style="width: 100%; height: 100%;" alt="Description of image">

		<div class="popup">
            <h1>Welcome to Indore</h1>
            <p>The Heart of Madhya Pradesh</p>
        </div>
    </div>

    <!-- Navigation Bar -->
    <nav>
        <ul>
            <li><a href="#about">About</a></li>
            <li><a href="#places">Places to Visit</a></li>
            <li><a href="#food">Famous Food</a></li>
            <li><a href="#Gallery">Gallery</a></li>
            <li><a href="#contact">Contact</a></li>
            <li class="dropdown">
                <a href="#">Booking</a>
                <ul class="dropdown-menu">
                    <li><a href="hotel_booking.jsp">Hotel Booking</a></li>
                    <li><a href="bike_booking.jsp">Bike Booking</a></li>
                </ul>
            </li>
        </ul>
    </nav>

   <!-- About Section -->
<section id="about">
    
    <div class="content">
        <div class="image">
            <img src="images/1717502482671-600x338.jpg" alt="Front view of Rajwada Palace in Indore">
        </div>
        <div class="info">
            <h2>About Indore</h2>
            <p>Indore, known as "Indrapura" in ancient times, boasts a rich cultural and historical heritage. Visit the iconic Rajwada Palace and explore its vibrant streets filled with life.</p>
           <a href="about.html">Learn More</a>
        </div>
    </div>
    
</section>

<!-- Places to Visit Section -->
<section id="places">
    <div class="content">
       
        <div class="info">
            <h2>Places to Visit</h2>
            <p>Explore the enchanting landmarks of Indore, including Khajrana Ganesh Temple, Lal Bagh Palace, and Chappan Dukan, a food lover's paradise.</p>
            <a href="places_to_visit.jsp">Explore More</a>
        </div>
		 <div class="image">
            <img src="images/lotus_vally.webp" alt="Scenic view of Pitra Parvat">
        </div>
    </div>
</section>

<!-- Famous Food Section -->
<section id="food">
    <div class="content">
        <div class="image">
            <img src="images/food.webp" alt="Famous Poha breakfast in Indore">
        </div>
        <div class="info">
            <h2>Famous Food of Indore</h2>
            <p>Indore is renowned for its culinary delights, including Poha Jalebi, Sarafa Bazaar street food, and the delicious snacks at Chappan Dukan.</p>
            <a href="famous-Food.jsp">Discover Dishes</a>
        </div>
    </div>
</section>


	
	  <section id="services">
             
    <div class="services-grid">
        <div class="service-card">
            <img src="images/shalby hospital.avif" alt="Hospital">
            <h3>Top Hospitals</h3>
            <button class="btn btn-primary"> <a href="hospital-JSP.jsp">More Details</a></button>
        </div>
       
        <div class="service-card">
            <img src="images/restaurant.jpg" alt="Restaurant">
            <h3>Famous Restaurants</h3>
            <button class="btn btn-primary"><a href="restaurant_JSP.jsp">More Details</a></button>
        </div>
    </div>
              
</section>


   <section id="Gallery" class="trending-gallery">
       <a href="gallery-JSP.jsp"><h2>Gallery</h2></a>
    <div class="trending-container">
        <div class="trending-card">
            <a href="images/1.jpg"><img src="images/1.jpg" alt="Trending Temple"></a>
            <h3>Khajrana Ganesh Mandir</h3>
        </div>
        <div class="trending-card">
             <a href="images/2.jpg"><img src="images/2.jpg" alt="Trending Street"></a>
            <h3>Chappan Dukan</h3>
        </div>
        <div class="trending-card">
            <a href="images/3.jpg"> <img src="images/3.jpg" alt="Trending Indore Sign"></a>
            <h3>I ❤ Indore</h3>
        </div>
        <div class="trending-card">
            <a href="images/4.jpg"> <img src="images/4.jpg" alt="Trending Statue"></a>
            <h3>Pitra Parvat</h3>
        </div>
        <div class="trending-card">
             <a href="images/5.jpg"><img src="images/5.jpg" alt="Trending Mall"></a>
            <h3>Phoenix</h3>
        </div>
		
    </div>
</section>
      
    <!-- Feedback and Contact Section -->
    <section id="contact">
        <div class="container">
            
                <h2 class="text-center mb-4">Feedback</h2>
                <form  action="submitFeedback" method="POST" class="row g-3">
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Your Email</label>
                        <input type="email" name="inputEmail4" class="form-control" id="inputEmail4" placeholder="Enter your email">
                    </div>

                    <div class="col-12">
                        <label for="feedbackMessage" class="form-label">Your Feedback</label>
                        <textarea id="feedbackMessage" name="feedbackMessage" class="form-control" rows="4" placeholder="Write your feedback here..."></textarea>
                    </div>

                    <div class="col-3">
                        <button type="submit" class="btn btn-primary">Submit Feedback</button>
                    </div>
                </form>
                 
            

            <div class="video-container mt-5">
                <h2 class="text-center mb-4">Watch Our Latest Videos</h2>
                <div class="d-flex justify-content-center gap-3 flex-wrap">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/5G_iicX3PXM?si=ruzLpniImXG4Fxkg" title="YouTube video player" frameborder="0" allowfullscreen></iframe>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/UwwxMlN0FsY?si=Z1hD737oHvMTbT5g" title="YouTube video player" frameborder="0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </section>
            
     
    <!-- Footer -->
    <footer>
        <div class="contact">
            <h3>Contact Us</h3>
            <p>Email: info@indoretravel.com</p>
        </div>
        <div class="map">
            <iframe src="https://www.google.com/maps/embed?..." width="100%" height="250" style="border:0; border-radius:10px;" allowfullscreen="" loading="lazy"></iframe>
        </div>
    </footer>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
       <script src="script.js">
        document.addEventListener('DOMContentLoaded', () => {
            setTimeout(() => {
                alert("Welcome to Indore!");
            }, 2000); 
        });
        </script>
        <script>
   // JavaScript to handle loading screen
        window.addEventListener('load', () => {
            const loadingScreen = document.getElementById('loading-screen');
            const mainContent = document.getElementById('main-content');

            // Set timeout to fade out the loading screen after 3 seconds
            setTimeout(() => {
                loadingScreen.style.opacity = '0'; // Fade out
                setTimeout(() => {
                    loadingScreen.style.display = 'none'; // Remove loading screen
                    mainContent.style.display = 'block'; // Show main content
                }, 1000); // Wait for the fade-out animation to complete
            }, 0.500); // 3-second delay before fade-out
        });
    </script>

</body>
</html>