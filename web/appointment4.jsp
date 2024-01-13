<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/appointment.css">
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
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" href="./css/navbar&footer.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    
    <title>Dr. Rishika Sharma Appointment</title>
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
         


<!-- main body with doctors details starts here -->


<div class="doctorpicparent0">
 
<div class="doctorpicparent1" data-aos="fade-down" data-aos-duration="1200">
  <div class="doc-profile-image" data-aos="fade-in" data-aos-duration="2500">

      <img src="./resources/img/rishika-sharma.png" class="doctors-image">
  </div>



</div>

<div class="doctorpicparent2" data-aos="fade-down" data-aos-duration="1200">
<h1>Dr. Rishika Sharma</h1>
<div class="reg-verified">
    <span><img src="./resources/img/tick.jpeg" class="green-tick"></span>
<span >Medical Registration Verified</span>
</div>
<div class="qualification">
    <span class="qualification-1"> Qualification :</span>
    <span class="qualification-2"> M.S in Dietetics and Food Management</span>
</div>

<div class="languages">
    <span class="languages-1">Languages :</span>
    <span class="languages-2">English, Hindi , Kannada</span>
</div>
<div class="about">
    <p>  Hi! I am Dr. Rishika Sharma, a dedicated professional with over 7 years of invaluable experience in the field of dietetics and food management. I understand
        that health is not just about what you eat; it's a harmonious balance of mind, body, and spirit. As a goal-oriented dietitian, I specialize in conducting detailed nutrition consultations and crafting personalized meal plans to meet the unique needs and aspirations of each client. </p>
</div>
    
</div>

</div>

<!-- main body with doctors details ends here -->

<!-- call details starts here -->

<div class="calldetails" data-aos="fade-down" data-aos-duration="1200">
    <div class="call-child1">
       <div class="call-child1-1">
        <span class="call-child1-1span"> Audio Call</span>
        <span class="call-child1-1span">Rs 400/-</span>
        </div>

          <div class="call-child1-2">Book an appointment with Dr. Rishika Sharma today for a hassle-free and effective audio call consultation.
          </div>
    </div>





    <div class="call-child2">

        <div class="call-child2-1"> 
             <span class="call-child1-1span"> Video Call</span>
            <span class="call-child1-1span">Rs 500/-</span>
        </div>
        <div class="call-child2-2">Get dedicated high-quality care and ensuring  your well-being. Book an appointment with Dr. Rishika Sharma today

        </div>
         </div>



    <div class="call-child3">
        <div class="call-child3-1">   
              <span class="call-child1-1span"> Text Query (Q&A)</span>
            <span class="call-child1-1span">Rs 250/-</span>
        </div>
        <div class="call-child3-2">Contact me today for reliable and trustworthy medical advice

        </div>
    </div>
</div>

<!-- call details starts here -->


<!-- booking form starts here -->

<div class="parent-div-doctorbookingform" data-aos="fade-up">

    <form action="http://localhost:8080/EatEase/appointment" class="appointmentbooking-form" method="POST">


<div class="child-div-doctorbookingform-inputs">
    <label for="bookingname">Full Name</label>
    <br>
    <input type="text" id="bookingname" class="apbookingform" name="apname" required  placeholder="Enter your name here..." style="text-transform: none;">
    <div id="bookingname-1" class="bookingform-error-div"></div>
</div>

<div class="child-div-doctorbookingform-inputs">
    <label for="bookingemail">Email Address</label>
    <br>
    <input type="email" id="bookingemail" class="apbookingform" name="apemail" required pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$"
           placeholder="Enter your email here..." style="text-transform: none;">
    <div id="bookingemail-1" class="bookingform-error-div"></div>
</div>

<div class="child-div-doctorbookingform-inputs">
    <label for="booking-gender">Gender</label>
    <br>
    <select name="apgender" id="booking-gender" class="apbookingform" required>
         <option value="" selected disabled>Select</option>
        <option>Male</option>
        <option>Female</option>
        <option>Transgender</option>
     </select>
    <div id="booking-gender-1" class="bookingform-error-div"></div>
</div>


<div class="child-div-doctorbookingform-inputs">
    <label for="bookingage">Age</label>
    <br>
    <input type="number" id="bookingage" class="apbookingform" name="apage" required min="1" step="1" placeholder="Enter your age here...">
    <div id="bookingage-1" class="bookingform-error-div"></div>
</div>



