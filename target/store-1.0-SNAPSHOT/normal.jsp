<%@page import="com.learn.mycart.entities.User"%>
<%
//check whether user is already login
//if it is login then session is alive
//otherwise user=null;
    User normalUser = (User) session.getAttribute("current-user");
    if (normalUser == null) {
        session.setAttribute("message1", "You are not Logged in !! Login First or");
        response.sendRedirect("login.jsp");
        return;
    } 
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User</title>
        <%@include file="Components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="Components/navbar.jsp" %>
        <%@include file="Components/common_modals.jsp" %>
        <%@include file="Components/Footer.jsp" %>

    </body>
</html>
