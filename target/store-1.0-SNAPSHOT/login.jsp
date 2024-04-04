<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@include file="Components/common_css_js.jsp"%>
        <link rel="stylesheet" type="text/css" href="css/login.css">
    </head>
    <body>
        <%@include file="Components/navbar.jsp" %>
        <div class="container mt-4">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <%@include file="Components/message.jsp" %>

                    <div class="card">

                        <div class="card-body">
                            <center> <img src="images/logo/logo.png" alt="Logo" class="img-fluid mb-3 stroked" style="height: 80px "/></center>

                            <h2 class="card-title text-center">Login Now!!</h2>
                            <form action="LoginServlet" method="post">
                                <div class="form-group row">
                                    <label for="userEmail" class="col-sm-3 col-form-label">Email </label>
                                    <div class="col-sm-9">
                                        <input type="email" class="form-control" id="userEmail" name="userEmail" placeholder="Enter email" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="userPassword" class="col-sm-3 col-form-label">Password</label>
                                    <div class="col-sm-9">
                                        <input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="Enter password" required>
                                    </div>
                                </div>
                                <div class="space">If not registered <a href="register.jsp">Click here</a> or <a href="#">Forgot password</a></div> 

                                <div class="container text-center">
                                    <button type="submit" class="btn btn-success">Login</button>
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
