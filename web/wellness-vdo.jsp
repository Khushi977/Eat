<%@page import="com.tech.blog.entities.User" %>
<%@page errorPage="error_page.jsp" %>
<%
User user=(User)session.getAttribute("currentUser");

if(user==null){
response.sendRedirect("signup.jsp");
}

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link
     rel="stylesheet"
     href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
     integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
     crossorigin="anonymous"
   />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
   
<!--=============== REMIXICONS ===============-->
<link href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css" rel="stylesheet">

<link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.6/css/unicons.css">
<link rel="Shortcut icon" href="./resources/img/eat1.png">
<link rel="stylesheet" href="./css/wellness-vdo.css">
<link rel="stylesheet" href="./css/navbar&footer.css">

    <title>Wellness Videos</title>
</head>
<body>
 


    <!--=============== HEADER ===============-->
   

 <header class="header">
      <nav class="nav container">
         <div class="nav__data">
            <a href="#" class="nav__logo">
                <img src="./resources/img/eateease logo.gif" alt="" height="45"> ATEASE
            </a>
            
            <div class="nav__toggle" id="nav-toggle">
               <i class="ri-menu-line nav__burger"></i>
               <i class="ri-close-line nav__close"></i>
            </div>
         </div>
   
         <!--=============== NAV MENU ===============-->
          
         <div class="nav__menu" id="nav-menu" >
            <ul class="nav__list">
                <li><a id="active" href="user_profile.jsp"  class="nav__link">Home</a></li>
   
               <!--=============== DROPDOWN 1 ===============-->
               <li class="dropdown__item">
                  <div class="nav__link">
                     Programs <i class="ri-arrow-down-s-line dropdown__arrow"></i>
                  </div>
   
                  <ul class="dropdown__menu">
                     <li>
                         <a href="bmicalculator.jsp" class="dropdown__link">BMI</a>                          
                     </li>
   
                     <li>
                         <a href="getdietform.jsp" class="dropdown__link">Get Diet Chart</a>
                     </li>
   
                     <li>
                         <a href="user_profile.jsp" class="dropdown__link">Community</a>
                   </li>
                   
                     
                  </ul>
               </li>
   
               <!--=============== DROPDOWN 2 ===============-->
               <li class="dropdown__item">
                  <div class="nav__link">
                     Healthy Living <i class="ri-arrow-down-s-line dropdown__arrow"></i>
                  </div>
   
                  <ul class="dropdown__menu">
                     <li>
                         <a href="expertarticle.jsp" class="dropdown__link"> Expert Articles </a>                          
                     </li>
   
                     <li>
                         <a href="wellness-vdo.jsp" class="dropdown__link">Wellness Videos</a>
                     </li>
   
                     <li>
                         <a href="healthy-recipe.jsp" class="dropdown__link">
                          <!-- <i class="ri-message-3-line"></i> -->Healthy Recipies
                        </a>
                     </li>
                  </ul>
               </li>
   
               <li><a href="appointment1.jsp" class="nav__link">Appoiment</a></li>
               <li><a href="about_us.jsp" class="nav__link">About</a></li>
               <li><a href="user_profile.jsp" class="nav__link">FAQs</a></li>
               <li>
                  <a href="show_user_details.jsp" class="nav__link user-login"><i class="fas fa-user"></i></a>
               </li>
              
               
                 <li><a href="logoutServlet" class="nav__link">Logout</a></li>
            </ul>
         </div>
      </nav>
   </header>
   

<!--navbar ends here -->
 


<!-- main section starts here -->



