<%@page import="com.tech.blog.entities.User" %>
<%
//User user=(User)session.getAttribute("currentAdmin");
String adminEmail = (String)session.getAttribute("currentAdmin");


if(adminEmail==null){
response.sendRedirect("adminlogin.jsp");
}

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <a href="admin_dashboard.jsp" class="Dashboard" id="dashboard-link">
                        <span class="material-icons">grid_view</span>
                        <h3>Dashboard</h3>
                    </a>

                    <a href="adminusersignup" class="active">
                        <span class="material-icons">person</span>
                        <h3>SignUp User</h3>
                    </a>

                    <a href="admindoctordata" class="active">
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
                <div class="profileheading">
                    <h1>Dashboard</h1>


                    <div class="right">
                        <!-- PROFILE TOP START -->
                        <div class="top">
                            <button id="menu-btn">
                                <span class="material-icons">menu</span>
                            </button> 
                        </div>
                        <!-- PROFILE TOP END -->
                    </div>
                </div>

                <!-- Category START ----------------------->
                <div class="Category">
                    <h2>Category</h2>

                    <!-- Main Category div -->

                    <!-- All Category Item -->
                    <div class="categorybox">
                        <div class="men">
                            <img src="./resources/img/user.gif" alt="Category 1">
                            <a href="adminusersignup" class="category-text">SignUp User</a>
                        </div>
                        <div class="women">
                            <img src="./resources/img/doctor.png" alt="Category 1">
                            <a href="admindoctordata" class="category-text">Doctor's</a>
                        </div>

                        <div class="footwear">
                            <img src="./resources/img/appointment.gif" alt="Category 1">
                            <a href="http://localhost:8080/EatEase/adminappointmentdata" class="category-text">Appointment</a>

                        </div>

                        <div class="Jewelry">

                            <img src="./resources/img/meal.gif" alt="Category 1">
                            <a href="http://localhost:8080/EatEase/adminbmiformdata" class="category-text">BMI</a>

                        </div>

                        <div class="Homeliving">
                            <img src="./resources/img/stars.gif" alt="Category 1">
                            <a href="http://localhost:8080/EatEase/adminfeedback" class="category-text">Feedback</a>

                        </div>

                        <div class="electronics">

                            <img src="./resources/img/complaint.gif" alt="Category 1">
                            <a href="http://localhost:8080/EatEase/admincomplaints" class="category-text">Complaint</a>

                        </div>
                    </div>

                    <!--  All  Category Item  End -->
                </div>
                <!-- Category END ----------------------------->
            </main>
        </div>
    </body>
</html>