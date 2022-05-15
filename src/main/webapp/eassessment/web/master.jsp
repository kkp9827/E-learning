<%-- 
    Document   : masterpage
    Created on : 7 Aug, 2018, 3:58:06 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
    
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body, html {
    height: 100%;
    line-height: 1.8;
}
/* Full height image header */
.bgimg-1 {
    background-position: center;
    background-size: cover;
    background-image: url("pic2.jpeg");
    min-height: 100%;
}
.w3-bar .w3-button {
  
  padding:16px;
}

  
</style>
<body>



<!-- Header with full-height image -->
<header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">
  <div class="w3-display-left w3-text-white" style="padding:48px">
    <span class="w3-jumbo w3-hide-small">Start something that matters</span><br>
    <span class="w3-xxlarge w3-hide-large w3-hide-medium">Start something that matters</span><br>
    <span class="w3-large">Stop wasting valuable time in reading start learning</span>
    <p><a href="#about" class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off">Learn more and start today</a></p>
  </div> 
  <div class="w3-display-bottomleft w3-text-grey w3-large" style="padding:24px 48px">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</header>




<!-- Pricing Section -->
<div class="w3-container w3-center w3-light-grey" style="padding:128px 16px" id="pricing">
  <h1>Courses Which are Available Here</h1>
  <p class="w3-large">Choose a course which help you to make your carrier.</p>
  <div class="w3-row-padding" style="margin-top:64px">
    <div class="w3-third w3-section">
      <ul class="w3-ul w3-white w3-hover-shadow">
        <li class="w3-black w3-xlarge w3-padding-32">C Language</li>
        <li class="w3-padding-16"><b>#</b>Introduction to C Programming </li>
        <li class="w3-padding-16"><b>#</b>Fee Structures</li>
        <li class="w3-padding-16"><b>#</b>Operators and Expressions </li>
        <li class="w3-padding-16"><b>#</b>Managing Input and Output operation </li>
        <li class="w3-padding-16">
          <h2 class="w3-wide">Read More</h2>
          
        </li>
        <li class="w3-light-grey w3-padding-24">
            <a href="c.jsp" button class="w3-button w3-black w3-padding-large">Syllabus</button></a>
        </li>
      </ul>
    </div>
       <div class="w3-third">
      <ul class="w3-ul w3-white w3-hover-shadow">
        <li class="w3-red w3-xlarge w3-padding-48">C++ Language</li>
        <li class="w3-padding-16"><b>#</b>Introduction to C++ Programming</li>
        <li class="w3-padding-16"><b>#</b>Fee Structure</li>
        <li class="w3-padding-16"><b>#</b>Token expression and control structure </li>
        <li class="w3-padding-16"><b>#</b>Classes and object in detail </li>
        <li class="w3-padding-16">
          <h2 class="w3-wide">Read More</h2>
        </li>
        <li class="w3-light-grey w3-padding-24">
            <a href="c1.jsp" button class="w3-button w3-black w3-padding-large">Syllabus</button></a>
        </li>
      </ul>
    </div>
    <div class="w3-third w3-section">
      <ul class="w3-ul w3-white w3-hover-shadow">
        <li class="w3-black w3-xlarge w3-padding-32">Core Java</li>
        <li class="w3-padding-16"><b>#</b>Introduction to Core Java</li>
        <li class="w3-padding-16"><b>#</b>Fee Structure</li>
        <li class="w3-padding-16"><b>#</b>Methods Overiding, Overloading</li>
        <li class="w3-padding-16"><b>#</b>Interfaces, Packages and Access Control</li>
        <li class="w3-padding-16">
          <h2 class="w3-wide">Read More</h2>
        </li>
        <li class="w3-light-grey w3-padding-24">
            <a href="corejava.jsp" button class="w3-button w3-black w3-padding-large">Syllabus</button></a>
        </li>
      </ul>
    </div>
  </div>
  <div class="w3-row-padding" style="margin-top:64px">
  <div class="w3-third w3-section">
      <ul class="w3-ul w3-white w3-hover-shadow">
        <li class="w3-black w3-xlarge w3-padding-32">Advance java</li>
        <li class="w3-padding-16"><b>#</b>Introduction to Advance Java</li>
        <li class="w3-padding-16"><b>#</b>Fee Structure</li>
        <li class="w3-padding-16"><b>#</b>JSP</li>
        <li class="w3-padding-16"><b>#</b>EJB</li>
        <li class="w3-padding-16">
          <h2 class="w3-wide">Read More</h2>
        </li>
        <li class="w3-light-grey w3-padding-24">
            <a href="advjava.jsp" button class="w3-button w3-black w3-padding-large">Syllabus</button></a>
        </li>
      </ul>
    </div>
    <div class="w3-third">
      <ul class="w3-ul w3-white w3-hover-shadow">
         <li class="w3-red w3-xlarge w3-padding-48">HTML</li>
        <li class="w3-padding-16"><b>#</b>Introduction to HTML</li>
        <li class="w3-padding-16"><b>#</b>Fee Structure</li>
        <li class="w3-padding-16"><b>#</b>Images and Icons</li>
        <li class="w3-padding-16"><b>#</b>Document Links</li>
        <li class="w3-padding-16">
        <li class="w3-padding-16">
          <h2 class="w3-wide">Read More</h2>
        </li>
        <li class="w3-light-grey w3-padding-24">
            <a href="HTML.jsp" button class="w3-button w3-black w3-padding-large">Syllabus</button></a>
        </li>
      </ul>
    </div>
    <div class="w3-third w3-section">
      <ul class="w3-ul w3-white w3-hover-shadow">
        <li class="w3-black w3-xlarge w3-padding-32">CSS</li>
        <li class="w3-padding-16"><b>#</b>css introduction</li>
        <li class="w3-padding-16"><b>#</b>css selector</li>
        <li class="w3-padding-16"><b>#</b>css padding</li>
        <li class="w3-padding-16"><b>#</b>css classes vs id</li>
        <li class="w3-padding-16">
          <h2 class="w3-wide">Read More</h2>
        </li>
        <li class="w3-light-grey w3-padding-24">
            <a href="css.jsp" button class="w3-button w3-black w3-padding-large">Syllabus</button></a>
        </li>
      </ul>
    </div>
  </div>
