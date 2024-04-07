<%@page import="com.learn.mycart.entities.User"%>



<%@page import="com.learn.mycart.helper.Helper"%>
<%@page import="com.learn.mycart.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.learn.mycart.dao.CategoryDao"%>
<%@page import="com.learn.mycart.entities.Category"%>
<%@page import="com.learn.mycart.helper.FactoryProvider"%>
<%@page import="com.learn.mycart.dao.ProductDao"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PandeyJi-Store</title>
        <%@include file="Components/common_css_js.jsp"%>
        <link rel="stylesheet" href="css/home.css">

    </head>
    <body>
        <%@include file="Components/navbar.jsp" %>
        <%@include file="Components/crousal.jsp" %>

        <div class="container-fluid">

            <div class="row mt-3 mx-2">

                <% String cat = request.getParameter("category");
                    //out.println(cat);

                    ProductDao dao = new ProductDao(FactoryProvider.getFactory());
                    List<Product> list = null;

                    if (cat == null || cat.trim().equals("all")) {
                        list = dao.getAllProducts();

                    } else {

                        int cid = Integer.parseInt(cat.trim());
                        list = dao.getAllProductsById(cid);

                    }

                    CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
                    List<Category> clist = cdao.getCategories();

                %>

                <!--show categories-->
                <div class="col-md-2">


                    <div class="list-group mt-4">

                        <a href="index.jsp?category=all"
                           class="list-group-item list-group-item-action <%= (cat == null || cat.equals("all")) ? "active" : ""%>">
                            All Products
                        </a>




                        <% for (Category c : clist) {
                        %>



                        <a href="index.jsp?category=<%= c.getCategoryId()%>" class="list-group-item list-group-item-action <%= (cat != null && cat.equals(String.valueOf(c.getCategoryId()))) ? "active" : ""%>">
                            <%= c.getCategoryTitle()%></a>


                        <%    }
                        %>



                    </div>


                </div>

                <!--show products-->

                <div class="col-md-10">
                    <% if (cat != null && !cat.equals("all")) {%>
                    <h1><%= cdao.getCategoryById(Integer.parseInt(cat)).getCategoryTitle()%></h1>
                    <% } else { %>
                    <h1>All Products</h1>
                    <% } %>


                    <!--row-->
                    <div class="row mt-4">

                        <!--col:12-->
                        <div class="col-md-12">

                            <div class="card-columns">

                                <!--traversing products-->

                                <%
                                    for (Product p : list) {

                                %>


                                <!--product card-->
                                <div class="card product-card">

                                    <div class="container text-center">
                                        <img src="images/products/<%= p.getpPhoto()%>" style="max-height: 200px;max-width: 100%;width: auto; " class="card-img-top m-2" alt="...">

                                    </div>

                                    <div class="card-body">

                                        <h5 class="card-title"><%= p.getpName()%></h5>

                                        <p class="card-text">
                                            <%= Helper.get10Words(p.getpDesc())%>

                                        </p>

                                    </div>

                                    <div class="card-footer text-center d-flex justify-content-between align-items-center">
                                        <div class="text-left">
                                            <h4 class="mb-0">&#8377; <%= p.getPriceAfterApplyingDiscount()%>/-</h4>
                                            <div class="d-inline-block">
                                                <del class="text-muted">&#8377; <%= p.getpPrice()%></del>
                                                <span class="badge badge-success">Offer: <%= p.getpDiscount()%>% off</span>
                                            </div>

                                        </div>
                                        <div style="overflow: hidden;">

                                            <button onclick="add_to_cart(<%= p.getpId()%>, '<%= p.getpName()%>', <%= p.getPriceAfterApplyingDiscount()%>,'<%=p.getpPhoto()%>')" class="btn custom-bg text-white d-md-inline-block d-none"><i class="fas fa-shopping-cart"></i> Add to Cart</button>
                                            <button onclick="add_to_cart(<%= p.getpId()%>, '<%= p.getpName()%>', <%= p.getPriceAfterApplyingDiscount()%>,'<%=p.getpPhoto()%>')" class="btn custom-bg text-white d-md-none"><i class="fas fa-shopping-cart"></i></button>
                                        </div>
                                    </div>




                                </div>






                                <%}

                                    if (list.size() == 0) {
                                        out.println("<h3>No item in this category</h3>");
                                    }


                                %>


                            </div>                     



                        </div>                   

                    </div>



                </div>

            </div>
        </div>
        <%@include file="Components/common_modals.jsp" %>
        <%@include file="Components/Footer.jsp" %>


    </body>
</html>
