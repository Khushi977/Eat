<%@page import="com.tech.blog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" style=" background: linear-gradient(to top right, #66ffff 0%, #006699 100%);">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="./css/doctorlogin.css">
    <link rel="Shortcut icon" href="./resources/img/eat1.png">
    <title>Admin Login</title>
    
    
     <%
            Message msg = (Message) session.getAttribute("msg");
            if (msg != null) {
                if (msg.getContent().equals("Logout Successfully...")) {
        %>
        <style>
            /* Remove white background for form elements */
            .alert {
                color: green;
                font-size: 1.5rem;
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
                font-size: 1.5rem;
            }

            /* Adjust other form element styles as needed */
        </style>
        <%
                }
            }
        %>

    
    
</head>
<body >
    <div id="page" class="site login-show">

        <div class="container" style="margin-top: 20vh;">
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
                            <form action="http://localhost:8080/EatEase/adminlogin" method="post">
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
                                    <input type="email" name="adminemail" placeholder="Enter Your Email" required
                                    pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" >
                               </p>
                               <p>
                                <label>Password</label>
                                <input type="password" name="adminpassword" placeholder="Enter Your Password" required
                                pattern=".{8,}" title="Atleast 8 character">
                               </p>
                               
                           
                            <button type="submit">Login</button>
                           </p>
                        </form>

                        </div>
                    </div>
                </div> <!--Login form-->
                </div>
                </div>
    </body>
    </html>