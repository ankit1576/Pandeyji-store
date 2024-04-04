package com.learn.mycart.servlets;

import com.learn.mycart.dao.UserDao;
import com.learn.mycart.entities.User;
import com.learn.mycart.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try {
                //fetching values from login form
                String userEmail = request.getParameter("userEmail");
                String userPassword = request.getParameter("userPassword");
//                System.out.println("Email: " + userEmail);
//                System.out.println("Password: " + userPassword);

                //validations
//                if (userEmail == null || userEmail.trim().isEmpty() || userPassword == null || userPassword.trim().isEmpty()) {
//                    // Handle empty email or password
//                    out.println("Email or password cannot be empty!");
//                    return;
//                }
                //user authentication matching from database
                // we can write full code here as well
                // but here we are going to create database layer that is called as DAO layer
                //using dao
                UserDao userDao = new UserDao(FactoryProvider.getFactory());
                User user = userDao.getUserByEmailAndPassword(userEmail, userPassword);
                HttpSession httpSession = request.getSession();
                if (user == null) {
                    httpSession.setAttribute("message1", "Invalid Details  !!");
                    response.sendRedirect("login.jsp");
                    return;

                } else {
                    //out.println("welcome" + user.getUserName());

                    //login using session management
                    httpSession.setAttribute("current-user", user);

                    if (user.getUserType().equals("admin")) {
                        //admin.jsp
                        response.sendRedirect("admin.jsp");
                    } else if (user.getUserType().equals("normal")) {   //normal.jsp
                        response.sendRedirect("normal.jsp");
                    } else {
                        out.println("We have not identified user type");
                    }

                }

            } catch (Exception e) {
                e.printStackTrace();
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
