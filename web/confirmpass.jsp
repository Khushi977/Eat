
<%@page import="com.tech.blog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirm Password </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <!--Google Fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <!--Stylesheet-->
    <link rel="stylesheet" href="./css/confrim.css">
    <link rel="Shortcut icon" href="./resources/img/eat1.png">
  
      <%
            Message msg = (Message) session.getAttribute("msg");
            if (msg != null) {
                if (msg.getContent().equals("Password updated successfully")) {
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
    <form action="confirmpassword" method="POST">
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
        <label for="pass">Password</label>
        <input type="password" id="pass"  name="newpass" placeholder="Enter your new password here" required
        pattern=".{8,}" title="Atleast 8 character"
        minlength="6"
         maxlength="15"/>
         <!-- <i class="far fa-eye" id="toggle-pass1"></i> -->


        <label for="confirm-pass">Confirm Password</label>
        <input type="password"  name="confirm-password"
        id="confirm-pass" placeholder="Confirm password here" required
        minlength="6"
        maxlength="15">
        <!-- <i class="fa-solid fa-eye" id="toggle-pass2"></i> -->
        <p id="error-msg"></p>
        <a herf="#">  <input id="redirect-btn"  class="reset-btn" name="submitBtn" type="submit"  value="Reset password"/></a>
    </form>
    <!--Script-->
    <script src="./js/confrim.js"></script>
</body>
</html>