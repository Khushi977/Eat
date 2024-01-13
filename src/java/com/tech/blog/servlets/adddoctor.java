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

public class adddoctor extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            
            
            
            String adoctorname1 =request.getParameter("adoctorname");
            String adoctoremail1 = request.getParameter("adoctoremail").toLowerCase(); 
            String adoctorpass1 =request.getParameter("adoctorpass");
            String adoctorqualification1= request.getParameter("adoctorqualification"); 
            String adoctorlanguage1 = request.getParameter("adoctorlanguage"); 
           
            String adoctoraudio1 = request.getParameter("adoctoraudio");
            int adoctoraudio2= Integer.parseInt(adoctoraudio1);
            
            String adoctorvideo1= request.getParameter("adoctorvideo");
            int adoctorvideo2= Integer.parseInt(adoctorvideo1) ;
            
            String  adoctortextqry1 = request.getParameter("adoctortextqry");
            int adoctortextqry2 = Integer.parseInt(adoctortextqry1);
            
            
            
            User user = new User();
         
            user.setDOCTORNAME(adoctorname1);
            user.setDOCTOREMAIL(adoctoremail1);
            user.setDOCTORPASSWORD(adoctorpass1);
            user.setDOCTORQUALIFICATION(adoctorqualification1);
            user.setDOCTORLANGUAGES(adoctorlanguage1);
            user.setAUDIOCALL(adoctoraudio2);
            user.setVIDEOCALL(adoctorvideo2);
            user.setTEXTQUERY(adoctortextqry2);
            
            
            UserDao dao = new UserDao (ConnectionProvider.getConnection());
            
              if(dao.addDoctor(user))
           {
               //save..
               
                Message msg=new Message("New doctor added successfully...","success","alert-success");
           HttpSession s=request.getSession();
           s.setAttribute("msg", msg);
           response.sendRedirect("admin_adddoctor.jsp");

           }
          
           else
           {
                Message msg=new Message("Sorry..Doctor details could not be added !! try again..","error","alert-danger");
           HttpSession s=request.getSession();
           s.setAttribute("msg", msg);
         response.sendRedirect("admin_adddoctor.jsp");

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
