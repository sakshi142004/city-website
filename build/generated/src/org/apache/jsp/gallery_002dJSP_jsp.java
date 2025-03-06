package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class gallery_002dJSP_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Media Gallery</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"gallery_style.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("   <div class=\"heading-section\">\n");
      out.write("  <h1>Gallery of Indore</h1>\n");
      out.write("</div>\n");
      out.write("   \n");
      out.write("<div class=\"gallery-section\">\n");
      out.write("  <!-- Images Section -->\n");
      out.write("  <h2>Images</h2>\n");
      out.write("  <div class=\"gallery\">\n");
      out.write("    <!-- Example Static Images -->\n");
      out.write("    <div class=\"gallery-item\">\n");
      out.write("      <img src=\"images/1.jpg\" alt=\"Gallery Image 1\">\n");
      out.write("    </div>\n");
      out.write("    <div class=\"gallery-item\">\n");
      out.write("      <img src=\"images/2.jpg\" alt=\"Gallery Image 2\">\n");
      out.write("    </div>\n");
      out.write("    <div class=\"gallery-item\">\n");
      out.write("      <img src=\"images/3.jpg\" alt=\"Gallery Image 3\">\n");
      out.write("    </div>\n");
      out.write("    <div class=\"gallery-item more\" id=\"images-more\">\n");
      out.write("      <span>+29 More</span>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"gallery-item add-photo\">\n");
      out.write("      <button>Add More Photo</button>\n");
      out.write("      <input type=\"file\" id=\"image-upload\" accept=\"image/*\" style=\"display: none;\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"video-section\">\n");
      out.write("  <!-- Videos Section -->\n");
      out.write("  <h2>Videos</h2>\n");
      out.write("  <div class=\"gallery\">\n");
      out.write("    <!-- Example Static Videos -->\n");
      out.write("    <div class=\"gallery-item\">\n");
      out.write("      <video controls>\n");
      out.write("        <source src=\"C:\\Users\\saksh\\OneDrive\\Documents\\NetBeansProjects\\Indore-the_heart\\web\\images\\indore_video_second.mp4\" type=\"video/mp4\">\n");
      out.write("        Your browser does not support the video tag.\n");
      out.write("      </video>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"gallery-item\">\n");
      out.write("      <video controls>\n");
      out.write("        <source src=\"C:\\Users\\saksh\\OneDrive\\Documents\\NetBeansProjects\\Indore-the_heart\\web\\images\\indore_video_my.mp4\" type=\"video/mp4\">\n");
      out.write("        Your browser does not support the video tag.\n");
      out.write("      </video>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"gallery-item more\" id=\"videos-more\">\n");
      out.write("      <span>+10 More</span>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"gallery-item add-video\">\n");
      out.write("      <button>Add More Video</button>\n");
      out.write("      <input type=\"file\" id=\"video-upload\" accept=\"video/*\" style=\"display: none;\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Modal -->\n");
      out.write("<div id=\"galleryModal\" class=\"modal\">\n");
      out.write("  <div class=\"modal-content\">\n");
      out.write("    <span class=\"close\">&times;</span>\n");
      out.write("    <div id=\"modal-items\">\n");
      out.write("      <!-- Dynamically loaded images or videos will appear here -->\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("// Modal Elements\n");
      out.write("const modal = document.getElementById('galleryModal');\n");
      out.write("const closeModal = document.querySelector('.modal .close');\n");
      out.write("const modalItems = document.getElementById('modal-items');\n");
      out.write("\n");
      out.write("// Preload data for \"More\" buttons\n");
      out.write("const additionalImages = ['images/4.jpg', 'images/5.jpg', 'images/ahilya_bai.jpg'];\n");
      out.write("const additionalVideos = ['images\\indore_video_my.mp4', 'images\\indore_video_second.mp4', 'images\\waterfall_video.mp4'];\n");
      out.write("\n");
      out.write("// Handle \"More\" button click\n");
      out.write("document.getElementById('images-more').addEventListener('click', () => {\n");
      out.write("  showModal(additionalImages, 'image');\n");
      out.write("});\n");
      out.write("\n");
      out.write("document.getElementById('videos-more').addEventListener('click', () => {\n");
      out.write("  showModal(additionalVideos, 'video');\n");
      out.write("});\n");
      out.write("\n");
      out.write("// Show modal function\n");
      out.write("function showModal(items, type) {\n");
      out.write("  modalItems.innerHTML = ''; // Clear previous content\n");
      out.write("\n");
      out.write("  items.forEach((item) => {\n");
      out.write("    const element = document.createElement(type === 'image' ? 'img' : 'video');\n");
      out.write("    element.src = item;\n");
      out.write("    if (type === 'video') element.controls = true;\n");
      out.write("    modalItems.appendChild(element);\n");
      out.write("  });\n");
      out.write("\n");
      out.write("  modal.style.display = 'block';\n");
      out.write("}\n");
      out.write("\n");
      out.write("// Close modal functionality\n");
      out.write("closeModal.addEventListener('click', () => {\n");
      out.write("  modal.style.display = 'none';\n");
      out.write("});\n");
      out.write("\n");
      out.write("// Handle image uploads\n");
      out.write("document.querySelector('.add-photo button').addEventListener('click', () => {\n");
      out.write("  document.getElementById('image-upload').click();\n");
      out.write("});\n");
      out.write("\n");
      out.write("document.getElementById('image-upload').addEventListener('change', (event) => {\n");
      out.write("  const file = event.target.files[0];\n");
      out.write("  if (file) {\n");
      out.write("    const reader = new FileReader();\n");
      out.write("    reader.onload = (e) => addNewItem(e.target.result, 'image');\n");
      out.write("    reader.readAsDataURL(file);\n");
      out.write("  }\n");
      out.write("});\n");
      out.write("\n");
      out.write("// Handle video uploads\n");
      out.write("document.querySelector('.add-video button').addEventListener('click', () => {\n");
      out.write("  document.getElementById('video-upload').click();\n");
      out.write("});\n");
      out.write("\n");
      out.write("document.getElementById('video-upload').addEventListener('change', (event) => {\n");
      out.write("  const file = event.target.files[0];\n");
      out.write("  if (file) {\n");
      out.write("    const reader = new FileReader();\n");
      out.write("    reader.onload = (e) => addNewItem(e.target.result, 'video');\n");
      out.write("    reader.readAsDataURL(file);\n");
      out.write("  }\n");
      out.write("});\n");
      out.write("\n");
      out.write("// Add new item (image or video) to gallery\n");
      out.write("function addNewItem(src, type) {\n");
      out.write("  const element = document.createElement(type === 'image' ? 'img' : 'video');\n");
      out.write("  element.src = src;\n");
      out.write("  if (type === 'video') element.controls = true;\n");
      out.write("\n");
      out.write("  const newItem = document.createElement('div');\n");
      out.write("  newItem.className = 'gallery-item';\n");
      out.write("  newItem.appendChild(element);\n");
      out.write("\n");
      out.write("  // Insert before the \"More\" button\n");
      out.write("  const gallery = type === 'image' ? document.querySelector('.gallery-section .gallery') : document.querySelector('.video-section .gallery');\n");
      out.write("  const moreButton = gallery.querySelector('.more');\n");
      out.write("  gallery.insertBefore(newItem, moreButton);\n");
      out.write("}\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("</body>\n");
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
