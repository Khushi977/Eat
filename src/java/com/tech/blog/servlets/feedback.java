
package com.tech.blog.servlets;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class feedback extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String femail1=request.getParameter("F-email").toLowerCase();
            String fmessage1= request.getParameter("F-message"); 
            
            
             User user = new User();
            user.setUEMAIL(femail1);
            user.setUFEEDBACK(fmessage1);
            
              UserDao dao=new UserDao(ConnectionProvider.getConnection());
            
            
           if(dao.saveUserFeedback(user))
           {
               //save..
               
                Message msg=new Message("Your feedback sent successfully...","success","alert-success");
           HttpSession s=request.getSession();
           s.setAttribute("msg", msg);
           response.sendRedirect("feedback.jsp");
//               out.println("Your feedback sent successfully...");
           }
          
           else
           {
                Message msg=new Message("Feedback not send !! try again..","error","alert-danger");
           HttpSession s=request.getSession();
           s.setAttribute("msg", msg);
           response.sendRedirect("feedback.jsp");
//               out.println("Feedback not send !! try again..");
           }
            
      
            
            

        }
              
           catch(Exception e){
           e.printStackTrace();
           out.println("Exception: " + e.getMessage()); // Add this line for debugging


} 
 }
    

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
