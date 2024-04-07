<%@page import="com.learn.mycart.helper.Helper"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.learn.mycart.entities.Category"%>
<%@page import="com.learn.mycart.dao.CategoryDao"%>
<%@page import="com.learn.mycart.helper.FactoryProvider"%>
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
<!--                            // this category list is dynamic from database-->
<% CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
    List<Category> list = cdao.getCategories();
    
//getting count
Map<String,Long>m=Helper.getCounts(FactoryProvider.getFactory());
%>
                            
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel</title>
        <link rel="stylesheet" type="text/css" href="css/admin.css">

        <%@include file="Components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="Components/navbar.jsp" %>
        <div class="container1">
            <%@include file="Components/message.jsp" %>
            <div class="row "> <!-- Added justify-content-center class here -->
                <div class="col-md-4 mt-3"> <!-- Corrected class name to col-md-4 -->
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img  class="imgs" src="images/icon/multiple-users-silhouette_1.png" alt="alt"/>
                            </div>
                            <h1><%=m.get("userCount")%></h1>
                            <h2 class="text-uppercase text-mute">Total user</h2>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mt-3"> <!-- Corrected class name to col-md-4 -->
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img  class="imgs" src="images/icon/report.png" alt="alt"/>
                            </div>

                            <h1><%=list.size()%></h1>
                            <h2 class="text-uppercase text-mute">categories</h2>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mt-3"> <!-- Corrected class name to col-md-4 -->
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img  class="imgs" src="images/icon/booking.png" alt="alt"/>
                            </div>

                            <h1><%=m.get("productCount")%></h1>
                            <h2 class="text-uppercase text-mute">products</h2>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row mt-3">
                <div class="col-md-6 mt-3">
                    <div class="card">
                        <div class="card-body text-center" data-toggle="modal" data-target="#add-product-modal">
                            <div class="container">
                                <img class="imgs"  src="images/icon/add_1.png" alt="alt"/>
                            </div>

                            <p class="mt-2">click here to add new Product</p>
                            <h2 class="text-uppercase text-mute">Add Products</h2>
                        </div>
                    </div>   
                </div>
                <div class="col-md-6 mt-3">
                    <div class="card">
                        <div class="card-body text-center" data-toggle="modal" data-target="#add-category-modal">
                            <div class="container">
                                <img class="imgs" src="images/icon/add (1).png" alt="alt"/>
                            </div>

                            <p class="mt-2">click here to add new Category</p>
                            <h2 class="text-uppercase text-mute">Add categories</h2>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
        <!-- category  Modal -->
        <div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header custom-bg text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Fill Category Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="ProductOperationServlet" method="post">
                            <div class="form-group">
                                <!--                                //hidden field to identify whether to add product or category-->
                                <input type="hidden" name="operation" value="addcategory">

                                <label for="input1">Category Title</label>
                                <input type="text" class="form-control" id="catTitle" name="catTitle" placeholder="Enter category title" required>
                            </div>
                            <div class="form-group">
                                <label for="input2">Category description</label>
                                <textarea style="height: 300px" class="form-control" placeholder="Enter Category description" name="catDescription" required></textarea>
                            </div>
                            <div class="container text-center">
                                <button type="submit" class="btn btn-success">Submit </button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">X Close</button>
                            </div>
                        </form>

                    </div>

                </div>
            </div>
        </div>
        <!--end category model-->



        <!--        product modal-->
        <!-- User Details Form -->
        <div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header custom-bg text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Fill Product Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <form action="ProductOperationServlet" method="post" enctype="multipart/form-data">
                            <!--                            //hidden field to identify whether to add product or category-->
                            <input type="hidden" name="operation" value="addproduct">
                            <div class="form-group">
                                <label for="pName">Product Name</label>
                                <input type="text" class="form-control" id="pName" name="pName" placeholder="Enter product name">
                            </div>
                            <div class="form-group">
                                <label for="pDesc">Product Description</label>
                                <textarea class="form-control" id="pDesc" name="pDesc" placeholder="Enter product description"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="pPic">Product Photo</label>
                                <input type="file" class="form-control-file" id="pPic" name="pPic">
                            </div>
                            <div class="form-group">
                                <label for="pPrice">Product Price</label>
                                <input type="number" class="form-control" id="pPrice" name="pPrice" placeholder="Enter product price">
                            </div>
                            <div class="form-group">
                                <label for="pDiscount">Product Discount</label>
                                <input type="number" class="form-control" id="pDiscount" name="pDiscount" placeholder="Enter product discount">
                            </div>
                            <div class="form-group">
                                <label for="pQuantity">Product Quantity</label>
                                <input type="number" class="form-control" id="pQuantity" name="pQuantity" placeholder="Enter product quantity">
                            </div>
                            
                            
                            <div class="form-group">
                                <label for="category">Category</label>
                                <select class="form-control" id="catId" name="catId">
                                    <%                                    for (Category c : list) {
                                    %>
                                    <option value="<%=c.getCategoryId()%>"><%=c.getCategoryTitle()%></option>
                                    <%
                                        }
                                    %>   
                                </select>
                            </div>

                            <div class="container text-center">
                                <button type="submit" class="btn btn-success">Add Product </button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">X Close</button>
                            </div>
                        </form>

                    </div>

                </div>
            </div>
        </div>
        <%@include file="Components/common_modals.jsp" %>                         
        <%@include file="Components/Footer.jsp" %>
    </body>
</html>
