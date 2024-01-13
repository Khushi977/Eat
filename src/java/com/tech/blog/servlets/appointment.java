
package com.tech.blog.servlets;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.SendEmail;
import com.tech.blog.entities.SendEmail2;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class appointment extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            

    String apbookingdate1 = request.getParameter("apbookingdate");
    DateTimeFormatter inputFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    LocalDate apbookingdate = LocalDate.parse(apbookingdate1, inputFormatter);

            // Format the LocalDate to the desired output format
            DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
            String formattedDate = apbookingdate.format(outputFormatter);
             String apname1= request.getParameter("apname");
           String apemail1= request.getParameter("apemail").toLowerCase();
           String apgender1 = request.getParameter("apgender");
           //converting  age from string to int
           String apageparam = request.getParameter("apage");
           int apage1= Integer.parseInt(apageparam);
           //for mobile parsing in long
           String apmobileparam = request.getParameter("apmobile");
           Long apmobile1=Long.parseLong(apmobileparam);
           String doctorName1=request.getParameter("doctorName");
           String apservicetype1 = request.getParameter("apservicetype");
           String aptimeslot1= request.getParameter("aptimeslot");
//           out.println(apname1);
//           out.println(apemail1);
//           out.println(apgender1);
//           out.println(apage1);
//           out.println( apmobile1);
//           out.println(doctorName1);
//           out.println(apservicetype1);
//           out.println(formattedDate);
//           out.println(aptimeslot1);
           

            User user = new User();
            user.setUNAME(apname1);
            user.setUEMAIL(apemail1);
            user.setUGENDER(apgender1);
            user.setUAGE(apage1);
            user.setMOBILE(apmobile1);
            user.setDOCTORNAME(doctorName1);
            user.setSERVICETYPE(apservicetype1);
            LocalDate bookingDate = LocalDate.parse(formattedDate, outputFormatter);
            user.setBOOKINGDATE(bookingDate);
            user.setTIMESLOT(aptimeslot1);
            
            
            HttpSession session = request.getSession();
            session.setAttribute("userAppData", user);

//            UserDao dao = new UserDao(ConnectionProvider.getConnection());
//            if (dao.saveUserAppointmentBookingData(user)) {
 
             //email mein otp send
                
           SendEmail2 sm = new SendEmail2();
//            System.out.println("Debug: SendEmail instance created"); // Debug statement
            String code = sm.getRandom();
//            System.out.println("Debug: OTP code generated = " + code); // Debug statement

           
            user.setUEMAIL(apemail1);

            user.setOTP(code);
//            System.out.println("Debug: User instance created"); // Debug statement

            boolean test = sm.sendOTP(user);
//            System.out.println("Debug: sendOTP method called"); // Debug statement

            if (test) {
//                HttpSession session = request.getSession();
                session.setAttribute("authcode", user);
                Message msg=new Message("OTP sent to your email..","success","alert-success");
          
           HttpSession s=request.getSession();
           s.setAttribute("msg", msg);
           response.sendRedirect("otpverify2.jsp");
          
            } else {
                out.println("Email not sent. Please try again.");
            }
            
           
        
//            else{
//            response.sendRedirect("error_page.jsp");
//            }
    }}

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
