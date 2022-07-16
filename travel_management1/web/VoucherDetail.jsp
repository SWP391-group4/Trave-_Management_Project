<%-- 
    Document   : VoucherDetail
    Created on : Jul 16, 2022, 1:39:03 PM
    Author     : nam
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>CTU Travel</title>
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

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">

        <link rel="icon" href="images/logo.png" type="">
        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/BlogSearch.css">
        <jsp:include page="Header.jsp"></jsp:include>
        </head>
        <body>
            <div style="margin-left: 120px">
                <div style="padding-bottom: 100px;margin-top: 30px">
                    <a href="Home">Home ></a>

                    <a href="ListAllVoucher">List Voucher ></a>
                    <a href="#" style="color: #000">Detail Voucher </a>
                </div>
            </div>
            <div class="col-lg-12 order-md-last" style="margin-left: 205px;margin-bottom: 80px">
            <c:forEach items="${v}" var="c">

                <form action="VoucherDetail">
                    <div class="row">
                        <img src="images/${c.image}" style="width: 400px;height: 320px;margin-left: 70px;margin-top: 8px">
                        <div style="width: 40%;margin-left: 100px;">
                            <h5 > ${c.title}</h5>
                            <p>${c.description} </p>
                            <p style="color: #f71926">Discount: ${c.discount}%</p>
                            <br>                        
                            <input type="hidden" name="go" value="Insert">
                            <button style="color:#fff;background: #4e73df;border-radius: 5px;border-style: none;padding-left: 10px;padding-right: 10px">Save</button>                                                                      
                        </div>
                    </div>
                </form>

            </c:forEach>
        </div>
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