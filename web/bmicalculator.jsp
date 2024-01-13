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
     <!--============Using-Font-Awesome=====================-->
     <link
     rel="stylesheet"
     href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
     integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
     crossorigin="anonymous"
   />
     <link rel="Shortcut icon" href="./resources/img/eat1.png">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
   <!--=============== REMIXICONS ===============-->
<link href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css" rel="stylesheet">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.6/css/unicons.css">

    <link rel="stylesheet" href="./css/bmi.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/navbar&footer.css">
    
    

    <title>BMI</title>
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
   
      <!--===============header section ends========= -->

      <!--===========================bmi section========================-->
    <div class="body_container">
        <header class="body-mass-header">
          <div class="body_container">
            <div class="body-content">
              
              <h1>Body Mass Index Calculator</h1>
              <p>
                Better understand your weight in relation to your height using our
                body mass index (BM) calculator. While BMI is not the sole
                determinant of a healthy weight, it offers a valuable starting point
                to evaluate your overall health and well-being.
              </p>
            </div>
            <div class="calculator">
              <div class="form" id="form">
                <h3>Enter your details below</h3>
                <div class="units">
                  <div class="form-control">
                    <input type="radio" name="input" value="metric" id="metric" class="radio active" checked/>
                    <label for="metric">Metric</label>
                  </div>
                  <div class="form-control">
                    <input type="radio" name="input" value="imperial" id="imperial" class="radio" />
                    <label for="imperial">Imperial</label>
                  </div>
                </div>
                <div class="infos">
                  <div class="metric">
                    <div class="form-control">
                      <label for="height">Height</label>
                      <div class="input-container">
                        <input type="number" id="height" placeholder="0"/>
                        <span class="unit-height" id="unit-height" >cm</span>
                      </div>
                    </div>
                    <div class="form-control">
                      <label for="weight">Weight</label>
                      <div class="input-container">
                        <input type="number"  id="weight" placeholder="0"/>
                        <span class="unit-weight" id="unit-weight">kg</span>
                      </div>
                    </div>
                  </div>
  
                  <div class="imperial">
                    <div class="form-control">
                      <label for="height">Height</label>
                      <div class="container-flex">
                        <div class="input-container">
                          <input type="number" id="feet" class="feet" placeholder="0">
                          <small>ft</small>
                        </div>
                        <div class="input-container">
                          <input type="number" id="inch" class="inch" placeholder="0">
                          <small>in</small>
                        </div>
                      </div>
                    </div>
                    <div class="form-control">
                      <label for="weight">Weight</label>
                      <div class="container-flex">
                        <div class="input-container">
                          <input type="number" id="st" class="st" placeholder="0">
                          <small>st</small>
                        </div>
                        <div class="input-container">
                          <input type="number" id="lbs" class="lbs" placeholder="0">
                          <small>lbs</small>
                        </div>
                      </div>
                    </div>
                  </div>
  
                </div>
              </div>
              <div class="container-result" id="container-result">
                <div class="bmi" id="bmi">
                  <div class="result-heading" id="result-heading">
                    <p>Your BMI is...</p>
                    <div class="result" id="result">23.4</div>
                  </div>
                  <div class="result-text">
                    <p>Your BMI suggests you're  <span id="classification"></span>. Your ideal weight is between  .  <span id="min-weight"></span> - <span id="max-weight"></span></p>
                    <div class="wrapper">
                      <div class="btn-area">
                        
                          <a class="text-btn" href="getdietform.jsp">Get Your diet chart</a>
                      </div>
                  </div>
                  </div>
                </div>
                <div class="welcome-text" id="welcome">
                  <h3>Welcome!</h3>
                  <p>Enter your height and weight and you’ll see your BMI result here</p>
                </div>
              
              </div>
             
            </div>
          </div>

        </header>
        <main>
          <!-- Section explanation -->
          <section class="explanation">
              <img src="./resources/img/pattern-curved-line-left.svg" alt="curve" class="curve-left">
            <div class="image">
                <img src="./resources/img/image-man-eating.webp" alt="man-eating" />
            </div>
            <div class="body-content">
              <h2>What your BMI result means</h2>
              <p>
                A BMI range of 18.5 to 24.9 is considered a 'healthy weight.'
                Maintaining a healthy weight may lower your chances of experiencing
                health issues later on, such as obesity and type 2 diabetes. Aim for
                a nutritious diet with reduced fat and sugar content, incorporating
                ample fruits and vegetables. Additionally, strive for regular
                physical activity, ideally about 30 minutes daily for five days a
                week.
              </p>
            </div>
          </section>
          <!-- Section Habits -->
          <section class="positive-habits">
            <div>
                <img src="./resources/img/icon-eating.svg" alt="eating" />
              <div>
                <h3>Healthy Eating</h3>
                <p>
                  Healthy eating promotes weight control, disease prevention, better
                  digestion, immunity, mental clarity, and mood.
                </p>
              </div>
            </div>
            <div>
                <img src="./resources/img/icon-exercise.svg" alt="exercise" />
              <div>
                <h3>Regular exercise</h3>
                <p>
                  Exercise improves fitness, aids weight control, elevates mood, and
                  reduces disease risk, fostering wellness and longevity.
                </p>
              </div>
            </div>
            <div>
                <img src="./resources/img/icon-sleep.svg" alt="sleep" />
              <div>
                <h3>Adequate sleep</h3>
                <p>
                  Sleep enhances mental clarity, emotional stability, and physical
                  wellness, promoting overall restoration and rejuvenation.
                </p>
              </div>
            </div>
          </section>
          <!-- Section Limitations -->
          <section class="limitations">
              <img src="./resources/img/pattern-curved-line-right.svg" alt="curve" class="curve">
              <div class="limitations-content">
                <h2>Limitations of BMI</h2>
                <p>
                  Although BMI is often a practical indicator of healthy weight, it is
                  not suited for every person. Specific groups should carefully consider
                  their BMI outcomes, and in certain cases, the measurement may not be
                  beneficial to use.
                </p>
              </div>
            <div class="cards">
              <div class="card gender">
                <div class="card-heading">
                    <img src="./resources/img/icon-gender.svg" alt="" />
                  <h4>Gender</h4>
                </div>
                <p>
                  The development and body fat composition of girls and boys vary
                  with age. Consequently, a child's age and gender are considered
                  when evaluating their BMI.
                </p>
              </div>
              <div class="card age">
                <div class="card-heading">
                    <img src="./resources/img/icon-age.svg" alt="" />
                  <h4>Age</h4>
                </div>
                <p>
                  In aging individuals, increased body fat and muscle loss may cause
                  BMI to underestimate body fat content.
                </p>
              </div>
              <div class="card muscle">
                <div class="card-heading">
                    <img src="./resources/img/icon-muscle.svg" alt="" />
                  <h4>Muscle</h4>
                </div>
                <p>
                  BMI may misclassify muscular individuals as overweight or obese,
                  as it doesn't differentiate muscle from fat.
                </p>
              </div>
              <div class="card pregnancy">
                <div class="card-heading">
                    <img src="./resources/img/icon-pregnancy.svg" alt="" />
                  <h4>Pregnancy</h4>
                </div>
                <p>
                  Expectant mothers experience weight gain due to their growing
                  baby. Maintaining a healthy pre-pregnancy BMI is advisable to
                  minimise health risks for both mother and child.
                </p>
              </div>
              <div class="card race">
                <div class="card-heading">
                    <img src="./resources/img/icon-race.svg" alt="" />
                  <h4>Race</h4>
                </div>
                <p>
                  Certain health concerns may affect individuals of some Black and
                  Asian origins at lower BMIs than others. To learn more, it is
                  advised to discuss this with your GP or practice nurse.
                </p>
              </div>
            </div>
          </section>
        </main>
      </div>

     
  
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
 <!--==============================END OF FOOTER================================-->
  
      <script src="./js/bmi.js"></script>
      <script src="./js/main.js"></script>

</body>
</html>
