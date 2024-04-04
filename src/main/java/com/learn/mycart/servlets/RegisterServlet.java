package com.learn.mycart.servlets;

import com.learn.mycart.entities.User;
import com.learn.mycart.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class RegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try {
                String userName = request.getParameter("userName");
                String userEmail = request.getParameter("userEmail");
                String userPassword = request.getParameter("userPassword");
                String userPhone = request.getParameter("userPhone");
                String userAddress = request.getParameter("userAddress");

                // Check if email is already registered
                
                Session hibernateSession = FactoryProvider.getFactory().openSession();
                Query query = hibernateSession.createQuery("from User where userEmail = :email");
                query.setParameter("email", userEmail);
                User existingUser = (User) query.uniqueResult();

                if (existingUser != null) {
                    // Email already exists, handle this case (e.g., show an error message)
                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("error_message", "Email already exists! Please use a different email.");
                    response.sendRedirect("register.jsp");
                    return;
                }

                // Creating user object to store data
                User user = new User(userName, userEmail, userPassword, userPhone, "default.jpg", userAddress, "normal");

                // creating hibernate session to store data
                Transaction tx = hibernateSession.beginTransaction();
                int userId = (int) hibernateSession.save(user);

                // commit after work
                tx.commit();
                // closing session after its use
                hibernateSession.close();

                // creating session to store user values
                HttpSession httpSession = request.getSession();
                // stores registration successful message in session
                httpSession.setAttribute("message", "User with ID:" + userId + " has been Registered Successful !!");//key="message" ,value="user registration successful"
                // sending response to register.jsp
                response.sendRedirect("register.jsp");
            } catch (Exception e) {
                e.printStackTrace();
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("error_message", "Unable to Register -"+" Email already exists! Please use a different email.");
                response.sendRedirect("register.jsp");
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
