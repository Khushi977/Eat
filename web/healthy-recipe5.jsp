<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
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
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
 <link rel="Shortcut icon" href="./resources/img/eat1.png">
<link rel="stylesheet" href="./css/healthy-recipe-1.css">
<link rel="stylesheet" href="./css/navbar&footer.css"> 
    <title>Egg, Spinach & Cheddar Breakfast Sandwich</title>
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
 
  <!-- main section starts-->
  <div class="bodyy">

<div class="ExpertArticle-1-image" data-aos="fade-down" data-aos-duration="2000">
    <img src="./resources/img/breakfast-sandwich.jpg" class="ExpertArticle-1-image-child">

</div>

<div class="miniheading" data-aos="fade-up" data-aos-duration="1500">
    <h1 class="miniheading-h1">Egg, Spinach & Cheddar Breakfast Sandwich</h1>
    <p class="miniheading-p">Fill yourself up with this ultra-quick egg, spinach and Cheddar breakfast sandwich. It's not only fast, but there's a good chance you already have the ingredients on hand that you'll need to pull it together, so you can skip a trip to the store before your busy workweek.</p>
    <p class="miniheading-readtime">Active Time:  10 minutes &nbsp;||&nbsp;Cook:  10 minutes ||&nbsp; Cuisine: American || &nbsp; Difficulty: Easy</p>
</div>



<div class="Expert-Article-1-Description">
    <h1 class="article-h1" data-aos="fade-up" data-aos-duration="1500">Ingredients</h1>
    <div class="ingredients-parent">
    <p class="parano-1" data-aos="fade-up" data-aos-duration="1200"> 1.&nbsp;2 teaspoons extra-virgin olive oil, divided</p>
    <p class="parano-1" data-aos="fade-up" data-aos-duration="1200"> 2.&nbsp;2 cups coarsely chopped baby spinach</p>
    <p class="parano-1" data-aos="fade-up" data-aos-duration="1200"> 3.&nbsp;½ teaspoon garlic powder</p>
    <p class="parano-1" data-aos="fade-up" data-aos-duration="1200"> 4.&nbsp;¼ teaspoon ground pepper, divided</p>
    <p class="parano-1" data-aos="fade-up" data-aos-duration="1200"> 5.&nbsp; ⅛ teaspoon salt</p>
    <p class="parano-1" data-aos="fade-up" data-aos-duration="1200"> 6.&nbsp;1 large egg</p>
    <p class="parano-1" data-aos="fade-up" data-aos-duration="1200"> 7.&nbsp;1 whole-grain English muffin, toasted</p>
    <p class="parano-1" data-aos="fade-up" data-aos-duration="1200"> 8.&nbsp;2 tablespoons shredded extra-sharp Cheddar cheese </p>
    
</div> 
  

<h1 class="article-h1" id="steps" data-aos="fade-up" data-aos-duration="1500">Steps</h1>

<!-- <div class="steps-details"> -->
    <p class="parano-1 parano-2" data-aos="fade-up" data-aos-duration="1200">1. Heat 1 teaspoon oil in a medium nonstick skillet over medium heat. Add spinach, garlic powder, 1/8 teaspoon pepper and salt; cook, stirring, until the spinach is wilted, 1 to 2 minutes. Transfer to a plate. </p>
    <p class="parano-1 parano-2" data-aos="fade-up" data-aos-duration="1200">2. Add the remaining 1 teaspoon oil to the pan. Break egg into the pan; sprinkle with the remaining 1/8 teaspoon pepper. Cook until set on the bottom, 1 to 2 minutes. Break the yolk, then flip the egg and cook, undisturbed, until set, about 1 minute more. </p>
    <p class="parano-1 parano-2" data-aos="fade-up" data-aos-duration="1200">3. Place the spinach on an English muffin half. Sprinkle with cheese, then top with the fried egg and remaining muffin half. </p>
    
<!-- </div> -->

    <h1 class="article-h1" id="nutrition"    data-aos="fade-up" data-aos-duration="1500">Nutrition Information</h1>

    <div class="nutrients-details">
        <div class="nutrients-details-mini" data-aos="fade-up" data-aos-duration="1200">Energy: 368 kcal</div>
        <div class="nutrients-details-mini" data-aos="fade-up" data-aos-duration="1200">Saturated Fat: 6g</div>
        <div class="nutrients-details-mini" data-aos="fade-up" data-aos-duration="1200">Protein: 17g</div>
        <div class="nutrients-details-mini" data-aos="fade-up" data-aos-duration="1200">Fat, Total: 20g</div>
        <div class="nutrients-details-mini" data-aos="fade-up" data-aos-duration="1200">Carbs, Total: 31g</div>
        <div class="nutrients-details-mini" data-aos="fade-up" data-aos-duration="1200">Sugars: 6g</div>
        <div class="nutrients-details-mini" data-aos="fade-up" data-aos-duration="1200">Dietary Fibre: 6g</div>
        <div class="nutrients-details-mini" data-aos="fade-up" data-aos-duration="1200">Sodium: 743mg</div>
    </div>

    <!-- <p class="parano-1" data-aos="fade-up" data-aos-duration="1200"></p> -->
  
</div>
</div>
    
 <!-- main section ends -->


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