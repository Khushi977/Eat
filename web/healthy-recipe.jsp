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
<link rel="stylesheet" href="./css/healthy-recipes.css">
<link rel="stylesheet" href="./css/navbar&footer.css">
    <title>Healthy Recipes</title>
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



  <!-- main section starts -->



  <!-- headings starts -->

  <div class="heading-healthy-recipes">
    <div class="for-heading-recipes">
        <h1 class="this-is-heading-recipes"  data-aos="slide-down"  data-aos-duration="1500">Healthy Recipes</h1>
    </div>
    <p class="heading-recipes-details"  data-aos="fade-out"  data-aos-duration="1500">Healthy, whole food recipes that nourish your body and your tastebuds.</p>
</div>

<!-- headings ends -->



<!-- main div starts -->


<div class="expert-article-container" data-aos="fade-out"  data-aos-duration="1500">
   <div class="expert-article-container-mini"  data-aos="slide-right"  data-aos-duration="1500">  
       <img src="./resources/img/Curried_fried_egg_open_naan.jpg" class="healthy-expert-article-mini"> 
      <div class="details-of-article">
       <h1 class="content-title">Curried Fried Egg Open Naan</h1>
        <div class="primary-detail">Difficulty : Easy <br>Cuisine : Indian</div></div>  
        <button class="View-Recipe"><a href="healthy-recipe1.jsp" target="_blank">View Recipe</a></button>
        
    </div>



   <div class="expert-article-container-mini" data-aos="zoom-out-up"  data-aos-duration="1500">   
       <img src="./resources/img/parmessan.jpg" class="healthy-expert-article-mini" >  
     <div class="details-of-article">
     <h1 class="content-title">Chicken Parmesan & Quinoa Stuffed Peppers</h1>
        <div class="primary-detail">Difficulty : medium <br>Cuisine : Italian-American</div></div>
        <button class="View-Recipe"><a href="healthy-recipe2.jsp" target="_blank">View Recipe</a></button>
        
   </div> 
 




   <div class="expert-article-container-mini" data-aos="slide-left"  data-aos-duration="1500">   
       <img src="./resources/img/chickpeas.jpg" class="healthy-expert-article-mini">  
     <div class="details-of-article">
     <h1 class="content-title">Mild Egg Korma With Chickpeas and Spinach</h1>
        <div class="primary-detail">Difficulty : Medium <br>Cuisine : Indian</div></div>
        <button class="View-Recipe"><a href="healthy-recipe3.jsp" target="_blank">View Recipe</a></button>
    
   </div>
  






   <div class="expert-article-container-mini" data-aos="slide-right"  data-aos-duration="1500">  
       <img src="./resources/img/oatmeal.jpg" class="healthy-expert-article-mini">
     <div class="details-of-article">
      <h1 class="content-title">Oatmeal with Fruit & Nuts</h1>
     <div class="primary-detail">Difficulty : Easy <br>Cuisine : Indian</div></div>
     <button class="View-Recipe"><a href="healthy-recipe4.jsp" target="_blank">View Recipe</a></button>
     
    </div> 





   <div class="expert-article-container-mini" data-aos="zoom-out-up"  data-aos-duration="1500">  
       <img src="./resources/img/breakfast-sandwich.jpg" class="healthy-expert-article-mini">  
      <div class="details-of-article">
     <h1 class="content-title">Egg, Spinach & Cheddar Breakfast Sandwich</h1>
        <div class="primary-detail">Difficulty : Easy <br>Cuisine : American</div></div>
        <button class="View-Recipe"><a href="healthy-recipe5.jsp" target="_blank">View Recipe</a></button>
    
 </div>






   <div class="expert-article-container-mini" data-aos="slide-left"  data-aos-duration="1500"> 
       <img src="./resources/img/chickenbrocolli.jpg" class="healthy-expert-article-mini">  
  <div class="details-of-article">
    <h1 class="content-title">Loaded Broccoli & Chicken Casserole</h1>
    <div class="primary-detail">Difficulty : Medium <br>Cuisine : Continental</div></div>
    <button class="View-Recipe"><a href="healthy-recipe6.jsp" target="_blank">View Recipe</a></button>
 
  </div>


</div>


<!-- main div ends -->

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
  
    
</body>
</html>