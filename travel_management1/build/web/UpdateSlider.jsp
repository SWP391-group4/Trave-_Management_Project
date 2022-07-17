<%-- 
    Document   : MarketingPassword.jsp
    Created on : Jul 4, 2022, 7:56:36 PM
    Author     : nam
--%>
<%@page import="Entity.Slider"%>
<%@page import="java.util.List"%>
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
        <link rel="stylesheet" href="css/insertnew.css">
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
                        <li class="nav-item active">
                            <a class="nav-link " href="SliderManager">
                                <i class="fas fa-fw fa-chart-area"></i>
                                <span>Slider Manager</span></a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="BlogsManager">
                                <i class="fas fa-fw fa-table"></i>
                                <span>Blogs Manager</span></a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="VoucherManager">
                                <i class="fas fa-fw fa-table"></i>
                                <span>Voucher Manager</span></a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="MarketingPassword">
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
                                        <div class="card shadow mb-4" >
                                            <div class="card-header py-3"  style="text-align: center ">
                                                <h6 class="m-0 font-weight-bold text-primary"> Update Slider </h6>
                                            </div>                 
                                        <% String s = (String) request.getAttribute("s");%>
                                        <% String img = (String) request.getAttribute("img");%>
                                        <% String sliderID = (String) request.getAttribute("sliderID");%>
                                        <% List<String> list = (List<String>) request.getAttribute("list");%>
                                        <div class="container">
                                            <div class="login-box"  style="margin-top: 260px;width: 50%" >
                                                <form  action="SliderManager" method="Post" enctype="multipart/form-data">
                                                    <input type="hidden" name="go" value="Update">
                                                    <input type="hidden" name="sliderID" value="<%=sliderID %>">
                                                    <label style="font-size: 18px;color: #4e73df">City</label>
                                                    <select style="margin-left: 15px" name="city"> 
                                                        <%for (String c : list) {
                                                                if (c.equals(s)) {
                                                        %>
                                                        <option selected value="<%=c%>"><%=c%></option>
                                                        <%} else {%>
                                                        <option value="<%=c%>"><%=c%></option>
                                                        <%}
                                                            }%>
                                                    </select>
                                                    <div class="user-box">
                                                        <label  style="font-size: 18px">Image</label>
                                                        <br>
                                                        <br>
                                                    </div>
                                                    <img src="images/<%=img%>" style="width: 160px ;height:172px ">
                                                    <br>
                                                    <br>
                                                    <div  style="font-size:14px;background: #fff"> 
                                                        <input type="file" name="image" >
                                                    </div> 
                                                    <div style="text-align: center">
                                                        <input class="btn btn-info" style="margin-top: 20px;background: #4e73df;border-style: unset"  type="submit" value="Update" name="submit"> 
                                                    </div>

                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End of Main Content -->


                        <!-- Logout Modal-->

                    </div>
                    <br>
                    </section> 
                            <jsp:include page="Footer.jsp"></jsp:include>


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
