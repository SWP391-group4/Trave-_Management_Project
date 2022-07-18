<%-- 
    Document   : MarketingProfile
    Created on : Jun 15, 2022, 9:53:47 AM
    Author     : nam
--%>

<%@page import="Entity.MarketingImage"%>
<%@page import="Entity.Marketing"%>
<%@page import="Entity.Admins"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Marketing Profile</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Abril+Fatface" rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">
        <link rel="stylesheet" href="css/image_choose.css">
        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">
        <link rel="icon" href="images/logo.png" type="">
        <link rel="stylesheet" href="css/marketing.css">
        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/admin.css">
    </head>
    <body>

        <jsp:include page="Header.jsp"></jsp:include>
            <!-- END nav -->

        <%
            Marketing mar = (Marketing) request.getAttribute("mar");
            MarketingImage mark = (MarketingImage) request.getAttribute("mark");
        %> 
        <br>
        <nav class="navbar navbar-expand-lg navbar-light bg-light " >
            <div class="container" style="font-weight: normal">
            <a class="navbar-brand active" style="color: #eea236" href="#">Account Information</a>
            <a class="navbar-brand" href="MarketingManager">Marketing Manager</a>
            </div>
        </nav>
        <section >
            <div class="container">
                <div class="main-body">

                    <!-- Breadcrumb -->

                    <form  action="MarketingProfileController" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="go" value="updateMarketing">
                        <!-- /Breadcrumb -->
                        <div class="row gutters-sm">


                            <div class="col-md-4 mb-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex flex-column align-items-center text-center">
                                            <img src="images/<%=mark.getImg_Avatar()%>" alt="Admin" class="rounded-circle" width="200">
                                            <div class="mt-3" style="text-align: center">
                                                <h4><%=mar.getLastName()%> <%=mar.getFirstName()%></h4>
                                                <p class="text-secondary mb-1" >Marketing Staff</p>
                                                <input type="file" name="image" value="image" class="custom" accept="image/png, image/jpg, image/jpeg">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card mt-3">
                                </div>
                            </div>  



                            <div class="col-md-8">
                                <div class="card mb-6">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">First Name</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" class="form-control" id="fullName" value="<%=mar.getFirstName()%>" name="fname">
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Last Name</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" class="form-control" id="fullName" value="<%=mar.getLastName()%>" name="lname">
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Email</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" class="form-control" id="fullName" value="<%=mar.getEmail()%>" name="email">
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Age</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" class="form-control" id="fullName" value="<%=mar.getAge()%>" name="age">
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Phone Number</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" class="form-control" id="fullName" value="<%=mar.getPhone()%>" name="phone" maxlength="10">
                                            </div>
                                        </div>
                                        <hr>

                                        <%
                                            String noti = (String) request.getAttribute("noti");
                                        %>
                                        <%if (noti == null) {

                                            } else {%>
                                        <h7 style="color: #ff253a"><%=noti%></h7>
                                            <%}%>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <input class="btn btn-info"  type="submit" value="Update" name="submit">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </section>
                <jsp:include page="Footer.jsp"></jsp:include>



        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/jquery.timepicker.min.js"></script>
        <script src="js/scrollax.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>