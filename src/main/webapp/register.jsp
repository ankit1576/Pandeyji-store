<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <%@include file="Components/common_css_js.jsp"%>
        <link rel="stylesheet" type="text/css" href="css/register.css">
    </head>
    <body>
        <%@include file="Components/navbar.jsp" %>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <%@include file="Components/message.jsp" %>

                    <div class="card">

                        <div class="card-body">
                            <center> <img src="images/logo/logo.png" alt="Logo" class="img-fluid mb-3 stroked" style="height: 80px "/></center>

                            <h2 class="card-title text-center">Register Now!!</h2>
                            <form action="RegisterServlet" method="post">
                                <div class="form-group row">
                                    <label for="userName" class="col-sm-2 col-form-label">Username</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="userName" name="userName" placeholder="Enter username" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="userEmail" class="col-sm-2 col-form-label">Email </label>
                                    <div class="col-sm-10">
                                        <input type="email" class="form-control" id="userEmail" name="userEmail" placeholder="Enter email" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="userPassword" class="col-sm-2 col-form-label">Password</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="Enter password" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="userPhone" class="col-sm-2 col-form-label">Phone</label>
                                    <div class="col-sm-10">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">+91</span>
                                            </div>
                                            <input type="tel" class="form-control" id="userPhone" name="userPhone" maxlength="10"  required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="userAddress" class="col-sm-2 col-form-label">Address</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" id="userAddress" name="userAddress" placeholder="Enter your address" required></textarea>
                                    </div>
                                </div>
                                <div class="container text-center">
                                    <button type="submit" class="btn btn-success">Register</button>
                                    <button type="reset" class="btn btn-warning">Reset</button>
                                </div>             
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
