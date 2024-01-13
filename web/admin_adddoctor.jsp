<%@page import="com.tech.blog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/adddoc.css">
     <%
            Message msg = (Message) session.getAttribute("msg");
            if (msg != null) {
                if (msg.getContent().equals("New doctor added successfully...")) {
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
    <form action=" http://localhost:8080/EatEase/adddoctor " id="bmiForm" method="POST">
        <div class="main-div-form">
            <div class="form_head">
        <h3>Add New Doctor</h3>
        </div>
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
                                    
            <label >DoctorName</label>
            <input type="text" id="username" name="adoctorname" placeholder="Enter doctor's name" required  pattern="[a-zA-Z\s.]+"
            oninvalid="this.setCustomValidity('Enter Your Name')"
            oninput="this.setCustomValidity('')">

            <label >Email</label>
            <input type="email" id="email" name="adoctoremail" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$"
                   placeholder="Enter doctor's email"  required>
            
            
            <label>Password</label>
            <input type='text' name="adoctorpass" required placeholder="Enter the password">
            
            <label>Qualification</label>
            <input type='text' name="adoctorqualification" required placeholder="Enter doctor qualification">
            
             <label>Languages</label>
            <input type='text' name="adoctorlanguage" required placeholder="Enter doctor languages"><br><br>
            
             <label>Audiocall Fees &nbsp;</label>
             <input type='number' name="adoctoraudio" required placeholder="Enter doctor fees"><br><br>
            
            <label>Videocall Fees &nbsp;</label>
            <input type='number' name="adoctorvideo" required placeholder="Enter doctor fees"><br><br>
            
            <label>Textquery Fees &nbsp;</label>
            <input type='number' name="adoctortextqry" required placeholder="Enter doctor fees"><br><br>
            
          
          
        <div class="form__btn">
            <!-- <a href="">Submit</a> -->
            <button class="form__btn" type="submit">Submit</button>
        </div>
        </div>
      
    </form>
</body>
</html>