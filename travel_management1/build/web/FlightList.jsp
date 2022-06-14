<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
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

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>

        <nav class="navbar navbar-expand-lg  ftco_navbar navbar-light ftco-navbar-dark "" id="ftco-navbar" style="background: #f9be37">
            <div class="container" style="color: #000000;background: #f9be37">
                <a class="navbar-brand" href="index.html">Adventure</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav" style="font-weight: bolder  ">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
                        <li class="nav-item"><a href="places.html" class="nav-link">Places</a></li>
                        <li class="nav-item active"><a href="hotel.html" class="nav-link">Flights</a></li>
                        <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
                        <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
                        <li class="nav-item" <i class="fa fa-sign-in" aria-hidden="true"></i><a href="login.html" class="nav-link">Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->



        <section class="ftco-section" style="background: #f7f7f7">
            <div class="container">
                <div style="padding-bottom: 25px ">
                    <a href="#">Home Flights ></a>

                    <a href="#" > List Flights</a>
                </div>
            </div>
            <div class="container" >
                <h8 style="background: #34c0e7;color: white;padding: 5px;border-radius: 5px;font-weight: bolder;  " >Departures</h8>
                <h3 style=" font-weight: bolder;color: #000000  ">HA NOI - DA NANG</h3>
                <h5>(34 Flight)</h5>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-lg-3 sidebar " style="background: #FFF">
                        <div class="sidebar-wrap ftco-animate">
                            <h4 style="font-weight: bold;text-align: center;margin-top: 15px">FILTER</h4>
                            <hr>
                            <form action="#">
                                <div class="fields">                                    
                                    <div class="select-wrap one-third">
                                        <h3 class="heading mb-4" style="margin-top: 15px">Airline</h3>
                                        <input type="checkbox" style="transform: scale(2);margin-left: 10px">
                                        <label style=" margin-left: 10px;color: #000000">Vietjet Air</label>

                                    </div>
                                    <hr>
                                    <div class="select-wrap one-third">
                                        <h3 class="heading mb-4" style="margin-top: 15px">Ticket</h3>
                                        <input type="checkbox" style="transform: scale(2);margin-left: 10px">
                                        <label style="margin-left: 10px;color: #000000">First Class</label>

                                    </div>
                                    <hr>
                                    <div class="select-wrap one-third">
                                        <h3 class="heading mb-4" style="margin-top: 15px">Time</h3>
                                        <input type="checkbox" style="transform: scale(2);margin-left: 10px" >
                                        <h9 style="margin-left: 10px;color: #34c0e7">(00:00-06:00)</h9>
                                        <label style="color: #000000">Early Morning </label>                                                                             
                                        <br>
                                        <input type="checkbox" style="transform: scale(2);margin-left: 10px" >
                                        <h9 style="margin-left: 10px;color: #34c0e7">(06:00-12:00)</h9>
                                        <label style="color: #000000"> Morning </label>                                   
                                        <br>
                                        <input type="checkbox" style="transform: scale(2);margin-left: 10px" >
                                        <h9 style="margin-left: 10px;color: #34c0e7">(12:00-18:00)</h9>
                                        <label style="color: #000000">Afternoon </label>
                                        <br>
                                        <input type="checkbox" style="transform: scale(2);margin-left: 10px" >
                                        <h9 style="margin-left: 10px;color: #34c0e7">(18:00-24:00)</h9>
                                        <label style="color: #000000">Evening </label>

                                    </div>
                                    <hr>
                                    <div class="form-group">
                                        <h3 class="heading mb-4"> Price</h3>
                                        <div class="range-slider">
                                            <span>
                                                <input type="number" value="0" min="0" max="120000"/>	-
                                                <input type="number" value="50000" min="0" max="120000"/>
                                            </span>
                                            <input value="0" min="0" max="120000" step="500" type="range"/>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Search" class="btn btn-primary py-3 px-5">
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div><!-- END-->
                    <div class="col-lg-9"  >
                        <div class="row" >
                            <div class="col-sm col-md-24 col-lg-12 ftco-animate "  >
                                <div class="destination" >
                                    <%
                                        ResultSet rs = (ResultSet) request.getAttribute("list");
                                    %> 
                                    <%while (rs.next()){%>
                                    <div class="text p-3" style="margin-bottom: 15px">
                                        <div class="d-flex">
                                            <div class="one">

                                                <img style="width:32px;height:32px;" src="images/VietJets.png"> 
                                                <h7 style="font-weight: bold" ><a href="#"><%=rs.getString(4)%></a></h7>
                                                <div>
                                                    <h9><a>VJ162/ Airbus A320</a></h9>
                                                </div>
                                                <br>
                                                <P style=" font-weight: unset;color: #EF3159">From <%=rs.getString(8) %> to <%=rs.getString(9)%></P>

                                            </div>
                                            <div class="one">
                                                <h7 style=" font-weight: bold;">23:30 </h7>                                               
                                                <img style="width:35px;height:35px;margin-left: 15px;margin-right: 15px" src="images/maybay.png"> 
                                                <h7 style=" font-weight: bold;">00:20 </h7>
                                                <h9 style="color: lightcoral">(+1d) </h9>
                                            </div>
                                            <div class="one">
                                                <span style="color:darkturquoise;font-weight: bolder;margin-left: 30px;font-size: 24px"><%=rs.getInt(6)%> VND</span>
                                            </div>
                                        </div>

                                        <hr>
                                        <p class="bottom-area d-flex">
                                            <span><i class="icon-map-o"></i>  First Class</span> 
                                            <span class="ml-auto"><a href="#">Book Now</a></span>
                                        </p>
                                    </div>
                                    <%}%>
                                </div>
                            </div>
                        </div> 

                        <div class="row mt-5">
                            <div class="col text-center">
                                <div class="block-27">
                                    <ul>

                                        <li class="active"><span>1</span></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- .col-md-8 -->
                    </div>
                </div>
            </div>
        </section> <!-- .section -->

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

    </body>
</html>