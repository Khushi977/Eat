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
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/navbar&footer.css">

    <title>Home</title>
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
                      <a href="#community_parent2" class="dropdown__link">Community</a>
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
               <li><a href="#faqs" class="nav__link">FAQs</a></li>
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

   <!-- ==============home section starts========== -->
    <section class="home" id="home">
      <div class="content" data-aos="fade-up"
      data-aos-duration="2000">
       <h1>eat easy <br>breathe easy</h1>
        <h2>Discover EatEase, <br>your personalized diet planner for a journey to a healthier, happier you.</h2>
      
      </div>
    </section>


     <!--===================services section starts =================-->
    <section class="services" id="services">

        <video src="./resources/img/vdo1.mp4" autoplay muted loop     ></video>
      <div class="heading" data-aos="zoom-out-down" data-aos-duration="500"><h1 >our Programmes</h1></div>
      <div class="box-container" >

        <!--================first box================-->

          <div class="box" data-aos="fade-right"
        
          data-aos-offset="500"
          data-aos-duration="500">

              <div class="icon">
                  <img src="./resources/img/weight-scale.gif" alt="">
              </div>
              <div class="content">
                  <h3>check  your bmi score</h3>
                  <div class="line"></div>
                  <p>Introducing to our BMI calculator-a valuable tool for understanding your BMI</p>
                  <ul class="service-check-box-remove">
                      <li><i class="fas fa-check"></i>Measure,assess,improve,thrive</li>
                      <li><i class="fas fa-check"></i>weighht-to-height-ratio</li>
                      <li><i class="fas fa-check"></i>obesity risk assessment tool</li>
                      <li><i class="fas fa-check"></i>health  status weight measure</li>
                  </ul>
              </div>

          </div>

          <!--===============second box=================-->
          <div class="box" data-aos="fade-zoom-in"
          data-aos-easing="ease-in-back"
          data-aos-delay="400"
          data-aos-offset="0">

            <div class="icon">
                <img src="./resources/img/checklis.gif" alt="">
            </div>
            <div class="content">
                <h3>arranging a nutrition plan</h3>
                <div class="line"></div>
                <p>Discover a personalized diet chart featuring a diverse array of nutritious options</p>
                <ul class="service-check-box-remove">
                    <li><i class="fas fa-check"></i>maintain a healthy lifestyle</li>
                    <li><i class="fas fa-check"></i>mindful eating and awareness</li>
                    <li><i class="fas fa-check"></i>hydration and smart beverages</li>
                    <li><i class="fas fa-check"></i>nutrient-dense food choices</li>
                </ul>
            </div>
            </div>

            <!--===============third box================-->
            <div class="box box-3" data-aos="fade-left"
          
            data-aos-offset="500"
            data-aos-duration="500">

              <div class="icon">
                  <img src="./resources/img/overpopulation.gif" alt="">
              </div>
              <div class="content">
                  <h3>get a community hub</h3>
                  <div class="line"></div>
                  <p>engage with our community and experience hub of collective knowledge,mutual support</p>
                  <ul class="service-check-box-remove">
                      <li><i class="fas fa-check"></i>connection in a shared space </li>
                      <li><i class="fas fa-check"></i>social interaction and common goal</li>
                      <li><i class="fas fa-check"></i>sharing inspirational journey</li>
                      <li><i class="fas fa-check"></i>advancing together to progress</li>
                  </ul>
              </div>

          </div>

      </div>

  </section>
   <!--=========================services section ends===========================--> 



  <!--=============check your BMI=============-->
  <section class="bmi_home_section">
    <div class= "bmi_container">   
      <div class="bmi_left"data-aos="fade-up-right" data-aos-delay="500">
            <h2><span>
              <span class="bmi_highlight">Tailor-made programs</span></span>
              that<br>perfectly fit your health and<br>fitness requirement
            </h2>
          <a href="bmicalculator.jsp" class="bmi_btn ">Check Your BMI</a>
        </div>
        <div class="bmi_right" data-aos="fade-up-left" data-aos-delay="300">
            <div class="bmi_right-image">
                <img src="./resources/img/bmi-home-removebg.png" alt="" height="700">
            </div>
        </div>
    </div>
  </section>


  <!--===========DOCTOR APPOITMENT============-->
  <section class="doctor-home-section" id="appoint">
    <div class="doc__container">
      <div class="doc_left" data-aos="zoom-left" data-aos-duration="500" data-aos-delay="900">
          <img src="./resources/img/doctor-removebg.png" alt="">
      </div>

      <div class="doc_right">
        <h2>Scheduled a consultation with a dedicated health expert,
          <br>Stay in control of your health journey,scheduling at <br>your convenience! <br>
          Don't wait-- take charge of your health today.
        </h2>
          <a href="appointment1.jsp" class="doc-btn">Book Now</a>
      </div>


    </div>
  </section>








