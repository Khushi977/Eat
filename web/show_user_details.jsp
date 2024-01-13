
<%@page import="com.tech.blog.entities.Message"%>
<%@page import="com.tech.blog.entities.User" %>
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
        <link rel="stylesheet" href="./css/show_user_details.css">
        <link rel="stylesheet" href="./css/navbar&footer.css">

        <title>User Details</title>
        <%
            Message msg = (Message) session.getAttribute("msg");
            if (msg != null) {
                if (msg.getContent().equals("Details updated to database")) {
        %>
        <style>
            /* Remove white background for form elements */
            .alert {
                color: green;
                font-size: 1.2rem;
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
                font-size: 1.2rem;
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


        <!--navbar ends here -->







        <!-- main section starts here -->



        <div class="user-details-table" id="user-detail-tb" >

            <img src="resources/img/user-icon.png" id="user-profile-icon-image" >




            <h1><%= user.getUNAME()%></h1>

            <div id="details-tb">

                <table>

                    <tr>
                        <td>User Name&nbsp;:</td>
                        <td style="text-transform: none"><%= user.getUNAME()%></td>

                    </tr>
                    <tr>
                        <td>User Email&nbsp;:</td>
                        <td style="text-transform: none"><%= user.getUEMAIL()%></td>

                    </tr>
                    <tr>
                        <td>Password&nbsp;:</td>
                        <td style="text-transform: none"><%= user.getUPASSWORD()%></td>
                    </tr>

                    <tr>
                        <td>Security Question&nbsp;:</td>
                        <td style="text-transform: none"><%= user.getUQUESTION()%></td>

                    </tr>

                    <tr>
                        <td>Answer&nbsp;:</td>
                        <td style="text-transform: none"><%= user.getUANSWER()%></td>

                    </tr>


                </table>
            </div>


            <!--form editing starts here-->

            <div id="after-edit-user-profile" style="display: none; margin-top: 5%;">
                
                
                
                
                <h2 id="edit-carefully" style="font-size: 30px; color: red">Please edit carefully...</h2>
                
                   <!-- Check if there is a message and display the alert -->

                                    <%
   //      Message msg = (Message) session.getAttribute("msg");
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

                
                
                <form action="EditServlet" method="POST">
                    <table style="margin-top:30px">
                        <tr>
                            <td>User Name&nbsp;:</td>
                            <td> <input type="text" name="editable_name" value="<%= user.getUNAME()%>" style="text-transform: none;height: 50px ; font-size: 20px"> </td>

                        </tr>
                        <tr>
                            <td>User Email&nbsp;:</td>
                            <td style="text-transform: none"><%= user.getUEMAIL()%></td>
                    <!--    <td> <input type="email" name="editable_email" value="<%= user.getUEMAIL()%>" style="text-transform: none; height: 50px ; font-size: 20px"> </td>-->

                        </tr>
                        <tr>
                            <td>Password&nbsp;:</td>
                            <td><input type="password" name="editable_password" value="<%= user.getUPASSWORD()%>" style="text-transform: none;height: 50px ; font-size: 20px"></td>
                        </tr> 



                        <tr>
                            <td>Security Question&nbsp;:</td>
                            <td> <select id="security-question" name="editable_qs" style="width: 320px; height: 35px; font-size: 15px; border-radius: 8px; border-color: #d0d4ed" required>
                                    <option value="" disabled>Select</option>
                                    <option value="What is your pet name?" <%= user.getUQUESTION().equals("What is your pet name?") ? "selected" : ""%>>What is your pet name?</option>
                                    <option value="What is your favorite food?" <%= user.getUQUESTION().equals("What is your favorite food?") ? "selected" : ""%>>What is your favorite food?</option>
                                    <option value="What is your surname?" <%= user.getUQUESTION().equals("What is your surname?") ? "selected" : ""%>>What is your surname?</option>
                                    <option value="What is your age?" <%= user.getUQUESTION().equals("What is your age?") ? "selected" : ""%>>What is your age?</option>
                                </select>
                            </td>
                        </tr>



                        <tr>
                            <td>Answer&nbsp;:</td>
                            <td><textarea cols="30" rows="4" name="editable_answer"  style="text-transform: none;height: 50px ; font-size: 20px"><%= user.getUANSWER()%></textarea></td>
                        </tr> 

                    </table>  
                    <button type="submit" id="user-profile-save-changes">SAVE CHANGES</button>
                </form>

            </div>

            <!--form editing ends here-->


            <!--edit and save changes buttons starts here-->

            <div class="user-profile-details-edit-btn" id="user-profile-details-edt-button">

                <button type="submit" id="user-profile-edit-option">EDIT</button>



            </div>
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


        <!-- aos data animation -->

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

        <script>

            $(document).ready(function () {
                let editStatus = false;
  //           alert("testing");   

                $('#user-profile-edit-option').click(function () {


  //                alert("edit button clicked");
                    if (editStatus == false) {

                        $('#details-tb').hide();
                        $('#after-edit-user-profile').show();
                        editStatus = true;
                        $(this).text('BACK');


                    } else {

                        $('#details-tb').show();
                        $('#after-edit-user-profile').hide();
                        editStatus = false;
                        $(this).text('EDIT');

                    }

                });






            });


        </script>


        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script>
                 AOS.init();
        </script>

        <script src="./js/main.js"></script>


    </body>
</html>



