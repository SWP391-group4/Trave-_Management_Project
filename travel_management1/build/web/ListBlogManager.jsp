<%-- 
    Document   : MarketingManager.jsp
    Created on : Jul 4, 2022, 7:56:36 PM
    Author     : nam
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="Entity.MarketingImage"%>
<%@page import="Entity.Marketing"%>
<%@page import="Entity.Admins"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Marketing Manager</title>
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
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <!-- END nav -->
            <br>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container">
                    <a class="navbar-brand active"  href="MarketingProfileController">Account Information</a>
                    <a class="navbar-brand"style="color: #eea236" href="#">Marketing Manager</a>
                </div>
            </nav>
            <section style="padding-top: 10px;margin-top: 20px;margin-bottom: 0px;padding-bottom: 0px">
                <!-- Page Wrapper -->
                <div id="wrapper">

                    <!-- Sidebar -->
                    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
                        <br>
                        <!-- Sidebar - Brand -->
                        <h4 style="color: #fff;text-align: center">Manager Bar</h4>
                        <!-- Divider -->
                        <hr class="sidebar-divider my-0">

                        <!-- Nav Item - Dashboard -->
                        <li class="nav-item " >
                            <a class="nav-link" href="MarketingManager">
                                <i class="fas fa-fw fa-tachometer-alt"></i>
                                <span>Dashboard</span></a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="SliderManager">
                                <i class="fas fa-fw fa-chart-area"></i>
                                <span>Slider Manager</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="BlogsManager">
                                <i class="fas fa-fw fa-table"></i>
                                <span>Blogs Manager</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="tables.html">
                                <i class="fas fa-fw fa-table"></i>
                                <span>Voucher Manager</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="tables.html">
                                <i class="fas fa-fw fa-table"></i>
                                <span>Change Password</span></a>
                        </li>
                        <!-- Divider -->
                        <hr class="sidebar-divider d-none d-md-block">

                        <!-- Sidebar Toggler (Sidebar) -->
                        <div class="text-center d-none d-md-inline">
                            <button class="rounded-circle border-0" id="sidebarToggle"></button>
                        </div>

                        <!-- Sidebar Message -->


                    </ul>

                    <!-- End of Sidebar -->

                    <!-- Content Wrapper -->
                    <div id="content-wrapper" class="d-flex">
                        <div id="content">
                            <div class="container">
                            </div>
                            <div >
                                <div class="row">

                                    <!-- Content Column -->
                                    <div class="col-lg-12 mb-4 col-md-6">

                                        <!-- Project Card Example -->
                                        <div class="card shadow mb-4" style="text-align: center">
                                            <div class="card-header py-3"  >
                                                <h6 class="m-0 font-weight-bold text-primary">Blogs Home Page</h6>
                                            </div>
                                            <div class="card-body">
                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Id</th>
                                                            <th scope="col">Image</th>
                                                            <th scope="col">Title</th>
                                                            <th scope="col">Update</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                    <c:forEach items="${list}" var="c">
                                                        <tr>
                                                            <td>${c.sliderID}</td>
                                                            <td><img src="images/${c.sliderImage}" style="width: 90px ;height:102px "></td>
                                                            <td>${c.sliderName}</td>
                                                            <td><a href="SliderManager?go=Update&sliderID=${c.sliderID}">Update</a></td>
                                                        </tr>
                                                    </c:forEach>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- /.container-fluid -->

                    </div>
                    <!-- End of Main Content -->


                    <!-- Logout Modal-->

                </div>
                <br>
                </section> 
                <footer class="ftco-footer ftco-bg-dark ftco-section" >
                    <div class="container">
                        <div class="row mb-5">
                            <div class="col-md">
                                <div class="ftco-footer-widget mb-4">
                                    <h2 class="ftco-heading-2">OhYeah</h2>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                                        <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md">
                                <div class="ftco-footer-widget mb-4 ml-md-4">
                                    <h2 class="ftco-heading-2">Information</h2>
                                    <ul class="list-unstyled">
                                        <li><a href="#" class="py-2 d-block">About Us</a></li>
                                        <li><a href="#" class="py-2 d-block">Online enquiry</a></li>
                                        <li><a href="#" class="py-2 d-block">Call Us</a></li>
                                        <li><a href="#" class="py-2 d-block">General enquiries</a></li>
                                        <li><a href="#" class="py-2 d-block">Booking Conditions</a></li>
                                        <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
                                        <li><a href="#" class="py-2 d-block">Refund policy</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md">
                                <div class="ftco-footer-widget mb-4">
                                    <h2 class="ftco-heading-2">Experience</h2>
                                    <ul class="list-unstyled">
                                        <li><a href="#" class="py-2 d-block">Beach</a></li>
                                        <li><a href="#" class="py-2 d-block">Adventure</a></li>
                                        <li><a href="#" class="py-2 d-block">Wildlife</a></li>
                                        <li><a href="#" class="py-2 d-block">Honeymoon</a></li>
                                        <li><a href="#" class="py-2 d-block">Nature</a></li>
                                        <li><a href="#" class="py-2 d-block">Party</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md">
                                <div class="ftco-footer-widget mb-4">
                                    <h2 class="ftco-heading-2">Have a Questions?</h2>
                                    <div class="block-23 mb-3">
                                        <ul>
                                            <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
                                            <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                                            <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 text-center">

                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                            </div>
                        </div>
                    </div>
                </footer>


                <!-- loader -->
                <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

                <!-- Bootstrap core JavaScript-->
                <script src="vendor/jquery/jquery.min.js"></script>
                <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

                <!-- Core plugin JavaScript-->
                <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

                <!-- Custom scripts for all pages-->
                <script src="js/sb-admin-2.min.js"></script>

                <!-- Page level plugins -->
                <script src="vendor/chart.js/Chart.min.js"></script>

                <!-- Page level custom scripts -->
                <script src="js/demo/chart-area-demo.js"></script>
                <script src="js/demo/chart-pie-demo.js"></script>
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
