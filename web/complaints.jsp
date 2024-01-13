<%@page import="com.tech.blog.entities.User"%>
<%@page import="com.tech.blog.entities.Message"%>
<%@page errorPage="error_page.jsp" %>
<%
    User user = (User) session.getAttribute("currentUser");

    if (user == null) {
        response.sendRedirect("signup.jsp");
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
 
   <!-- Fontawesome CDN Link -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />

<link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.6/css/unicons.css">
    <link rel="stylesheet" href="./css/complaints.css">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/navbar&footer.css">
<link rel="Shortcut icon" href="./resources/img/eat1.png">
<title>Complaints </title>
    
   
        <%
            Message msg = (Message) session.getAttribute("msg");
            if (msg != null) {
                if (msg.getContent().equals("Your complaints sent successfully...")) {
        %>
        <style>
            /* Remove white background for form elements */
            .alert {
                color: green;
                font-size: 2rem;
                
            }

            /* Adjust other form element styles as needed */
        </style>
        <%
        } else {
        %>
        <style>
            /* Remove white background for form elements */
            .alert {
                color: red;
                font-size: 2rem;
            }

            /* Adjust other form element styles as needed */
        </style>
        <%
                }
            }
        %>


         

    
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
     
     <!--header ends here-->
     
     <!--main section starts here-->
     
   <div id="parentt">
       <form action="Complaints" method="POST">
            <h1>COMPLAINTS PAGE</h1>
            <%
         
                                        if (msg != null) {
                                    %>
                                    <div class="alert <%= msg.getCssClass()%>" role="alert">
                                        <%= msg.getContent()%>
                                    </div>
                                    <br>
                                    <%
                                            // Remove the message from the session after displaying it
                                            session.removeAttribute("msg");
                                        }
                                    %>
            
            
            <label for="uemail1">Email:&nbsp;</label>
            <input type="email" id="uemail1" name="c-email" required pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" placeholder="Enter your email here"style="font-size: 15px; height: 30px; width:330px; text-transform: none" ><br><br>


            <label for="issue">Select Issue:&nbsp;</label>
            <select id="issue" name="c-issue" required style="font-size: 15px;height: 30px;">
                <option value="" selected disabled>Select</option>
                <option>Their is  problem with the doctor</option>
                <option>I am not satisfied</option>
                <option>Others</option>
            </select> <br> <br>
            
            <textarea name="c-desc"cols="50" rows="10" required placeholder="Write about your complaint..."></textarea><br>
            <button type="submit" id="green">SUBMIT</button>
            <button type="reset" id="black">RESET</button>
        </form>
    </div>
     
     <!--main section ends here-->
     
     <!--footer starts here-->
     
     
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

<script src="./js/main.js"></script>
     
     
     
     
    </body>
</html>