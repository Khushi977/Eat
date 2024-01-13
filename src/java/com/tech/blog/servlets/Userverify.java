
package com.tech.blog.servlets;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.entities.SendEmail;
import com.tech.blog.helper.ConnectionProvider;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Userverify extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String email = request.getParameter("verfemail").toLowerCase();
//            out.println(email);
            String secqs1 = request.getParameter("f-secqs");
//             out.println(secqs1);
            String secans1 = request.getParameter("f-secans");
//             out.println(secans1);
   

UserDao dao=new UserDao(ConnectionProvider.getConnection());
User u= dao.getUserByEmailAndSecQS(email, secqs1, secans1);

if(u==null){

Message msg=new Message("Wrong credentials !! try again..","error","alert-danger");
          
           HttpSession s=request.getSession();
           s.setAttribute("msg", msg);
          response.sendRedirect("forget_password.jsp");

}else{

SendEmail sm = new SendEmail();
            String code = sm.getRandom();
            User user = new User();
            user.setUEMAIL(email);
            user.setOTP(code);
             boolean test = sm.sendOTP(user);
            if (test) {
                HttpSession session = request.getSession();
                session.setAttribute("authcode", user);
                Message msg=new Message("OTP sent to your email..","success","alert-success");
          
           HttpSession s=request.getSession();
           s.setAttribute("msg", msg);
           
   
                
//                response.sendRedirect("otpverify.jsp"); // Redirect to OTP verification page
            } else {
                out.println("Email not sent. Please try again.");
            }
            
             response.sendRedirect("forget_password.jsp");

}
       
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
}