<!--================healthy living=====================-->
  <section class="healthy-section" id="healthy-section">
   <div class="healthy-main-div">
    <div class="healthy-parent">
     <div class="unit-block articles" data-aos="fade-up-right" data-aos-duration="900" data-aos-delay="300">
       <div class="unit-content reversed mc-dc">
         <h2 class="unit-title">Wellness Articles</h2>
         <p class="unit-body">Research-backed articles to help you care for your
           body and mind.</p>
         <div class="unit-link">
             <a class="link" href="expertarticle.jsp">Learn from Experts</a>
         </div>
       </div>
     
     </div>
     <div class="unit-block recipes" data-aos="fade-up-left" data-aos-duration="900" data-aos-delay="300">
       <div class="unit-content mc-dc">
         <h2 class="unit-title">Healthy Recipes</h2>
         <p class="unit-body">Fuel your day with recipes by Registered Dietitians
           and professional chefs.</p>
           <div class="unit-link">
               <a class="link" href="healthy-recipe.jsp">Find a Recipe</a>
            </div>
          </div>
     </div>
    </div>
     

    <div id="community_parent2" data-aos="zoom-in-up" data-aos-duration="700" data-aos-delay="300">
     <div class="community-unit">
       <div class="unit-content mc-dc">
         <h2 class="unit-title comm">Supportive Community</h2>
         <p class="unit-body">Stay motivated and engaged with a little help from
           a supportive community of other members.</p>

         <div class="unit-link">
           <a class="link member-link" href="https://chat.whatsapp.com/EFFYru4tsQdER3jcGOYisV" target="_blank" >Become a Member</a>
         </div>
        </div>
        <div class="comm_list" >
        <li>Witness Inspiring Stories.</li>
        <li>Share Your Journey.</li>
       <li> Develop Healthy Habits.</li>
       </div>

     </div>
    </div>
 
   </div>
 </section>



<!--===========================================FAQS SECTION======================================-->
 <section class="faqs" id="faqs" data-aos="fade-up">
  <h2 data-aos="fade-down"
    data-aos-easing="linear"
    data-aos-duration="1500">Frequently Asked Questions</h2>
  <div class="container faqs_container">
      <article class="faq" data-aos="fade-right"
      data-aos-offset="300"
      data-aos-easing="ease-in-sine">
          <div class="faq_icon"><i class="uil uil-plus"></i></div>
          <div class="question_answer">
              <h4>How can I check my BMI on Eatease?</h4>
              <p>
                Checking your BMI on Eatease is simple. Just navigate to the BMI calculator on our website,
                  enter your height and weight details, and the system will generate your Body Mass Index along with 
                  a categorization (underweight, normal weight, overweight, or obesity).  
              </p>
          </div>
      </article>

      <article class="faq" data-aos="fade-left"
      data-aos-offset="300"
      data-aos-easing="ease-in-sine">
          <div class="faq_icon"><i class="uil uil-plus"></i></div>
          <div class="question_answer">
              <h4>What do I do after knowing my BMI category?</h4>
              <p>
               Once you know your BMI category, Eatease provides you with a 
                  personalized diet plan tailored to your specific needs.
                  Whether you're looking to gain, maintain, or lose weight, 
                  our plans are designed to help you achieve your health goals.   
              </p>
          </div>
      </article>

      <article class="faq" data-aos="fade-right"
      data-aos-offset="300"
      data-aos-easing="ease-in-sine">
          <div class="faq_icon"><i class="uil uil-plus"></i></div>
          <div class="question_answer">
              <h4>Can I book appointments with nutritionists or dieticians through Eatease?</h4>
              <p>
                Absolutely! Eatease allows you to book appointments with experienced
                  nutritionists or dieticians directly through our platform.
                  This way, you can receive professional guidance and support
                  on your journey to better health.   
              </p>
          </div>
      </article>

      <article class="faq" data-aos="fade-left"
      data-aos-offset="300"
      data-aos-easing="ease-in-sine">
          <div class="faq_icon"><i class="uil uil-plus"></i></div>
          <div class="question_answer">
              <h4>Are the diet plans provided by Eatease suitable for vegetarians or
                  nonvegetarians?</h4>
              <p>
                 Yes,we have 3 options for every meal (breakfast,lunch,dinner).
                There we have veg as well as non veg also.You can choose
                any of the 3 options.
              </p>
          </div>
      </article>

      
  </div>

</section>

<!--faq ends-->



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
               <li><a href="#services">Programs</a></li>
               <li><a href="#appoint">Appoiment</a></li>
               <li><a href="#healthy-section">Healthy Living</a></li>
               <li><a href="about_us.jsp">About</a></li>
               <li><a href="#faqs">FAQs</a></li>
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

          
      <!-- aos data animation -->
 <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
 <script>
   AOS.init();
 </script>

 <script src="./js/main.js"></script>

</body>
</html>
    
