package com.tech.blog.servlets;

import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class verifyOTP extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("authcode");

            String code = request.getParameter("OTP-v");

            if (user != null) {
                out.println("Received OTP: " + code);
                if (user.getOTP() == null) {
                    out.println("User OTP is null");
                    return;
                }

                if (code.equals(user.getOTP())) {
                    
            Message msg=new Message("OTP Verification Successfull","success","alert-success");
          
           HttpSession s=request.getSession();
           s.setAttribute("msg", msg);
           
           
           response.sendRedirect("confirmpass.jsp");
                 
                } 
                else 
                {    Message msg=new Message("OTP not matched !! Please try again...","error","alert-danger");
          
           HttpSession s=request.getSession();
           s.setAttribute("msg", msg);
            response.sendRedirect("otpverify.jsp");    }    
                    
                    
               
             
            } else {
                response.sendRedirect("error_page.jsp");
            }
        }
    }
}
