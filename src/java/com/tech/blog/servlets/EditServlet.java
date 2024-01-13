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

public class EditServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditServlet</title>");
            out.println("</head>");
            out.println("<body>");

            String editablename1 = request.getParameter("editable_name");
//             String editableemail1=request.getParameter("editable_email");
            String editablepass1 = request.getParameter("editable_password");
            String editablqs1 = request.getParameter("editable_qs");
            String editableans1 = request.getParameter("editable_answer");

            HttpSession s = request.getSession();
            User user = (User) s.getAttribute("currentUser");

            user.setUNAME(editablename1);
//              user.setUEMAIL(editableemail1);
            user.setUPASSWORD(editablepass1);
            user.setUQUESTION(editablqs1);
            user.setUANSWER(editableans1);

            //update data in the database
            UserDao userdao = new UserDao(ConnectionProvider.getConnection());
            boolean ans = userdao.updateUser(user);
            if (ans == true) {
           Message msg=new Message("Details updated to database","success","alert-success");
           s.setAttribute("msg", msg);
           response.sendRedirect("show_user_details.jsp");
//                out.println("updated to database");
            } else {
                 Message msg=new Message("Sorry !! Details not updated to database","error","alert-danger");
           s.setAttribute("msg", msg);
           response.sendRedirect("show_user_details.jsp");

            }

            out.println("</body>");
            out.println("</html>");
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
