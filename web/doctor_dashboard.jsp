<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@page import="com.tech.blog.entities.User" %>
<%
    User user = (User)session.getAttribute("currentDoctor");

    if (user == null) {
        response.sendRedirect("doctorlogin.jsp");
    }
else {
%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Dashboard</title>

    <!--=============== REMIXICONS ===============-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css" rel="stylesheet">

    <!-- MAIN CSS -->
      
      <link rel="stylesheet" href="./css/doctorstyle.css">
  
    
    <link rel="Shortcut icon" href="./resources/img/eat1.png">
    <!-- Material ICONS -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body>
    <div class="container" >

        <!-- START ASIDE -->
        <aside>
            <div class="top">
                <div class="logo">
                    <img src="./resources/img/eateease logo.gif" alt="Logo" >
                    <h2>EAT<span class="danger">EASE</span></h2>
                </div>

            </div>
            <div class="sidebar">
                <a href="doctor_dashboard.jsp" class="Dashboard" id="dashboard-link">
                    <span class="material-icons">grid_view</span>
                    <h3>Dashboard</h3>
                </a>


                <a href="DoctorLogout">
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

                        <!--     <div class="theme-toggler">
                            <span class="material-icons active">light_mode</span>
                            <span class="material-icons">dark_mode</span>
                        </div>
        
                         -->
                        <div class="profile">
                            <div class="info">
                                <p>Welcome <b><%= user.getDOCTORNAME()%></b></p>
                                <!-- <small class="text-muted">Admin</small> -->
                            </div>
                        </div>

                    </div>
                    <!-- PROFILE TOP END -->

                </div>

            </div>
 </div>

            <!-- START CHART -->
            <section class="diet-meal" id="diet-meal">


                <ul class="controls">
                   
                    <!-- BUTTON -->
                    <li class="buttons" id="view-appointment-btn">
                        <img src="./resources/img/stethoscope.gif" alt="">
                        <h3><a href="DoctordashbrdAppoint">View Appointment</a></h3>
                    </li>

                </ul>
                <!-- TABLE CHART -->
                <div class="table-head-container hidden" id="appointment-table-container">
                    <!--<div class="breakfast-table" id="breakfast-table">-->
                        <table class="diet-table">
                            <thead>
                                <tr>
                                    <th colspan="9">Appointments</th>

                                </tr>
                            </thead>
                            <tbody>
                               
                                <tr>
                                    <td rowspan="2" style="font-weight: bold;">Patient Name</td>

                                </tr>
                                <tr>
                                    
                                    <td style="font-weight: bold;">Email</td>
                                    <td style="font-weight: bold;">Gender</td>
                                    <td style="font-weight: bold;">Age</td>
                                    <td style="font-weight: bold;">Mobile</td>
                                    <td style="font-weight: bold;">Doctor</td>
                                    <td style="font-weight: bold;">Service Type</td>
                                    <td style="font-weight: bold;">Appointment Date</td>
                                     <td style="font-weight: bold;">Time Slot</td>
                                </tr>
                            <c:forEach var="appointmentItem" items="${userList}">
                                <tr>
                                    <td>${fn:toUpperCase(appointmentItem.UNAME)}</td>
                                    <td>${appointmentItem.UEMAIL}</td>
                                    <td>${appointmentItem.UGENDER}</td>
                                    <td>${appointmentItem.UAGE}</td>
                                    <td>${appointmentItem.MOBILE}</td>
                                    <td>${appointmentItem.DOCTORNAME}</td>
                                    <td>${appointmentItem.SERVICETYPE}</td>
                                    <td>${appointmentItem.BOOKINGDATE}</td>
                                    <td>${appointmentItem.TIMESLOT}</td>

                                </tr>
                           </c:forEach>

 
                            </tbody>
                           
                        </table>
                    </div>
             
            </section>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const viewAppointmentBtn = document.getElementById('view-appointment-btn');
        const appointmentTableContainer = document.getElementById('appointment-table-container');

        viewAppointmentBtn.addEventListener('click', function () {
            appointmentTableContainer.classList.toggle('hidden');
        });
    });
</script>


</body>
</html>
<%
    }
%>