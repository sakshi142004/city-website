<%-- 
    Document   : gallery-JSP
    Created on : 16 Dec, 2024, 5:05:16 PM
    Author     : saksh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Media Gallery</title>
    <link rel="stylesheet" href="gallery_style.css">
</head>
<body>
   <div class="heading-section">
  <h1>Gallery of Indore</h1>
</div>
   
<div class="gallery-section">
  <!-- Images Section -->
  <center><h1>Images</h1></center>
  <div class="gallery">
    <!-- Example Static Images -->
    <div class="gallery-item">
      <img src="images/1.jpg" alt="Gallery Image 1">
    </div>
    <div class="gallery-item">
      <img src="images/2.jpg" alt="Gallery Image 2">
    </div>
    <div class="gallery-item">
      <img src="images/3.jpg" alt="Gallery Image 3">
    </div>
    <div class="gallery-item more" id="images-more">
      <span>+10 More</span>
    </div>
    <div class="gallery-item add-photo">
      <button>Add More Photo</button>
      <input type="file" id="image-upload" accept="image/*" style="display: none;">
    </div>
  </div>
</div>

<div class="video-section">
  <!-- Videos Section -->
  <center><h1>Videos</h1></center>
  <div class="gallery">
    <!-- Example Static Videos -->
    <div class="gallery-item">
      <video controls>
        <source src="C:\Users\saksh\OneDrive\Documents\NetBeansProjects\Indore-the_heart\web\images\indore_video_second.mp4" type="video/mp4">
        Your browser does not support the video tag.
      </video>
    </div>
    <div class="gallery-item">
      <video controls>
        <source src="C:\Users\saksh\OneDrive\Documents\NetBeansProjects\Indore-the_heart\web\images\indore_video_my.mp4" type="video/mp4">
        Your browser does not support the video tag.
      </video>
    </div>
    <div class="gallery-item more" id="videos-more">
      <span>+10 More</span>
    </div>
    <div class="gallery-item add-video">
      <button>Add More Video</button>
      <input type="file" id="video-upload" accept="video/*" style="display: none;">
    </div>
  </div>
</div>

<!-- Modal -->
<div id="galleryModal" class="modal">
  <div class="modal-content">
    <span class="close">&times;</span>
    <div id="modal-items">
      <!-- Dynamically loaded images or videos will appear here -->
    </div>
  </div>
</div>

<script>
// Modal Elements
const modal = document.getElementById('galleryModal');
const closeModal = document.querySelector('.modal .close');
const modalItems = document.getElementById('modal-items');

// Preload data for "More" buttons
const additionalImages = ['images/1.jpg','images/2.jpg','images/3.jpg','images/4.jpg', 'images/5.jpg', 'images/ahilya_bai.jpg'];
const additionalVideos = ['images\indore_video_my.mp4', 'images\indore_video_second.mp4', 'images\waterfall_video.mp4' , 'images/VID_20241209_044513_326.mp4','images/VID_20241209_044601_326.mp4','images/VID_2024.mp4'];

// Handle "More" button click
document.getElementById('images-more').addEventListener('click', () => {
  showModal(additionalImages, 'image');
});

document.getElementById('videos-more').addEventListener('click', () => {
  showModal(additionalVideos, 'video');
});

// Show modal function
function showModal(items, type) {
  modalItems.innerHTML = ''; // Clear previous content

  items.forEach((item) => {
    const element = document.createElement(type === 'image' ? 'img' : 'video');
    element.src = item;
    if (type === 'video') element.controls = true;
    modalItems.appendChild(element);
  });

  modal.style.display = 'block';
}

// Close modal functionality
closeModal.addEventListener('click', () => {
  modal.style.display = 'none';
});

// Handle image uploads
document.querySelector('.add-photo button').addEventListener('click', () => {
  document.getElementById('image-upload').click();
});

document.getElementById('image-upload').addEventListener('change', (event) => {
  const file = event.target.files[0];
  if (file) {
    const reader = new FileReader();
    reader.onload = (e) => addNewItem(e.target.result, 'image');
    reader.readAsDataURL(file);
  }
});

// Handle video uploads
document.querySelector('.add-video button').addEventListener('click', () => {
  document.getElementById('video-upload').click();
});

document.getElementById('video-upload').addEventListener('change', (event) => {
  const file = event.target.files[0];
  if (file) {
    const reader = new FileReader();
    reader.onload = (e) => addNewItem(e.target.result, 'video');
    reader.readAsDataURL(file);
  }
});

// Add new item (image or video) to gallery
function addNewItem(src, type) {
  const element = document.createElement(type === 'image' ? 'img' : 'video');
  element.src = src;
  if (type === 'video') element.controls = true;

  const newItem = document.createElement('div');
  newItem.className = 'gallery-item';
  newItem.appendChild(element);

  // Insert before the "More" button
  const gallery = type === 'image' ? document.querySelector('.gallery-section .gallery') : document.querySelector('.video-section .gallery');
  const moreButton = gallery.querySelector('.more');
  gallery.insertBefore(newItem, moreButton);
}

</script>
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
</body>
</html>
