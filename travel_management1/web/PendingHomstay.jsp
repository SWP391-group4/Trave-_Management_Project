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
            <a href="PendingRegister" class="btn btn-success btn-sm">< Back</a>&nbsp;
            <div class="media align-items-center py-3 mb-3 col-md-8">
                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="d-block ui-w-100 rounded-circle col-md-3">
                <div class="media-body ml-4 col-md-9">
                    <h4 class="font-weight-bold mb-0">${supplier.firstName} ${supplier.lastName}</h4>
                    <div><span class="text-muted font-weight-normal">Email: ${supplier.email}</span></div>
                    <div class="text-muted mb-2">Fax: ${supplier.fax}</div>
                    <div class="text-muted mb-2">Phone: ${supplier.phone}</div>
                </div>
            </div>
            <!--Homestay-->
            <div class="container" id="homestay">
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

                            </tbody>
                        </table>
                    </div>
                    <hr class="border-light m-0">
                    <!--Images here-->
                    <div class="row col-md-12">
                        <div class="col-md-6">
                            <img src="images/hotel-1.jpg" alt="alt"class="w-100"/>
                        </div>
                        <div class="col-md-6">
                            <img src="images/hotel-1.jpg" alt="alt" class="w-100"/>
                        </div>
                    </div>
                    <hr>
                </div>

                <div class="card">

                    <hr class="border-light m-0">

                    <div class="card-body">

                        <table class="m-0 user-view-table">
                            <tbody>
                            <thead>
                            <th>Furniture:</th>
                            <td> ${homestayDetail.livingRoomQty} Living room</td>
                            </thead>
                            <tr>
                                <td></td>
                                <td>${homestayDetail.kitchenQty} Kitchen</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>${homestayDetail.bedRoomQty} Bedroom (${homestayDetail.bedQty} beds)</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>${homestayDetail.bathRoomQty} Bathroom</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                            </tr>
                            </tbody>
                        </table>
                        <hr>
                        <table class="m-0 user-view-table">
                            <tbody>
                            <thead>
                            <th>Extension:</th>
                            <td></td>
                            </thead>
                            <c:forEach items="${extension}" var="list">
                                <tr>
                                    <td></td>
                                    <td> ${list}</td>
                                </tr>
                            </c:forEach>
                            <tr>
                                <td></td>
                                <td></td>
                            </tr>
                            </tbody>
                        </table>

                        <hr>
                        <table class="m-0 user-view-table">
                            <tbody>
                            <thead>
                            <th>Rule:</th>
                            <td> ${rule}</td>
                            </thead>

                            <tr>
                                <td></td>
                                <td></td>
                            </tr>
                            </tbody>
                        </table>

                        <table class="table user-view-table m-0">
                            <th>Price: </th>
                            <td ></td>
                        </table>
                    </div>
                    <button class="btn btn-success">Activate Homestay</button>
                </div>  

            </div>
        </div>

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
