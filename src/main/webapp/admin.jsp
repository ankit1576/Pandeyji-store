<%@page import="com.learn.mycart.entities.User"%>
<%
//check whether admin is already login
//if it is login then session is alive
//otherwise user=null;
    User admin = (User) session.getAttribute("current-user");
    if (admin == null) {
        session.setAttribute("message1", "You are not Logged in !! Login First or");
        response.sendRedirect("login.jsp");
        return;
    } else {
        if (admin.getUserType().equals("normal")) {
            session.setAttribute("message1", "You do not have admin priviledges ,");
            response.sendRedirect("login.jsp");
            return;
        }
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel</title>
        <%@include file="Components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="Components/navbar.jsp" %>
        <div class="container">
            <div class="row mt-3"> <!-- Added justify-content-center class here -->
                <div class="col-md-4"> <!-- Corrected class name to col-md-4 -->
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img src="images/icon/multiple-users-silhouette.png" alt="alt"/>
                            </div>
                            <h1>2323</h1>
                            <h2>user</h2>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"> <!-- Corrected class name to col-md-4 -->
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img src="images/icon/multiple-users-silhouette.png" alt="alt"/>
                            </div>

                            <h1>2323</h1>
                            <h2>categories</h2>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"> <!-- Corrected class name to col-md-4 -->
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img src="images/icon/multiple-users-silhouette.png" alt="alt"/>
                            </div>

                            <h1>2323</h1>
                            <h2>products</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
