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
                <div style="padding-bottom: 12px;margin-top: 30px ">
                    <a href="Home">Home ></a>

                    <a href="#" style="color: #000">List Voucher</a>
                </div>
            </div>
             
            <div class="s004">
                <form action="SearchListVoucher">
                    <div>
                        <h1 style="color: #f9be37;text-align: center;font-style: italic ">Vouchers</h1>
                        <div class="inner-form">
                            <div class="input-field">
                                <input type="text" value="" method="get" name="name" class="form-control"  id="choices-text-preset-values" type="text" placeholder="Which voucher you want to looking for ?" />
                                <button class="btn-search" type="submit" value="Search" name="Search">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                    <path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path>
                                    </svg>
                                </button>
                            </div>
                        </div>

                    </div>
                </form>
            </div>

            <section class="ftco-section">
                <div class="container">

                    <div class="row">
                        <div class="col-lg-12 order-md-last">
                            <div class="row">
                            <c:forEach items="${list}" var="c">
                                <div class="col-md-4">
                                    <a href="VoucherDetail">
                                        <div style="text-align:center;width: 361px;height: 385px;box-shadow: 1px 1px #d6d6d6 ;margin: 3px;padding: 0px;margin-bottom:20px;border: 1px solid #d6d6d6; background: #fefefe" >                                                                
                                            <img style="width: 360px;height: 280px;margin-bottom: 10px" src="images/${c.image}">
                                            <h5 style="font-weight: 500; font-size: 1rem;">${c.title}</h5>  
                                            <h5 style="font-weight: 500; font-size: 1rem;padding-top: 10px;color: #d43f3a">Discount: ${c.discount}%</h5>  
                                        </div>   
                                    </a> 
                                </div>
                            </c:forEach>
                        </div>
                        <div class="row mt-5">
                            <div class="col text-center">
                                <div class="block-27">
                                    <ul>
                                        <c:forEach begin="1" end="${endPage}" var="i">
                                            <li class="${page==i?"active":""}"><a href="ListAllVoucher?page=${i}">${i}</a></li>
                                            </c:forEach>       
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div> <!-- .col-md-8 -->
                </div>
            </div>
        </section> <!-- .section -->



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