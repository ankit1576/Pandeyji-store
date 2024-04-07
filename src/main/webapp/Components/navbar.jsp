<%@page import="java.util.List"%>
<%@page import="com.learn.mycart.dao.CategoryDao"%>
<%@page import="com.learn.mycart.helper.FactoryProvider"%>
<%@page import="com.learn.mycart.entities.Category"%>
<%@page import="com.learn.mycart.entities.User"%>
<link rel="stylesheet" type="text/css" href="css/navbar.css">

<%

    User user1 = (User) session.getAttribute("current-user");

%>
<nav class="navbar navbar-expand-lg navbar-dark cust-bg">
    <div class="container">
        <a class="navbar-brand " href="index.jsp"><img class="headlogo shining" src="images/logo/logo.png" alt="Pandey-ji Store"></a>
        <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
                    <!--                            // this category list is dynamic from database-->
                    <%                                CategoryDao cdao1 = new CategoryDao(FactoryProvider.getFactory());
                        List<Category> productlist = cdao1.getCategories();

                    %>

                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <% for (Category c : productlist) {%>
                        <a class="dropdown-item" href="/store/index.jsp?category=<%=c.getCategoryId()%>"><%=c.getCategoryTitle()%></a>
                        <% } %>   
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="index.jsp?category=all">Shop All</a>
                    </div>

                </li>
                <li class="nav-item">
                    <a class="nav-link" href="aboutus.jsp">About us</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="contactus.jsp">Contact Us</a>
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
                <% } else {
                %>
                <li class="nav-item active">
                    <a class="nav-link" href="<%=  user1.getUserType().equals("admin") ? "admin.jsp" : "updateProfile.jsp"%>"><%= user1.getUserName()%> </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="LogoutServlet">LogOut</a>
                </li>


                <%  }
                %>
                <!--            ml-auto to place content to left-->

            </ul>
        </div>

        <!-- Cart icon -->
        <div class="cart-icon">
            <a  class="nav-link" href="#" data-toggle="modal" data-target="#cart">
                <i class="fas fa-shopping-cart f"></i>
                <span id="cartCount" class="cart-items">(10)</span>
            </a>

        </div>

    </div>
</nav>