</div>
<!-- Contact Section -->
<div class="w3-container w3-light-grey" style="padding:128px 16px" id="contact">
  <h3 class="w3-center">CONTACT DETAILS</h3>
  <p class="w3-center w3-large">If you need any help,so you can contact us:</p>
  <div class="w3-row-padding" style="margin-top:64px">
    <div class="w3-half">
      <p><i class="fa fa-map-marker fa-fw w3-xxlarge w3-margin-right"></i> INDIA</p>
      <p><i class="fa fa-phone fa-fw w3-xxlarge w3-margin-right"></i> Phone: +00 151515</p>
      <p><i class="fa fa-envelope fa-fw w3-xxlarge w3-margin-right"> </i> Email: mail@mail.com</p>
      <br>
      <form action="/action_page.php" target="_blank">
        <p><input class="w3-input w3-border" type="text" placeholder="Name" required name="Name"></p>
        <p><input class="w3-input w3-border" type="text" placeholder="Email" required name="Email"></p>
        <p><input class="w3-input w3-border" type="text" placeholder="Subject" required name="Subject"></p>
        <p><input class="w3-input w3-border" type="text" placeholder="Message" required name="Message"></p>
        <p>
          <button class="w3-button w3-black" type="submit">
            <i class="fa fa-paper-plane"></i> SEND MESSAGE
          </button>
        </p>
      </form>
    </div>
    <div class="w3-half">
      <!-- Add Google Maps -->
      <div id="googleMap" class="w3-greyscale-max" style="width:100%;height:510px;"></div>
    </div>
  </div>
</div>

<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64">
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
 </footer>
 

</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>




</body>
</html>
