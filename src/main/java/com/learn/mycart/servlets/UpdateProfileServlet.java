package com.learn.mycart.servlets;

import com.learn.mycart.dao.UserDao;
import com.learn.mycart.entities.User;
import com.learn.mycart.helper.FactoryProvider;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateProfileServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        // Add more fields as needed

        UserDao userDao = new UserDao(FactoryProvider.getFactory());
        User user = userDao.getUserById(userId);

        if (user != null) {
            user.setUserName(userName);
            user.setUserEmail(email);
            // Update other fields as needed

            userDao.updateUser(user);
            response.sendRedirect("profile.jsp"); // Redirect to profile page after update
        } else {
            // Handle the case where user is not found
            response.sendRedirect("error.jsp");
        }
    }

}
