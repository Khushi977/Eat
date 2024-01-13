<%@page import="com.tech.blog.entities.Message"%>
<%@page import="com.tech.blog.entities.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//User user=(User)session.getAttribute("currentAdmin");
String adminEmail = (String)session.getAttribute("currentAdmin");


if(adminEmail==null){
response.sendRedirect("adminlogin.jsp");
}

%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Pannel</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

        <!--=============== REMIXICONS ===============-->
        <link href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css" rel="stylesheet">
        <!-- MAIN CSS -->
        <link rel="stylesheet" href="./css/astyle.css">
        <!-- Material ICONS -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        
        
        
        
        
        
        
        <%
            Message msg = (Message) session.getAttribute("msg");
            if (msg != null) {
                if (msg.getContent().equals("Doctor info deleted successfully...")) {
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
        <div class="container">

            <!-- START ASIDE -->
            <aside>
                <div class="top">
                    <div class="logo">
                        <img src="./resources/img/eateease logo.gif" alt="Logo">
                        <h2>EAT<span class="danger">EASE</span></h2>
                    </div>
                    <div class="close-btn" id="close-btn">
                        <span class="material-icons">close</span>
                    </div>
                </div>
                <div class="sidebar">
                    <a href="admin_dashboard.jsp" class="" id="dashboard-link">
                        <span class="material-icons">grid_view</span>
                        <h3>Dashboard</h3>
                    </a>
                    <a href="adminusersignup" class="">
                        <span class="material-icons">person</span>
                        <h3>SignUp User</h3>
                    </a>

                    <a href="admindoctordata" class="Dashboard">
                        <i class="ri-stethoscope-fill icon"></i>
                        <h3>Doctor's</h3>
                    </a>

                    <a href="http://localhost:8080/EatEase/adminappointmentdata" class="active">
                        <i class="ri-calendar-fill icon"></i>
                        <h3>Appointment</h3>
                    </a>

                    <a href="http://localhost:8080/EatEase/adminbmiformdata" class="active">
                        <i class="fa-solid fa-weight-scale icon"></i>
                        <h3>BMI</h3>
                    </a>

                    <a href="http://localhost:8080/EatEase/adminfeedback" class="active">
                        <i class="ri-feedback-fill icon"></i>
                        <h3>Feedback</h3>
                    </a>

                    <a href="http://localhost:8080/EatEase/admincomplaints" class="active">
                        <span class="material-icons">person</span>
                        <h3>Complaints</h3>
                    </a>


                    <a href="http://localhost:8080/EatEase/adminlogout">
                        <span class="material-icons">logout</span>
                        <h3>Logout</h3>
                    </a>
                </div>
            </aside>
            <!-- END ASIDE -->

            <main>
                <h1>Dashboard</h1>
                <!-- Doctor Talbe  START -->
                <div class="signupuser doc">
                    <h2>Doctor's</h2>
                    <div>
                        <!-- <button type="submit" onclick="" class="addbtn">Add New Doctor</button> -->
                        <a href="admin_adddoctor.jsp" class="addbtn">Add New Doctor</a>
                    </div>
                      <form action="http://localhost:8080/EatEase/deleteDoctor" method="POST">
                    <table>
                        <br><br>
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
                        <thead>
                            <tr>
                                <th>Doctor Name</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>Qualification</th>
                                <th>Languages</th>
                                <th>AudioCall</th>
                                <th>VideoCall</th>
                                <th>TextQuery</th>
                            </tr>
                        </thead>
                       
                            
                        <tbody>
                            
                            <c:forEach var="doctordata" items="${userList}">
                           
                            <tr>
                          
                                 <!-- Hidden input for doctor email -->
                    
                                 <!--<input type="hidden" name="doctem" value="${doctordata.DOCTOREMAIL}">-->
                                <td>${doctordata.DOCTORNAME}</td>
                                <td>${doctordata.DOCTOREMAIL}</td>
                                <td>${doctordata.DOCTORPASSWORD}</td>
                                <td>${doctordata.DOCTORQUALIFICATION}</td>
                                <td>${doctordata.DOCTORLANGUAGES}</td>
                                <td>${doctordata.AUDIOCALL}</td>
                                <td>${doctordata.VIDEOCALL}</td>
                                <td>${doctordata.TEXTQUERY}</td>
                               
                                <td> <button type="submit" name="deleteDoctor" value="${doctordata.DOCTOREMAIL}">Delete</button></td>
                                <!--<td><button type="submit">Delete</button></td>-->
                                
                            </tr>
                            
                            </c:forEach>
                          
                        </tbody>
                          
                    </table>
</form>
                </div>

            </main>
        </div>

    </body>

</html>