package com.tech.blog.servlets;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.SendEmail2;
import com.tech.blog.entities.SendEmail3;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class verifypayOTP extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("authcode");
            User userappointmentdata = (User) session.getAttribute("userAppData");
             
            String code = request.getParameter("OTP-v");

            if (user != null) {
                out.println("Received OTP: " + code);
                if (user.getOTP() == null) {
                    out.println("User OTP is null");
                    return;
                }

                if (code.equals(user.getOTP())) {
              
                    
                     //email mein otp send
                
           SendEmail3 sm = new SendEmail3();
//            System.out.println("Debug: SendEmail instance created"); // Debug statement
            String paymentid = sm.getRandom();
//            System.out.println("Debug: OTP code generated = " + code); // Debug statement

           
            user.setUEMAIL(user.getUEMAIL().toLowerCase());

            user.setOTP(paymentid);
//            System.out.println("Debug: User instance created"); // Debug statement

            boolean test = sm.sendPaymentDetails(user);
//            System.out.println("Debug: sendOTP method called"); // Debug statement

            if (test) {
                UserDao dao = new UserDao(ConnectionProvider.getConnection());
                dao.saveUserAppointmentBookingData(user);
              
                session.setAttribute("authcode", user);
                        
            Message msg=new Message("OTP Verification Successfull..\nPayment details sent to your email..","success","alert-success");
          HttpSession s=request.getSession();
           s.setAttribute("msg", msg);
          response.sendRedirect("otpverify2.jsp");
          
            } else {
                out.println("Email not sent. Please try again.");
            }
            
           
        }
            else{
           Message msg=new Message("OTP not matched !! Please try again...","error","alert-danger");
          
           HttpSession s=request.getSession();
           s.setAttribute("msg", msg);
            response.sendRedirect("otpverify2.jsp"); 
            }
                    
                    
      }
            else{
            response.sendRedirect("error_page.jsp");
            }
    }
}
}

