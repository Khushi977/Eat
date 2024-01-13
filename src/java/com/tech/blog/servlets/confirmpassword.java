package com.tech.blog.servlets;
import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class confirmpassword extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
             

            String newpass1 = request.getParameter("newpass");
            String confirmpass = request.getParameter("confirm-password");
           

//            HttpSession s = request.getSession();
//            User user = (User) s.getAttribute("authcode");

             HttpSession session = request.getSession();
            User user = (User) session.getAttribute("authcode");
            
            
            
            if(newpass1!= null && confirmpass != null && newpass1.equals(confirmpass)){
           user.setUPASSWORD(newpass1);
//            user.setUEMAIL((String) s.getAttribute("authcode")); // Set email from session


            //update data in the database
            UserDao userdao = new UserDao(ConnectionProvider.getConnection());
            boolean ans = userdao.updateUserPassword(user);
            if (ans == true) {
Message msg=new Message("Password updated successfully","success","alert-success");
          
           HttpSession s=request.getSession();
           s.setAttribute("msg", msg);
           response.sendRedirect("signup.jsp");
//                out.println("password updated successfully");
            } else {
                
                
                Message msg=new Message("Failed to update password !! Please try again","error","alert-danger");
          
           HttpSession s=request.getSession();
           s.setAttribute("msg", msg);
           response.sendRedirect("confirmpass.jsp");
                
                
                
                
//                out.println("failed to update");

            }

        }  else{
                
                Message msg=new Message("New password and Confirm password do not match!! Please try again","error","alert-danger");
          
           HttpSession s=request.getSession();
           s.setAttribute("msg", msg);
           response.sendRedirect("confirmpass.jsp");
            
//            out.println("new password and confirm password do not match");
            
            }
        
        
        
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
