
package com.tech.blog.servlets;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@MultipartConfig
public class SignupServlet extends HttpServlet {

    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //fetch all form data
            String signname1=request.getParameter("signname");
            String signemail1=request.getParameter("signemail").toLowerCase();
            String signpass1=request.getParameter("signpass");
            String signqs1=request.getParameter("signqs");
            String signans1=request.getParameter("signans");
         
       // creating user object and set all data to that object..
            User user=new User(signname1,signemail1,signpass1,signqs1,signans1);
            // create a user dao object..
            UserDao dao=new UserDao(ConnectionProvider.getConnection());
           if(dao.saveUser(user))
           {
               //save..
               out.println("done");
           }
           else
           {
               out.println("something went wrong ! try again..");
           }
            
      
            
            

        }
              
           catch(Exception e){
           e.printStackTrace();
           out.println("Exception: " + e.getMessage()); // Add this line for debugging



} 
//            out.println("</body>");
//            out.println("</html>"); 
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
