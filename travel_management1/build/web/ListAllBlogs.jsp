<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>CTU - Travel Booking</title>
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
    
	<jsp:include page="Header.jsp"></jsp:include>
    <!-- END nav -->
    


    <section class="ftco-section">
        <div class="container">
            <div class="col-lg-4 sidebar order-md-last ftco-animate">
                <div class="sidebar-wrap ftco-animate">
                    <h3 class="heading mb-4">Search Blog</h3>
                    <form action="BlogSearch">
                        <div class="fields">
                            <div class="form-group">
                                <div class="form-group">
                                    <input  type="text" value="${txtsearch}" method="get" name="txt" class="form-control" placeholder="Blog Title">
                            </div>
                        </div>


                        <div class="form-group">
                            <input type="submit" value="Search" class="btn btn-primary py-3 px-5">
                        </div>
                    </div>
                </form>
            </div>

        </div>
        <div class="row">

            <!--            <div class="col-lg-3 sidebar order-md-last ftco-animate">
                            <div class="sidebar-wrap ftco-animate">
                                <h3 class="heading mb-4">Find City</h3>
                                <form action="BlogSearch">
                                    <div class="fields">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <input  type="text" value="${txtsearch}" method="get" name="txt" class="form-control" placeholder="Destination, City">
                                        </div>
                                    </div>
            
            
                                    <div class="form-group">
                                        <input type="submit" value="Search" class="btn btn-primary py-3 px-5">
                                    </div>
                                </div>
                            </form>
                        </div>
            
                    </div> -->
            <!--                            END-->
            <div class="col-lg-12 order-md-last">
                <div class="row">
                    <c:forEach items="${list}" var="a">
                        <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                            <div class="destination">
                                <a href="#" class="img img-2 d-flex justify-content-center align-items-center"  style="border-radius: 10px;background-image: url(images/${a.image});">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="icon-link"></span>
                                    </div>
                                </a>
                                <div class="text p-3">
                                    <div class="d-flex">
                                        <div class="one">
                                            <h3><a href="#">${a.title}</a></h3>

                                            <h4 style="font-size: 15px">Author:</h4>
                                            <p class="rate">
                                                ${a.accountM}

                                            </p>
                                        </div>
                                        <div class="two">

                                        </div>
                                    </div>
                                    <!--		    						<div style="width: 50px; text-overflow: ellipsis; white-space: nowrap;overflow: hidden;">
                                                                                                    </div>-->
                                    <hr>
                                    <p class="bottom-area d-flex">
                                        <span><i class="icon-map-o"></i> Date</span> 
                                        <span class="ml-auto"><a href="#">Detail</a></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>


                <div class="row mt-5">
                    <div class="col text-center">
                        <div class="block-27">
                            <ul>
                                <c:forEach begin="1" end="${endPage}" var="i">
                                    <li class="${tag==i?"active":""}"><a href="blogController?index=${i}">${i}</a></li>
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