<%@page import="com.tech.blog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="./css/loginsignup.css">
        <link rel="Shortcut icon" href="./resources/img/eat1.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">


        <title>Login-SignUp</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


        <%
            Message msg = (Message) session.getAttribute("msg");
            if (msg != null) {
                if (msg.getContent().equals("Logout Successfully...")) {
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

        <div id="page" class="site login-show">

            <div class="container">
                <div class="wrapper"> 
                    <div class="login">
                        <div class="content-heading">
                            <div class="y-style">
                                <div class="logo"><a href="#"><span></span></a></div>
                                <div class="welcome">
                                    <h2>Welcome  <br> Back!</h2>
                                    <p>Get Started</p>
                                </div>
                            </div>
                        </div>
                        <div class="content-form">
                            <div class="y-style">
                                <form id="log-in-form" action="loginServlet" method="get">

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




                                    <p>
                                        <label>Email</label>
                                        <input type="email" name="loginemail" placeholder="Enter Your Email" required
                                               pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" >
                                    </p>
                                    <p>
                                        <label>Password</label>
                                        <input type="password" name="loginpass" placeholder="Enter Your Password" required
                                               pattern=".{8,}" title="Atleast 8 character">
                                    </p>
                                    <!-- <p class="check">
                                        <input type="checkbox" id="remember" >
                                     <label for="remember">Remember Me </label>
                                </p> -->
                                    <p class="forgot"><a href="forget_password.jsp">Forgot Password?</a></p>
                                    <p>
                                        <button type="submit">Login</button>
                                    </p>
                                </form>

                                <div class="after-form">
                                    <p>Dont't have an account?</p>
                                    <a href="#" class="t-signup">Signup</a>
                                </div>
                            </div>
                        </div>
                    </div> <!--Login form-->


                    <!--===============SIGNUP==============-->
                    <div class="signup">
                        <div class="content-heading">
                            <div class="y-style">
                                <div class="logo"><a href="#"><span></span></a></div>
                                <div class="welcome">
                                    <h2>Sign Up <br>Now</h2>
                                    <p>Ready to be the member </p>
                                </div>
                            </div>
                        </div>
                        <div class="content-form">
                            <div class="y-style">
                                <!--<form id="sign-up-frm"    action="SignupServelet" method="POST">-->
                                <form id="sign-up-frm" action="http://localhost:8080/EatEase/SignupServelet" method="POST">

                                    <p>
                                        <label>User Name</label>
                                        <input type="text" name="signname" placeholder="FullName" required
                                               pattern="[a-zA-Z\s]+"
                                               oninvalid="this.setCustomValidity('Enter Your Name')"
                                               oninput="this.setCustomValidity('')">
                                    </p>
                                    <p>
                                        <label>Email</label>
                                        <input type="email" name="signemail" placeholder="Enter Your Email" required
                                               pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$">
                                    </p>
                                    <p>
                                        <label>Password</label>
                                        <input type="password" name="signpass" placeholder="Enter Password" required
                                               pattern=".{8,}" title="Atleast 8 character">
                                    </p>


                                    <p>
                                        <label for="security-question">Security Question</label><br>
                                        <select id="security-question" name="signqs" style="width: 320px; height: 35px; font-size: 15px; border-radius: 8px; border-color: #d0d4ed" required>
                                            <option value="" selected disabled>Select</option>
                                            <option>What is your pet name?</option>
                                            <option >What is your favorite food?</option>
                                            <option >What is your surname?</option>
                                            <option>What is your age?</option>
                                        </select>
                                    </p>



                                    <p style="margin-top: 20px">
                                        <label for="answer">Answer</label><br>
                                        <textarea id="answer" name="signans" rows="3" cols="42" style="font-size: 12px; border-color: #d0d4ed; border-radius: 8px;" required></textarea>
                                    </p>

          <!--                               <p>
                                                                       <input type="checkbox" id="terms" >
                                                                    <label for="terms">I agree to all the statements included in <a href="#" Terms of Use></a> </label>
                                                               </p>-->

                                    <br>
                                    <div style="display: none" id="loader">
                                        <span class="fa-solid fa-rotate-right fa-spin fa-xl fa-4x text-center" style="color: #16356a; "></span>&nbsp;
                                        <span>Please Wait...</span></div>

                                    <p>
                                        <button type="submit" id="sign-submit-btn">Sign up</button>
                                    </p>
                                </form>
                                <!-- <div class="social">
                                    <p><span>Or sign up with</span></p>
                                    <ul>
                                        <li><a href="#" class="google"><ion-icon name="logo-google"></ion-icon></a></li>
                                        <li><a href="#" class="facebook"><ion-icon name="logo-facebook"></ion-icon></a></li>
                                        <li><a href="#" class="twitter"><ion-icon name="logo-twitter"></ion-icon></a></li>
                                    </ul>
                                </div> -->

                                <div class="after-form">
                                    <p>Already have an account?</p>
                                    <a href="#" class="t-login">Login here</a>
                                </div>
                            </div>
                        </div>
                    </div> <!--signup -->
                </div>
            </div>
        </div>



        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script src="./js/loginsignjs.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script> $(document).ready(function () {
                console.log("loaded......");

                $('#sign-up-frm').on('submit', function (event) {

                    event.preventDefault();

                    let form = new FormData(this);

                    $("#sign-submit-btn").hide();
                    $("#loader").show();


                    //send signup servlet:
                    $.ajax({
                        url: "SignupServelet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $("#sign-submit-btn").show();
                            $("#loader").hide();
                            if (data.trim() === 'done') {
                                swal("Registered Successfully..We are redirecting you to login page")
                                        .then((value) => {

                                            window.location = "signup.jsp";
                                        });
                            } else
                            {

                                swal(data);



                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $("#sign-submit-btn").show();
                            $("#loader").hide();
                            swal("Something Went Wrong..try again");
    //                     console.log(jqXHR);
                        },
                        processData: false,
                        contentType: false

                    });


                });


            });

        </script>  
    </body>
</html>