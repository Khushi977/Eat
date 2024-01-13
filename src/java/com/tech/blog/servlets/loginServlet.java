
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


public class loginServlet extends HttpServlet {

  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            String loginemail1=request.getParameter("loginemail").toLowerCase();
            String loginpass1=request.getParameter("loginpass");
            
             UserDao dao=new UserDao(ConnectionProvider.getConnection());
           User u=dao.getUserByEmailAndPassword(loginemail1, loginpass1);
           if(u==null){
           Message msg=new Message("Wrong credentials !! try again..","error","alert-danger");
          HttpSession s=request.getSession();
           s.setAttribute("msg", msg);
           
           response.sendRedirect("signup.jsp");
           
           }
           else{
           //login successful....
           HttpSession s=request.getSession();
           s.setAttribute("currentUser", u);
           response.sendRedirect("user_profile.jsp");
          }
             
           }
         
        }
    }

  
