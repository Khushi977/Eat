<%@page import="com.tech.blog.entities.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                    <a href="admin_dashboard.jsp" class="" id="dashboard-link">
                        <span class="material-icons">grid_view</span>
                        <h3>Dashboard</h3>
                    </a>

                    <a href="http://localhost:8080/EatEase/adminusersignup" class="Dashboard">
                        <span class="material-icons">person</span>
                        <h3>SignUp User</h3>
                    </a>

                    <a href="http://localhost:8080/EatEase/admindoctordata" >
                        <i class="ri-stethoscope-fill icon"></i>
                        <h3>Doctor's</h3>
                    </a>

                    <a href="http://localhost:8080/EatEase/adminappointmentdata" >
                        <i class="ri-calendar-fill icon"></i>
                        <h3>Appointment</h3>
                    </a>

                    <a href="http://localhost:8080/EatEase/adminbmiformdata" >
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
                <!-- Signup User Tale  START -->
                <div class="signupuser">
                    <h2>SignUp Users</h2>
                    <table>
                        <thead>
                            
                            <tr>
                                <th>Username</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>Security Question</th>
                                <th>Security Answer</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="signupdata" items="${userList}">
                            <tr>
                                <td>${signupdata.UNAME}</td>
                                <td>${signupdata.UEMAIL}</td>
                                <td>${signupdata.UPASSWORD}</td>
                                <td>${signupdata.UQUESTION}</td>
                                <td>${signupdata.UANSWER}</td>

                            </tr>
</c:forEach>
                        </tbody>
                    </table>
                </div>
            </main>
        </main>
    </div>
</body>

</html>