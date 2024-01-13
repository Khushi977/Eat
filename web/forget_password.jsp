<%@page import="com.tech.blog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./css/forgot.css">
        <link rel="Shortcut icon" href="./resources/img/forgot-password-icon-14_1.png">
        <title>Forgot Password</title>
        
        
        <%
            Message msg = (Message) session.getAttribute("msg");
            if (msg != null) {
                if (msg.getContent().equals("OTP sent to your email..")) {
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
 

        <div class="forgot-form">
            <!-- <h1>Contact Us</h1>-->
            <div class="forgot-container">
                <div class="main">
                    <div class="content-forgot">
                        <h2> Forgot Password?</h2>
                        <form action="http://localhost:8080/EatEase/Userverify" method="post">
                              <!-- Check if there is a message and display the alert -->

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


                            <input type="email" name="verfemail" placeholder=" Enter Your Email" required>


                            <p>
                                <label for="security-question">Security Question</label><br><br>
                                <select id="security-question" name="f-secqs" style="width: 370px; background-color:#cfdde6;  height: 35px; font-size: 15px; border-radius: 8px; border-color: #d0d4ed" required>
                                    <option value="" selected disabled>Select</option>
                                    <option>What is your pet name?</option>
                                    <option >What is your favorite food?</option>
                                    <option >What is your surname?</option>
                                    <option>What is your age?</option>
                                </select>
                            </p>



                            <p style="margin-top: 20px">
                                <label for="answer">Answer</label><br>
                                <textarea id="answer" name="f-secans" rows="1" cols="42" style="font-size: 12px; border-color: #d0d4ed; border-radius: 8px;" required></textarea>
                            </p>



                            <button type="submit" class="btn">
                                <a style="color: white;text-decoration: none;">Send<i class="fa-paper-plane"></i></a> 
                            </button>
                            <div class="r">
                                <a href="signup.jsp">Back To login</a>
                            </div>

                        </form>
                    </div>
                    <div class="form.img">
                        <img src="./resources/img/forgot-password-icon-14.png">
                    </div>  
                </div>
            </div>
        </div>




    </body>
</html>