<div class="child-div-doctorbookingform-inputs">
    <label for="bookingmobile">Mobile</label>
    <br>
    <input type="number" id="bookingmobile" class="apbookingform" name="apmobile" required placeholder="Add 10 digit mobile number">
    <div id="bookingmobile-1" class="bookingform-error-div"></div>
</div>


<div class="child-div-doctorbookingform-inputs">
    <label for="bookingservicetype">Service Type</label>
    <br>
    <select name="apservicetype" id="bookingservicetype" class="apbookingform" required>
        <option value="" selected disabled>Select</option>
        <option>Audio Call</option>
        <option>Video Call</option>
        <option>Text Query (Q&A)</option>
     </select>
   
    <div id="bookingservicetype-1" class="bookingform-error-div"></div>
</div>



<div class="child-div-doctorbookingform-inputs">
  <label for="bookingdate">Date</label>
  <br>
  <input type="date" id="bookingdate" class="apbookingform" name="apbookingdate" required placeholder="Choose the appointment date...">
  <div id="bookingdate-1" class="bookingform-error-div"></div>
</div>

<div class="child-div-doctorbookingform-inputs">
  <label for="bookingtime">Time Slot</label>
  <br>
  <select name="aptimeslot" id="bookingtime" class="apbookingform" required>
      <option value="" selected disabled>Select</option>
     
      <option>10:30 am</option>
      <option>11:00 am</option>
      <option>11:30 am</option>
      <option>5:30 pm</option>
      <option>6:10 pm</option>
      <option>6:50 pm</option>
      <option>7:30 pm</option>
      <option>8:30 pm</option>
   </select>
 
  <div id="bookingtime-1" class="bookingform-error-div"></div>
</div>

<input type="hidden" name="doctorName" value="Dr.Rishika Sharma">

</div>
<div class="apbooking-confirmation-btn" data-aos="fade" >
<button type="submit" class="confirmandpay">Confirm & Pay</button><span class="imp-btn">* No refunds provided</span>
</div>
</form>
<!-- booking form ends here -->




<!-- virtual doctor accross india starts here-->

<div class="virtualdoctor-parent" data-aos="fade-in" data-aos-duration="1600">
<h1 class="virtual-doc-heading">Our Virtual Doctors Accross India</h1>
<div class="virtualdoctor-child">


  <div class="doctorcard-row1-1">  <!-- row 1 start here -->

<div class="doctorcard-row1" data-aos="fade-up">
  <div class="doccard-row1-firstbox-image" >

      <img src="./resources/img/gents.jpg" class="doc-cards-image">
  </div>
  <div class="doctorname-in-doctorcard">Dr. Rajesh Desouza</div>
<p class="docdegree-in-doctorcard">
  RD in Nutritional Medicine
</p>
<p class="docabout-in-doctorcard">
  Hello, I am Dr. Rajesh Desouza, a stalwart in the field of nutritional medicine with more than two decades of dedicated service. My journey as a nutrition expert... 
  <!-- has been a remarkable odyssey, driven by an unyielding passion for promoting health and well-being through dietary excellence. With over 20 years of hands-on experience, I have had the privilege of guiding individuals from all walks of life toward a healthier, more vibrant existence. -->
  
</p>
<button class="docbooking-btn-in-doctorcard"><a href="appointment1.jsp" class="booking-from-card" target="_blank">Book</a></button>
</div>
<div class="doctorcard-row1" data-aos="fade-up">
  <div class="doccard-row1-secondbox-image" >

      <img src="./resources/img/lady.png" class="doc-cards-image">
  </div>
  <div class="doctorname-in-doctorcard">Dr. Payel Paul</div>
  <p class="docdegree-in-doctorcard">
    Ph.D. in Clinical Nutrition
  </p>
  <p class="docabout-in-doctorcard">
    Hello, I am Dr. Payel Paul, an expert in the realm of clinical nutrition with over a decade of invaluable experience. My journey in the field of nutrition With more than 10 years...
    <!-- of hands-on experience, I have had the privilege of guiding countless individuals on their paths to better health. My expertise including weight management, chronic diseases, digestive disorders, and overall well-being.  -->
  </p>
  <button class="docbooking-btn-in-doctorcard"><a href="appointment2.jsp" class="booking-from-card" target="_blank">Book</a></button>
