
package com.tech.blog.servlets;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetDietForm extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            String dietusername1 = request.getParameter("dietusername");
            String dietuseremail1 = request.getParameter("dietuseremail");
            String dietuserageParam = request.getParameter("dietuserage");
            int dietuserage1 = Integer.parseInt(dietuserageParam);
            String dietusergender1 = request.getParameter("dietusergender");
            String dietuserweight1 = request.getParameter("dietuserweight");
            String dietuserdietpref1 = request.getParameter("dietuserdietpref");

            User user = new User();
            user.setUNAME(dietusername1);
            user.setUEMAIL(dietuseremail1);
            user.setUAGE(dietuserage1);
            user.setUGENDER(dietusergender1);
            user.setUWEIGHT(dietuserweight1);
            user.setUDIETPREFERENCE(dietuserdietpref1);

            UserDao dao = new UserDao(ConnectionProvider.getConnection());

            if (dao.saveUserDietFormData(user)) {
                // Save successful, now retrieve diet chart data based on user's weight preference
                List<User> dietUsers;

                if ("Normal".equalsIgnoreCase(dietuserweight1)) {
                    dietUsers = dao.getNormalDietChart(user.getUWEIGHT());
                } else if ("UnderWeight".equalsIgnoreCase(dietuserweight1)) {
                    dietUsers = dao.getUnderWeightDietChart(user.getUWEIGHT());
                } 
                else if ("OverWeight".equalsIgnoreCase(dietuserweight1)) {
                    dietUsers = dao.getOverWeightDietChart(user.getUWEIGHT());
                } 
                else if ("Obesity".equalsIgnoreCase(dietuserweight1)) {
                    dietUsers = dao.getObesityDietChart(user.getUWEIGHT());
                } 
                else {
                    // Handle other cases or show an error
                    request.setAttribute("errorMessage", "Invalid diet preference");
                    RequestDispatcher rd = request.getRequestDispatcher("error_page.jsp");
                    rd.forward(request, response);
                    return;
                }

                // Set the retrieved data in the request attribute
                request.setAttribute("dietUsers", dietUsers);

                // Forward the request to the JSP page
                RequestDispatcher rd = request.getRequestDispatcher("getdietchart.jsp");
                rd.forward(request, response);
            } else {
                response.sendRedirect("error_page.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Log the exception or handle it as needed
            request.setAttribute("errorMessage", "An error occurred: " + e.getMessage());
            RequestDispatcher rd = request.getRequestDispatcher("error_page.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
