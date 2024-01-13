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
<link rel="stylesheet" href="./css/ExpertArticle.css">
<link rel="stylesheet" href="./css/navbar&footer.css">
    
    <title>Expert Articles</title>
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
   

 <!-- header section ends -->




 <!-- main body starts -->

    <div class="heading-expert-article">
        <div class="for-heading">
            <h1 class="this-is-heading"  data-aos="slide-down"  data-aos-duration="1500">Expert Articles</h1>
        </div>
        <p class="heading-details"  data-aos="fade-out"  data-aos-duration="1500">Healthy living content written by physical therapists, registered dietitians and doctors.</p>
    </div>






    <div class="expert-article-container" data-aos="fade-out"  data-aos-duration="1500">
        <div class="expert-article-container-mini"  data-aos="slide-right"  data-aos-duration="1500">  
            <img src="./resources/img/4th.jpg" class="healthy-expert-article-mini"> 
           <div class="details-of-article">
            <h1 class="content-title">The Role of Exercise in Addiction Treatment</h1>
             <div class="primary-detail">How Fitness Can Help With Recovery</div>
             <div class="readtime"> <a href="expertarticle1.jsp" target="_blank"> Read Time : 8 min</a></div>
            </div>   
         </div>



        <div class="expert-article-container-mini" data-aos="zoom-out-up"  data-aos-duration="1500">   
            <img src="./resources/img/first.jpg" class="healthy-expert-article-mini" >  
          <div class="details-of-article">
          <h1 class="content-title">Journal Prompts for Boosting Your Personal Body Image</h1>
             <div class="primary-detail">Begin to Improve Your Body Image Mindset</div>
             <div class="readtime"> <a href="expertarticle2.jsp" target="_blank"> Read Time : 7 min</a></div>
        </div> 
       </div>




        <div class="expert-article-container-mini" data-aos="slide-left"  data-aos-duration="1500">   
            <img src="./resources/img/5th.jpg" class="healthy-expert-article-mini">  
          <div class="details-of-article">
          <h1 class="content-title">Why Group Socializing is Great For Your Health</h1>
             <div class="primary-detail">How to Make Your Social Connections More Meaningful</div>
             <div class="readtime"> <a href="expertarticle3.jsp" target="_blank">Read Time : 7 min</a> </div>
        </div>
       </div>



        <div class="expert-article-container-mini" data-aos="slide-right"  data-aos-duration="1500">  
            <img src="./resources/img/beautiful-young-woman-eating-salad-black-background_1301-7563.png" class="healthy-expert-article-mini">  
           <div class="details-of-article">
          <h1 class="content-title">How to Form Healthy Habits</h1>
             <div class="primary-detail">Reach Your Wellness Goals With These Practical Tips</div>
             <div class="readtime"> <a href="expertarticle4.jsp" target="_blank">Read Time : 10 min</a> </div>
        </div> 
      </div>




        <div class="expert-article-container-mini" data-aos="zoom-out-down"  data-aos-duration="1500">  
            <img src="./resources/img/meditation.jpg" class="healthy-expert-article-mini">
         <div class="details-of-article">
          <h1 class="content-title">How Often Should You Meditate?</h1>
         <div class="primary-detail">How Frequently to Meditate to Reap Health Benefits</div>
         <div class="readtime"> <a href="expertarticle5.jsp" target="_blank"> Read Time : 9 min</a></div>
        </div> 
       </div>





        <div class="expert-article-container-mini" data-aos="slide-left"  data-aos-duration="1500"> 
            <img src="./resources/img/sleep.jpg" class="healthy-expert-article-mini">  
       <div class="details-of-article">
         <h1 class="content-title">Sleep Hygiene and How to Improve Your Sleep Habits</h1>
         <div class="primary-detail">Tips To Help You Get a Restful Night</div>
         <div class="readtime"> <a href="expertarticle6.jsp" target="_blank">Read Time : 8 min</a> </div>
       </div>  
       </div>


   </div>



<!-- main body ends here -->


<!--footer-->

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


    <!--footer section-->

    
</body>
</html>