</div>
<div class="doctorcard-row1" data-aos="fade-up">
  <div class="doccard-row1-thirdbox-image" >

      <img src="./resources/img/Rujuta-Diwekar-1.png" class="doc-cards-image">
  </div>
  <div class="doctorname-in-doctorcard">Dr. Rujuta Diwekar</div>
  <p class="docdegree-in-doctorcard">
    RD in Nutritional Medicine
  </p>
  <p class="docabout-in-doctorcard">
    Hello, I am Dr. Rujuta Diwekar, a trailblazer in the realm of nutritional medicine with a rich tapestry of 15+ years in the field. My journey as a dedicated nutrition expert... 
    <!-- has been one of passion, precision, and profound transformations.My academic prowess includes earning a coveted degree in RD (Registered Dietitian) in Nutritional Medicine. With over 15 years of professional experience, I've had the privilege of accompanying individuals on their transformative health journeys.  -->
    
  </p>
  <button class="docbooking-btn-in-doctorcard"><a href="appointment3.jsp" class="booking-from-card" target="_blank">Book</a></button>
</div>

</div>
<!-- row 1 ends here -->





<div class="doctorcard-row2-2">  <!-- row 2 start here -->

<div class="doctorcard-row2" data-aos="fade-up">
   <div class="doccard-row2-firstbox-image" >
       <img src="./resources/img/rishika-sharma.png" class="doc-cards-image">
    </div>

    <div class="doctorname-in-doctorcard">Dr. Rishika Sharma</div>
    <p class="docdegree-in-doctorcard">
      M.S in Dietetics and Food Management
    </p>
    <p class="docabout-in-doctorcard">
     
      Hi! I am Dr. Rishika Sharma, a dedicated professional with over 7 years of invaluable experience in the field of dietetics and food management. I understand... 
      <!-- that health is not just about what you eat; it's a harmonious balance of mind, body, and spirit. As a goal-oriented dietitian, I specialize in conducting detailed nutrition consultations and crafting personalized meal plans to meet the unique needs and aspirations of each client. -->
    </p>
    <button class="docbooking-btn-in-doctorcard"><a href="appointment4.jsp" class="booking-from-card" target="_blank">Book</a></button>
</div>





<div class="doctorcard-row2" data-aos="fade-up">
  <div class="doccard-row2-secondbox-image" >
      <img src="./resources/img/doc4.jpg" class="doc-cards-image">
  </div> 
   <div class="doctorname-in-doctorcard">Dr. Raghab Jaiswal</div>
   <p class="docdegree-in-doctorcard">
    M.D in Nutritional Medicine
  </p>
  <p class="docabout-in-doctorcard">
    Hello, I am Dr. Raghab Jaiswal, a distinguished figure in the world of nutritional medicine, bringing two decades of commitment to the art and science of nutrition...
    <!-- With two decades of experience, my expertise extends across a broad spectrum of nutritional domains.Whether you seek guidance for weight management, dietary adjustments for specific health conditions, or simply a more balanced and vibrant lifestyle, I possess the knowledge and skillset to guide you effectively.  -->
      
  </p>
  <button class="docbooking-btn-in-doctorcard"><a href="appointment5.jsp" class="booking-from-card" target="_blank">Book</a></button>
</div>

<div class="doctorcard-row2" data-aos="fade-up">
  <div class="doccard-row2-thirdbox-image" >
      <img src="./resources/img/OIP.jpeg" class="doc-cards-image">
  </div>
   <div class="doctorname-in-doctorcard">Dr. Madhupriya Sengupta</div>
   <p class="docdegree-in-doctorcard">
    M.Sc in Clinical Nutrition and Dietetics
  </p>
  <p class="docabout-in-doctorcard">
     
    Hi! I am Dr. Madhupriya Sengupta, a dedicated healthcare professional with over 7 years of extensive experience in the field of Clinical Nutrition and Dietetics. My journey...
    <!-- in the world of nutrition has been driven by a profound passion for helping individuals achieve their health and wellness goals through tailored dietary solutions.   -->
  </p>
  <button class="docbooking-btn-in-doctorcard"><a href="appointment6.jsp" class="booking-from-card" target="_blank">Book</a></button>
</div>
<!-- row 2 ends here -->

</div>

</div>
</div>



<!-- virtual doctor accross india ends here-->

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
 <script>
     
 
    $(document).ready(function(){
        var dtToday = new Date();
        var month = dtToday.getMonth() + 1;
        var day = dtToday.getDate();
        var year = dtToday.getFullYear();

        if (month < 10) {
            month = '0' + month.toString();
        }
        if (day < 10) {
            day = '0' + day.toString();
        }

        var maxDate = year + '-' + month + '-' + day;
        $('#bookingdate').attr('min', maxDate);
    });


</script>

     
   

 <script src="./js/main.js"></script>
<!--footer section-->


</body>
</html>