<div class="wlns-video-container"  data-aos="fade-in" data-aos-duration="1700">
   <h1 class="wlnes-vdo-heading" data-aos="fade-down" data-aos-duration="1500">A GALLERY FULL OF WELLNESS VIDEOS</h1>
 <div class="wlns-row">
   <div class="wlns-column1" id="kakaka">
      <div class="wlns-feature-img" >
         <img src="./resources/img/wellness-vdo-1-thumbnail.jpg" width="100%">
         <img src="./resources/img/play-button.png" class="wlns-play-btn" onclick="playVideo('img/wellness-vdo-1.mp4')">
      </div>
   </div>



   <div class="wlns-column"  >
      <div class="wlns-small-img-row">
       <div class="wlns-small-img">
         <img src="./resources/img/wellness-vdo-1-thumbnail.jpg">
          <img src="./resources/img/play-button.png" class="wlns-play-btn" onclick="playVideo('./resources/img/wellness-vdo-1.mp4')">
       </div>
       <p>3-Min Quick Mental Reset &nbsp;||&nbsp; Shilpa Shetty Yoga Videos</p>  
      </div>

 <div class="wlns-small-img-row">
         <div class="wlns-small-img">
           <img src="./resources/img/wellness-vdo-3-thumbnail.jpg">
            <img src="./resources/img/play-button.png" class="wlns-play-btn" onclick="playVideo('./resources/img/wellness-vdo-3.mp4')">
         </div>
         <p>1 Minute Yoga &nbsp;||&nbsp; Morning Yoga Back Stretch</p>  
        </div>

        <div class="wlns-small-img-row">
         <div class="wlns-small-img">
           <img src="./resources/img/wellness-vdo-4-thumbnail.jpg">
            <img src="./resources/img/play-button.png" class="wlns-play-btn" onclick="playVideo('./resources/img/wellness-vdo-4.mp4')">
         </div>
         <p>QUICK WARM UP - 2 MINUTES - FULL BODY - NO EQUIPMENT</p>  
        </div>

<div class="wlns-small-img-row">
         <div class="wlns-small-img">
           <img src="./resources/img/wellness-vdo-8-thumbnail.jpg">
            <img src="./resources/img/play-button.png" class="wlns-play-btn" onclick="playVideo('./resources/img/wellness-vdo-8.mp4')">
         </div>
         <p>Guided Morning Meditation &nbsp;|&nbsp; 3 Minutes To Start Every Day Perfectly</p>  
        </div>
 </div>
 


</div>


</div>

<div class="wellness-vdo-player" id="wlns-vdo-player">
   <video width="100%" controls autoplay id="wellness-my-vdo">
      <source src="img/wellness-vdo-1.mp4" type="video/mp4">
   </video>
   <img src="./resources/img/cross.png" class="wlns-close-btn" onclick="stopVideo()">
</div>





<!-- main section ends here -->





<!--footer section-->
<div class="top-footer" data-aos="fade-up"
  data-aos-duration="1000">
			<section class="footer">
    <div class=" footer-content" data-aos="fade-up">
           <h4 class="footer-logo">EATEASE</h4></a>
           <P>
            EatEase, your trusted companion on the journey to a healthier you.<br> Explore
            expert guidance for a balanced diet.
           </p>
           <div class="icons" data-aos="fade"
           
           data-aos-delay="900"
           data-aos-offset="0">
                <a href="#"><i class="uil uil-facebook-f"></i></a>
                 <a href="#"><i class="uil uil-instagram-alt"></i></a>
                 <a href="#"><i class="uil uil-twitter"></i></a>
                 <a href="#"><i class="uil uil-linkedin-alt"></i></a>
            
           </div>
           </div>
       <div class="footer-content" data-aos="fade-up" data-aos-duration="500" >
         <h4>Permalinks </h4>
         <li><a href="user_profile.jsp">Home</a></li>
         <li><a href="bmicalculator.jsp">Programs</a></li>
         <li><a href="appointment1.jsp">Appoiment</a></li>
         <li><a href="expertarticle.jsp">Healthy Living</a></li>
         <li><a href="about_us.jsp">About</a></li>
         <li><a href="user_profile.jsp">FAQs</a></li>
         <li><a href="contactus.jsp">Contact Us</a></li>
         <li><a href="complaints.jsp">Complaints</a></li>
         <li><a href="feedback.jsp">Feedback</a></li>
             
            </div>
            
            
            <div class="footer-content" data-aos="fade-up" data-aos-duration="500" >
              <h4> Privacy </h4>
              <li><a href="privacypolicy.jsp">Privacy Policy</a></li>
              <li><a href="termsconditions.jsp">Terms and Conditions</a></li>
       </div>

       <div class="footer-content" data-aos="fade-up" data-aos-duration="500" >
           <h4>Contact Us</h4>
          
           <div>
              <li><p>+01 234 567 8910</p></li>
               <li><p>eatease87@gmail.com</p></li>
           </div>
          </div>
      
          
         </section>
         <div class="footer_copyright">
           <small>Copyright &copy; EATEASE 2023 </small> 
         </div>
   </div>
 <!--==============================END OF FOOTER================================-->

          
       <!--aos data animation--> 
 <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
 <script>
   AOS.init();
 </script>

 <script src="./js/main.js"></script>

<script src="./js/wellness-vdojs.js"></script>




</body>
</html>