<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About Us</title>
        <%@include file="Components/common_css_js.jsp" %>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
            .card {
                font-size: 19px;
                padding: 50px;
                margin: 10px;
                background-color: #ede015d6;
                border-radius: .25rem;
            }
            .card-img {
                width: 75%;
                margin-left: 36px;
                border-radius: calc(14.25rem - 1px);
            }
        </style>
    </head>
    <body>
        <%@include file="Components/navbar.jsp" %>
        <!-- Page Content -->
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h1 class="card-title">Contact Us</h1>
                            <h2>Head Office:</h2>
                            <p>14/1, Cenal Road Hoolagang<br>Kanpur, UP, India</p>
                            <h2>Branch Office:</h2>
                            <p>233 A.1.KDA Road Lal Bunglow<br>Kanpur-208007, UP, India</p>
                            <h2>Contact No:</h2>
                            <p>9935061727, 9795061777</p>
                            <h2>Email:</h2>
                            <p>sales@pandey-g.com</p>

                        </div>
                    </div>
                    <div class="card">

                        <h3>Website Developer</h3>
                        <div class="row no-gutters">
                            <div class="col-md-3">
                                <img src="images/logo/image.png" class="card-img" alt="Designer Image">
                            </div>

                            <div class="col-md-9 ">
                                <div class="card-body">
                                    <h5 class="card-title">A website Designed by</h5>
                                    <h2 class="card-title">Ankit Pandey</h2>
                                    <h6 class="card-subtitle mb-2 text-muted">Student at National Institute of Technology Raipur</h6>
                                    <a href="#" class="card-link"><i class="fab fa-linkedin"></i> LinkedIn</a>
                                    <a href="#" class="card-link"><i class="fab fa-github"></i> GitHub</a>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h1 class="card-title">Feedback Form</h1>
                            <form>
                                <div class="form-group">
                                    <label for="name">Your Name</label>
                                    <input type="text" class="form-control" id="name" required>
                                </div>
                                <div class="form-group">
                                    <label for="phone">Your Phone Number</label>
                                    <input type="tel" class="form-control" id="phone" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Your Email</label>
                                    <input type="email" class="form-control" id="email" required>
                                </div>
                                <div class="form-group">
                                    <label for="message">Your Message</label>
                                    <textarea class="form-control" id="message" rows="5" required></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="Components/common_modals.jsp" %>
        <%@include file="Components/Footer.jsp" %>

    </body>
</html>
