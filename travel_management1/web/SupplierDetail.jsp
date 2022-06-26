<%-- 
    Document   : SupplierDetail
    Created on : Jun 22, 2022, 5:26:16 PM
    Author     : phams
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Adventure - Free Bootstrap 4 Template by Colorlib</title>
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

        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/SupplierDetail.css">
    </head>
    <body>

        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
        <div class="container bootdey flex-grow-1 container-p-y">
            <a href="AdminManageSupplierList" class="btn btn-success btn-sm">< Back</a>&nbsp;
            <div class="media align-items-center py-3 mb-3 col-md-8">
                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="d-block ui-w-100 rounded-circle col-md-3">
                <div class="media-body ml-4 col-md-9">
                    <h4 class="font-weight-bold mb-0">Supplier Name<span class="text-muted font-weight-normal">@Email</span></h4>
                    <div class="text-muted mb-2">Fax</div>
                    <a href="javascript:void(0)" class="btn btn-primary btn-sm" onclick="supplierProfile()" >Profile</a>&nbsp;
                    <a href="javascript:void(0)" class="btn btn-success btn-sm" onclick="supplierHomestay()">Homestay</a>&nbsp;
                    <a href="javascript:void(0)" class="btn btn-default btn-sm icon-btn"><i class="fa fa-mail"></i></a>
                </div>
            </div>

            <div class="container" id="profile" style="display: block">


                <div class="card">

                    <hr class="border-light m-0" >
                    <div class="card-body">

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Username:</td>
                                    <td>${supplier.accountS}</td>
                                </tr>
                                <tr>
                                    <td>Name:</td>
                                    <td>${supplier.firstName} ${supplier.lastName}</td>
                                </tr>
                                <tr>
                                    <td>E-mail:</td>
                                    <td>${supplier.email}</td>
                                </tr>
                                <tr>
                                    <td>Fax: </td>
                                    <td>${supplier.fax}</td>
                                </tr>
                            </tbody>
                        </table>



                        <h6 class="mt-4 mb-3">Address</h6>

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Country:</td>
                                    <td>Viet Nam</td>
                                </tr>
                                <tr>
                                    <td>City (Province)</td>
                                    <td>${supplierAddress.city}</td>
                                </tr>
                                <tr>
                                    <td>Distric: </td>
                                    <td>${supplierAddress.district}</td>
                                </tr>
                                <tr>
                                    <td>Ward: </td>
                                    <td>${supplierAddress.specific}, ${supplierAddress.ward}</td>
                                </tr>
                            </tbody>
                        </table>

                        <h6 class="mt-4 mb-3">Contacts</h6>

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Phone:</td>
                                    <td>+${supplier.phone}</td>
                                </tr>
                            </tbody>
                        </table>

                        <h6 class="mt-4 mb-3">Interests</h6>

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Favorite music:</td>
                                    <td>
                                        Rock,
                                        Alternative,
                                        Electro,
                                        Drum &amp; Bass,
                                        Dance
                                    </td>
                                </tr>
                                <tr>
                                    <td>Favorite movies:</td>
                                    <td>
                                        The Green Mile,
                                        Pulp Fiction,
                                        Back to the Future,
                                        WALL·E,
                                        Django Unchained,
                                        The Truman Show,
                                        Home Alone,
                                        Seven Pounds
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>




            <!--Homestay-->
            <div class="container" id="homestay" style="display: none">
                <div class="card mb-4" >
                    <div class="card-body">

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Service name:</td>
                                    <td>${homestay.homeStayname}</td>
                                </tr>
                                <tr>
                                    <td>Type:</td>
                                    <td>${category.cateName}</td>
                                </tr>
                                <tr>
                                    <td>Verified:</td>
                                    <td><span class="fa fa-check text-primary"></span>&nbsp; Yes</td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td>${homestayAddress.specific}, ${homestayAddress.ward}, ${homestayAddress.district}, ${homestayAddress.city}</td>
                                </tr>
                                <tr>
                                    <td>Status:</td>
                                    <td><span class="badge badge-outline-success"></span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <hr class="border-light m-0">
                    <!--Images here-->
                </div>

                <div class="card">
                    <div class="row no-gutters row-bordered">
                        <div class="d-flex col-md align-items-center">
                            <a href="javascript:void(0)" class="card-body d-block text-body">
                                <div class="text-muted small line-height-1">Total</div>
                                <div class="text-xlarge">250</div>
                            </a>
                        </div>
                        <div class="d-flex col-md align-items-center">
                            <a href="javascript:void(0)" class="card-body d-block text-body">
                                <div class="text-muted small line-height-1">Turnover/Month</div>
                                <div class="text-xlarge">534</div>
                            </a>
                        </div>
                        <div class="d-flex col-md align-items-center">
                            <a href="javascript:void(0)" class="card-body d-block text-body">
                                <div class="text-muted small line-height-1">Evaluate</div>
                                <div class="text-xlarge">236</div>
                            </a>
                        </div>
                    </div>
                    <hr class="border-light m-0">
                    
                    <div class="card-body">

                        <table class="m-0 user-view-table">
                            <tbody>
                            <thead>
                            <th>Furniture:</th>
                            <td>2 Bathroom</td>
                            </thead>
                            <tr>
                                <td></td>
                                <td>1 Kitchen</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>Nelle Maxwell</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>nmaxwell@mail.com</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>Company Ltd.</td>
                            </tr>
                            </tbody>
                        </table>

                        <table class="m-0 user-view-table">
                            <tbody>
                            <thead>
                            <th>Extension:</th>
                            <td>2 Bathroom</td>
                            </thead>
                            <tr>
                                <td></td>
                                <td>1 Kitchen</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>Nelle Maxwell</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>nmaxwell@mail.com</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>Company Ltd.</td>
                            </tr>
                            </tbody>
                        </table>


                       

                       
                        <h6 class="mt-4 mb-3">Rule</h6>

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Favorite music:</td>
                                    <td>
                                        Rock,
                                        Alternative,
                                        Electro,
                                        Drum &amp; Bass,
                                        Dance
                                    </td>
                                </tr>
                                <tr>
                                    <td>Favorite movies:</td>
                                    <td>
                                        The Green Mile,
                                        Pulp Fiction,
                                        Back to the Future,
                                        WALL·E,
                                        Django Unchained,
                                        The Truman Show,
                                        Home Alone,
                                        Seven Pounds
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="table user-view-table m-0">
                            <th>Price: </th>
                            <td >1000$</td>
                        </table>
                    </div>
                </div>

            </div>
        </div>
        <script>
            function supplierProfile() {
                document.getElementById("profile").style.display = 'block';
                document.getElementById("homestay").style.display = 'none';
            }
            function supplierHomestay() {
                document.getElementById("profile").style.display = 'none';
                document.getElementById("homestay").style.display = 'block';
            }
        </script>
    </body>
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

</html>
