<%@ page import="com.learn.mycart.entities.User" %>
<%@ page import="com.learn.mycart.dao.UserDao" %>
<%@ page import="com.learn.mycart.helper.FactoryProvider" %>
<%
    User user = (User) session.getAttribute("current-user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    UserDao userDao = new UserDao(FactoryProvider.getFactory());
    User currentUser = userDao.getUserById(user.getUserId());
%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Profile</title>
    <!-- Include your CSS and JS files here -->
</head>
<body>
    <!-- Your navbar or profile section here -->
    <h1>Update Profile</h1>
    <form action="UpdateProfileServlet" method="post">
        <input type="hidden" name="userId" value="<%= currentUser.getUserId() %>">
        <label for="userName">Username:</label>
        <input type="text" id="userName" name="userName" value="<%= currentUser.getUserName() %>"><br><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="<%= currentUser.getUserEmail() %>"><br><br>
        <!-- Add more fields as needed -->
        <button type="submit">Update</button>
    </form>
</body>
</html>
