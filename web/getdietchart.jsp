<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.tech.blog.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- scroll animation link-->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <!--============Using-Font-Awesome=====================-->
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

    <!-- <link rel="stylesheet" href="./css/style.css" /> -->
    <link rel="Shortcut icon" href="images/eat1.png">
    <link rel="stylesheet" href="./css/get-diet-chart.css">
    <link rel="stylesheet" href="./css/navbar&footer.css">


    <title>Get  Diet Chart</title>
  </head>
  <body>
      <!--=============== Navbar start ===============-->
 
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
 



<!-- navbar section ends -->


    <section class="diet-heading-container">
        <div class="top-diet-head">
         <h2>Hello there! <br>  Here is your 7 day meal plan..</h2>
         </div>
     </section>
     
     
     
     <section class="diet-meal" id="diet-meal">
         <h1 class="diet-head">Diet Plan</h1>
     
     <ul class="controls">
     
      <li class="buttons active" data-filter="all">
          <img src="./resources/img/all-diet.gif" alt="">
         <h3>All</h3>
     </li>
     
     <li class="buttons" data-filter="breakfast"> 
         <img src="./resources/img/breakfast-diet.gif" alt="">
         <h3>Breakfast</h3>
     </li>
     <li class="buttons" data-filter="lunch"> 
         <img src="./resources/img/lunch-diet.gif" alt="">
         <h3>Lunch</h3>
     </li>
     <li class="buttons" data-filter="dinner">
         <img src="./resources/img/dinner-diet.gif" alt=""> 
     <h3>Dinner</h3>
     </li>
     
     </ul>


     <!-- table section -->
     

     <div class="table-head-container" style="padding:  0px; 
    margin-top: 10rem;  display: grid;
    gap: 20rem;
    grid-template-columns: repeat(auto-fit, minmax(45rem, 1fr));">
   <div class="breakfast-table" id="breakfast-table">
      <table class="diet-table">
         <thead>
            <tr>
               <th colspan="4">Breakfast</th>
               
            </tr>
         </thead>
         <tbody>
            <tr>
               <td rowspan="2" style="font-weight: bold">DAYS</td>

            </tr>
            <tr>
               <td style="font-weight: bold">Option1</td>
               <td style="font-weight: bold">Option2</td>
               <td style="font-weight: bold">Option3</td>
               
            </tr>
        </tbody>
         <tbody>
             <c:forEach var="user" items="${dietUsers}">
            <tr>
               <td  style="font-size: 20px;">${user.getDAYS()}</td>
               <td style="font-size: 20px;">${user.getBO1()}</td>
               <td style="font-size: 20px;">${user.getBO2()}</td>
               <td style="font-size: 20px;">${user.getBO3()}</td>
             
               
            </tr>
</c:forEach>
           
         </tbody>
      </table>
   </div>

    <!--lunch table--> 
   <div class="lunch-table">
      <table class="diet-table">
         <thead>
            <tr>
               <th colspan="4">Lunch</th>
               
            </tr>
         </thead>
         <tbody>
            <tr>
               <td rowspan="2" style="font-weight: bold">DAYS</td>
               
            </tr>
            
            <tr>
               <td style="font-weight: bold">option1</td>
               <td style="font-weight: bold">option2</td>
               <td style="font-weight: bold">option3</td>
             
            </tr>
            </tbody>
            <tbody>
              <c:forEach var="user" items="${dietUsers}">
            <tr>
               <td style="font-size: 20px;">${user.getDAYS()}</td>
               <td style="font-size: 20px;">${user.getLO1()}</td>
               <td style="font-size: 20px;">${user.getLO2()}</td>
             <td style="font-size: 20px;">${user.getLO3()}</td>
          
               
            </tr>
</c:forEach>
            
         </tbody>
      </table>
      
     </div>

 <!--dinner table--> 

<div class="dinner-table" >
   <table class="diet-table">
      <thead>
         <tr>
            <th colspan="4">Dinner</th>
            
         </tr>
      </thead>
      <tbody>
         <tr>
            <td rowspan="2" style="font-weight: bold">DAYS</td>
            
         </tr>
     
      
         <tr>
            <td style="font-weight: bold">Option1</td>
            <td style="font-weight: bold">Option2</td>
            <td style="font-weight: bold">Option3</td>
           
         </tr>
          </tbody>
          <tbody>
          <c:forEach var="user" items="${dietUsers}">
         <tr>
             <td style="font-size: 20px;">${user.getDAYS()}</td>
            <td style="font-size: 20px;">${user.getDO1()}</td>
            <td style="font-size: 20px;">${user.getDO2()}</td>
            <td style="font-size: 20px;">${user.getDO3()}</td>
     
            
         </tr>
</c:forEach>
         

      </tbody>
   </table>
</div>

</div>
</section>
     



<!--=========feedback==========-->
<section id="newsletter" class="section-p1 section-m1">
   <div class="newstext">
       <h4>Give your feedback</h4>
       <p>"Where healthy meets delicious, making nutritious eating effortlessly
         <span>enjoyable"</span></p>
   </div>
   <div class="form">
       <!-- <input type="text"  placeholder="Your feedback"> -->
       <a href="feedback.jsp" class="normal">Give your feedback </a>
   </div>
</section>


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
           
            data-aos-delay="500"
            >
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
  

  <script>
  
   // Get all buttons
   const buttons = document.querySelectorAll('.buttons');

   // Get all diet tables
   const tables = document.querySelectorAll('.diet-table');

   // Add click event listeners to the buttons
   buttons.forEach(button => {
       button.addEventListener('click', () => {
           // Get the filter value from the clicked button's data-filter attribute
           const filter = button.getAttribute('data-filter');

           // Hide all tables
           tables.forEach(table => {
               table.style.display = 'none';
           });

           // Show the table that matches the filter value
           if (filter === 'all') {
               tables.forEach(table => {
                   table.style.display = 'block';
               });
           } 
           else if (filter === 'breakfast') {
               
               const tableToShow = document.querySelector('.breakfast-table .diet-table');
               if (tableToShow) {
                   tableToShow.style.display = 'table';
                  
                  //  tableToShow.style.margin = '50%';
               }
           } 
           
           else if (filter === 'lunch') {
               const tableToShow = document.querySelector('.lunch-table .diet-table');
               if (tableToShow) {
                   tableToShow.style.display = 'table';
                   
               }
           } else if (filter === 'dinner') {
               const tableToShow = document.querySelector('.dinner-table .diet-table');
               if (tableToShow) {
                   tableToShow.style.display = 'table';
                   
               }
           }

           // Highlight the active button
           buttons.forEach(btn => {
               btn.classList.remove('active');
           });
           button.classList.add('active');
       });
   });
</script>


          
      <!-- aos data animation -->
 <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
 <script>
   AOS.init();
 </script>

<script src="./js/main.js"></script>
<script src="./js/diet.js"></script>
  <!-- jquery cdn link -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </body>
</html>

