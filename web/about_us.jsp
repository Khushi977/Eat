<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--=============== REMIXICONS ===============-->
<link href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css" rel="stylesheet">
 <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.6/css/unicons.css">
  <link
     rel="stylesheet"
     href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
     integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
     crossorigin="anonymous"
   />
  <!-- scroll animation link-->
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
   <link rel="stylesheet" href="./css/navbar&footer.css">
   <link rel="stylesheet" href="./css/about.css">
    <title>About Us</title>
   
</head>
<body>
    <!-- ===========navbar start======== -->
    
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
                <li><a id="active" href="homepage.jsp"  class="nav__link">Home</a></li>
   
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
   
    <!-- ===========navbar end======== -->

 

    <section id="about-header"  data-aos="fade-left"
    data-aos-easing="linear"
    data-aos-duration="1000">
      <h2>#Know Us</h2>
      <p>KNOW US Explore the essence of EatEase.</p>
      <a href="#" class="to-top">
          <i class=""fas fa-chevron-up></i>
      </a>
  </section>

  <section id="about-head" class="section-p1">
      <img src="./resources/img/brunette-woman-eating-salad.jpg" alt="" data-aos="slide-right" data-aos-easing="linear"
      data-aos-duration="2000">
      <div class="eat-about">
          <p>We are <h3><i>EATEASE</i></h3></p> <p>Welcome to the journey towards a healthier you! At <b>EATEASE</b>, we believe that a vibrant life begins with wholesome choices and nourishing foods. Dive into a world of wellness as we guide you through the essentials of a healthy lifestyle, backed by nutritious recipes and personalized diet charts.
              </p>
              <abbr title="">Join a community of like-minded individuals on the same wellness journey. Share your experiences, seek advice, and celebrate successes together..</abbr>
              <br><br>

            
      </div>
  </section>

<!--======== meet out team===== -->

  <section class="team" data-aos="ease-in">
   <h2 >Meet Our Team</h2>
   <div class="container team_container" >
       <article class="team_member" data-aos="slide-right"
       data-aos-easing="linear"
       data-aos-duration="1000">
           <div class="team_member-image" >
               <img src="./resources/img/user1.jpg" alt="" >
               <div class="team_member-info">
                   <h4>Shakshi Sharma</h4>
                   <!-- <p>Expert Tutor</p> -->
               </div>
               <div class="team_member-socials">
               <li> <a href="https://instagram.com/shakshi.09?igshid=NzZlODBkYWE4Ng==" target="_blank"><i class="ri-instagram-line"></i></a></li>
               <li> <a href="https://www.linkedin.com/in/shakshi-sharma-559047272" target="_blank"><i class="ri-linkedin-fill"></i></a></li>
               <li><a href="https://github.com/shakshi2026" target="_blank"><i class="ri-github-fill"></i></a></li>
               </div>
           </div>
       </article>

       <article class="team_member">
           <div class="team_member-image">
               <img src="./resources/img/femaleuser.jpg" alt="">
               <div class="team_member-info">
                   <h4>Suprava Sarkar</h4>
                   <!-- <p>Expert Tutor</p> -->
               </div>
               <div class="team_member-socials">
                   <li><a href="https://instagram.com/donasarkar20102003?utm_source=qr&igshid=MzNlNGNkZWQ4Mg%3D%3D" target="_blank"><i class="ri-instagram-line"></i></a></li>
                   <li><a href="https://www.linkedin.com/in/suprava-sarkar-569701248/" target="_blank"><i class="ri-linkedin-fill"></i></a></li>
                   <li><a href="https//linkedin.com" target="_blank"><i  class="ri-github-fill"></i></a></li>
               </div>
           </div>
       </article>

       <article class="team_member" data-aos="slide-left"
       data-aos-easing="linear"
       data-aos-duration="1000">
           <div class="team_member-image">
               <img src="./resources/img/profile.jpg" alt="">
               <div class="team_member-info">
                   <h4>Khushi Jaiswal</h4>
                   <!-- <p>Expert Tutor</p> -->
               </div>
               <div class="team_member-socials">
                  <li> <a href="https://instagram.com/khushi_jz?igshid=NzZlODBkYWE4Ng==" target="_blank"><i class="ri-instagram-line"></i></a></li>
                   <li><a href="https://www.linkedin.com/in/khushi-jaiswal-381093228/" target="_blank"><i class="ri-linkedin-fill"></i></a></li>
                  <li> <a href="https://github.com/Khushi977" target="_blank"><i  class="ri-github-fill"></i></a></li>
               </div>
           </div>
       </article>
   </div>
</section>

 <!--================footer section===============-->
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
         <li><a href="homepage.jsp">FAQs</a></li>
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
</body>
</html>