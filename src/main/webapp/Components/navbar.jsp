<%@page import="com.learn.mycart.entities.User"%>
<link rel="stylesheet" type="text/css" href="css/navbar.css">

<%

    User user1 = (User) session.getAttribute("current-user");

%>
<nav class="navbar navbar-expand-lg navbar-dark cust-bg">
    <div class="container">
        <a class="navbar-brand " href="index.jsp"><img class="headlogo shining" src="images/logo/logo.png" alt="Pandey-ji Store"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Shop Now
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Gajak's</a>
                        <a class="dropdown-item" href="#">Soan-Papdi</a>
                        <a class="dropdown-item" href="#">Lattha's</a>
                        <a class="dropdown-item" href="#">Petha's</a>
                        <a class="dropdown-item" href="#">Namkeen's</a>

                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Shop All</a>
                    </div>

                </li>
                <li class="nav-item">
                    <a class="nav-link" href="aboutus.jsp">About us</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#contactus.jsp">Contact Us</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <%                    if (user1 == null) {

                %>

                <li class="nav-item active">
                    <a class="nav-link" href="login.jsp">Login </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="register.jsp"> Register</a>
                </li>
                <% } 
                 else {
                %>
                <li class="nav-item active">
                    <a class="nav-link" href="#"><%=user1.getUserName() %></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="LogoutServlet">LogOut</a>
                </li>
 

                <%  }
                %>
                <!--            ml-auto to place content to left-->

            </ul>
        </div>
    </div>
</nav>