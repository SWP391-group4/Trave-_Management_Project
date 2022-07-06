<%-- 
    Document   : Home
    Created on : Jun 3, 2022, 11:23:50 AM
    Author     : Nam
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link rel="stylesheet" href="css/search1.css">
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
    </head><!DOCTYPE html>
    <html lang="en">
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
            <link rel="icon" href="images/logo.png" type="">
            <link rel="stylesheet" href="css/bootstrap-datepicker.css">
            <link rel="stylesheet" href="css/jquery.timepicker.css">
            <link rel="stylesheet" href="css/search1.css">

            <link rel="stylesheet" href="css/flaticon.css">
            <link rel="stylesheet" href="css/icomoon.css">
            <link rel="stylesheet" href="css/style.css">
        </head>
        <body>
            <jsp:include page="Header.jsp"></jsp:include>
                <!-- END nav -->

                <div class="hero-wrap " style="background-image: url('images/bg_1.jpg');">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
                            <div class="col-md-12 ftco-animate mb-5 pb-5 text-center text-md-left" data-scrollax=" properties: { translateY: '70%' }">
                                <form action="menu.jsp" class="searchcheck" >
                                    <input type="search" name="search" placeholder="        Where do you want to go ?" pattern=".*\S.*" required>
                                    <button class="search-btn" type="submit">
                                        <span></span>
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <section >
                    <div class="row" style="margin-top:20px ;margin-left: 90px;color: #000000">
                        <h3 style="font-weight: bold;font-style: italic">Welcome to CTU Travel !</h3>
                    </div>
                </section>
                <p style="margin-left: 90px">Book accommodation, homestays, experiences and more on CTU Travel.</p>
                <a href="login" style="margin-left: 90px">Login &nbsp;</a>or &nbsp;<a href="registerCustomer">Register &nbsp;</a> to experience the best !
                <section >
                    <div class="row" style="margin-top:40px ;margin-left: 90px;color: #000000">
                        <h3 style="font-weight: bold;font-style: italic">Favorite Destination </h3>
                        <br>

                    </div>
                    <p style="margin-left: 90px" >  Join CTU Travel to start your journey to conquer the world.</p>
                </section>
                <section class="" >

                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="carousel-testimony owl-carousel ftco-owl">
                                <c:forEach items="${lists}" var="c">
                                    <div class="item">
                                        <a  href="menu.jsp" >
                                            <div class="testimony-wrap p-4 pb-5">
                                                <div style="width: 301px;height:336px ;background-image: url(images/${c.sliderImage})">
                                                    <h3 style="color: #FFF;padding-left: 40px;padding-top: 240px;font-weight: bold; font-style: italic; ">${c.sliderName}</h3>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </c:forEach>
                            </div> 
                        </div> 
                    </div>
            </section>
            <section >
                <div class="row" style="margin-top:20px ;margin-left: 90px;color: #000000">
                    <h3 style="font-weight: bold;font-style: italic">Exclusive Vouchers</h3>
                </div>
            </section>
            <p style="margin-left: 90px">Only at CTU Travel, attractive and limited, book now!</p>

            <section class="" >

                <div class="container">
                    <div class="col-md-12" style="text-align: right;text-decoration: underline;">
                        <a href="home.jsp">See All</a>
                    </div>
                    <br>
                    <div class="row">
                        <c:forEach items="${list3v}" var="c">
                            <div class="col-md-4">                         
                                <a href="home.jsp">
                                    <img style="width: 360px;height: 280px;border-radius: 15px" src="images/${c.image}">
                                </a>                          
                            </div>   
                        </c:forEach>
                    </div>
            </section>
            <section >
                <div class="row" style="margin-top:20px ;margin-left: 90px;color: #000000">
                    <h3 style="font-weight: bold;font-style: italic">Blogs</h3>
                </div>
            </section>
            <p style="margin-left: 90px">Let each trip be an inspirational journey, each room a peaceful space!</p>

            <section class="" >

                <div class="container">
                    <div class="col-md-12" style="text-align: right;text-decoration: underline;">
                        <a href="home.jsp">See All</a>
                    </div>
                    <br>
                    <div class="row">
                        <c:forEach items="${list3b}" var="c">
                            <div class="col-md-4">
                                <a href="home.jsp">
                                    <div style="width: 366px;height: 289px ; ;background-image: url(images/${c.image});background-position:center;background-size: cover">
                                        <p style="color: #FFF;text-align: center;padding-top: 20px;background:rgba(0,0,0,0.5)">HomeStay Information</p>
                                        <h6 style="color: #FFF;text-align: center;margin-top: 158px;background:rgba(0,0,0,0.5)">${c.title}</h6>
                                    </div>
                                </a>
                            </div> 
                        </c:forEach>
                    </div>
            </section>
            <br> <br> <br>

            <section class="ftco-section-parallax">
                <div class="parallax-img d-flex align-items-center">
                    <div class="container">
                        <div class="row d-flex justify-content-center">
                            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                                <h2>Subcribe to our Newsletter</h2>
                                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in</p>
                                <div class="row d-flex justify-content-center mt-5">
                                    <div class="col-md-8">
                                        <form action="#" class="subscribe-form">
                                            <div class="form-group d-flex">
                                                <input type="text" class="form-control" placeholder="Enter email address">
                                                <input type="submit" value="Subscribe" class="submit px-3">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <footer class="ftco-footer ftco-bg-dark ftco-section">
                <div class="container">
                    <div class="row mb-5">
                        <div class="col-md">
                            <div class="ftco-footer-widget mb-4">
                                <h2 class="ftco-heading-2">Adventure</h2>
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
            <script src="js/extention/choices.js"></script>
            <script>
                                    const choices = new Choices('[data-trigger]',
                                            {
                                                searchEnabled: false,
                                                itemSelectText: '',
                                            });

            </script>
        </body>
    </html>
