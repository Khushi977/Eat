
<%@page import="com.tech.blog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OTP Verification </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <!--Google Fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <!--Stylesheet-->
    <link rel="stylesheet" href="./css/OTP.css">
    <link rel="Shortcut icon" href="/images/eat1.png">
  
      
        <%
            Message msg = (Message) session.getAttribute("msg");
            if (msg != null) {
                if (msg.getContent().equals("OTP Verification Successfull")) {
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
    <form action="http://localhost:8080/EatEase/verifyOTP" method="GET">
        
        <div class="img"><img src="./resources/img/Animation - 1699207410959.gif" alt=""></div>
        <h3>OTP Verification</h3>
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

        <p>OTP has sent to your Email-id</p>
        <label >Enter your OTP</label>
        <input type="number" id="otp"  name="OTP-v" placeholder="0 0 0 0 0 0" required>
         <!-- <i class="far fa-eye" id="toggle-pass1"></i> -->


     
         <a herf="#"><button type="submit" class="btn" > Verify OTP </button>  </a> 
       
         </form>
    <!--Script-->
   
</body>
</html>