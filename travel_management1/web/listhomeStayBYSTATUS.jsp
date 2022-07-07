
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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



        <jsp:include page="Header.jsp"></jsp:include>

            <section class="ftco-section">
                <div class="container">
                    <div style="padding-bottom: 25px ">
                        <a href="home">Home ></a>

                        <a href="#">List</a>
                    </div>
                </div>
                <div class="container ">
                    <div class="row">
                        <div class="col-lg-3 sidebar  ftco-animate"style="">
                            <div class="sidebar-wrap ftco-animate">
                                <h3 class="heading mb-4">Find City</h3>
                                <form action="searchHomeStay">
                                    <div class="fields">
                                        <div class="form-group">
                                            <input type="text" value=""${txtsearch} method="get" name="txt" class="form-control" placeholder="Destination, City">
                                    </div>
                                    <div class="form-group">
                                        <input type="text"  value=""${txtSearchname} method="get" name="txtname" class="form-control" placeholder="HomeStay Name">
                                    </div>
                                    <div class="form-group">
                                        <div class="select-wrap one-third">
                                            <div class="icon"><span></span></div>
                                            <!--                                            <select name="" id="" class="form-control" placeholder="Keyword search">
                                                                                            <option value="">Select Location</option>
                                                                                            <option value="">San Francisco USA</option>
                                                                                            <option value="">Berlin Germany</option>
                                                                                            <option value="">London United Kingdom</option>
                                                                                            <option value="">Paris Italy</option>
                                                                                        </select>-->
                                        </div>
                                    </div>
                                    <!--                                    <div class="form-group">
                                                                            <input type="text" id="checkin_date" class="form-control checkin_date" placeholder="Date from">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <input type="text" id="checkout_date" class="form-control checkout_date" placeholder="Date to">
                                                                        </div>-->
                                    <div class="form-group">
                                        <div class="range-slider">
                                            <span>
                                                <input type="number" value="25000" min="0" max="120000"/>	-
                                                <input type="number" value="50000" min="0" max="120000"/>
                                            </span>

                                            </svg>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Search" class="btn btn-primary py-3 px-5" name="Search">
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="card bg-dark mb-3">
                            <div class="card-header bg-warning text-dark text-uppercase"><i class="fa fa-list"></i>  Categories</div>
                            <ul class="list-group category_block">
                                <c:forEach items="${listC}" var="c">
                                    <li class="list-group-item text-white ${act1==c.cateId ?"active":""}"> <a href="category?cid=${c.cateId}">${c.cateName}</a></li>
                                    </c:forEach>

                            </ul>

                        </div>
                        <div class="card bg-dark mb-3">
                            <div class="card-header bg-warning text-dark text-uppercase"><i class="fa fa-list"></i> Status</div>
                            <ul class="list-group category_block">

                                <li class="list-group-item "> <a href="getbysts?status=1">Avaiable</a></li>
                                <li class="list-group-item "> <a href="getbysts?status=0">Booked</a></li>

                            </ul>
                        </div>
                        <div class="sidebar-wrap ftco-animate ">
                            <h3 class="heading mb-4">Star Rating</h3>
                            <form method="post" class="star-rating">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">
                                        <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i></span></p>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">
                                        <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i></span></p>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">
                                        <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">
                                        <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">
                                        <p class="rate"><span><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
                                    </label>
                                </div>
                            </form>
                        </div>
                    </div><!-- END-->


                    <div class="col-lg-9 order-md-last" >
                        <div class="row">
                            <c:forEach items="${listSS}" var="o">
                                <div class="col-sm col-md-6 col-lg-12 ftco-animate"style=" margin: 0 10px 20px 10px">
                                    <div class="destination" style="display: inline-flex">
                                        <a href="HomeStayDetailController?homeStayID=${o.homeStayID}" class="img img-2 d-flex justify-content-center align-items-center col-lg-4 d-inline" style="border-radius: 10px;background-image: url(images/hotel-1.jpg);">
                                            <div class="icon d-flex justify-content-center align-items-center">

                                                <span class="icon-link"></span>
                                            </div>
                                        </a>

                                        <div class="text p-3 col-lg-8">
                                            <div class="d-flex">

                                                <div class="one">
                                                    <h3><a href="#"></a>${o.getHomeStayname()}</h3>
                                                        ${o.cateName}
                                                    <p class="rate">
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star-o"></i>
                                                        <span>8 Rating</span>
                                                    </p>
                                                    <c:if test="${o.status==1}">
                                                        <span class="badge bg-success text-light">

                                                            Ready
                                                        </span>
                                                    </c:if>
                                                    <c:if test="${o.status==0}">
                                                        <span class="badge bg-secondary text-light">

                                                            Booked
                                                        </span>
                                                    </c:if>
                                                    <p> Price: ${o.price} dong</p>
                                                </div>

                                            </div>
                                            <span class="ml-auto"><svg xmlns="" width="1" height="16" fill="currentColor" class="" viewBox="0 0 16 16">

                                                </svg><i class="icon-map-o ml-auto"></i>  ${o.specific},${o.ward},${o.city} </span>

                                            <hr>
                                            <p class="bottom-area d-sm-flex">

                                                <span class="ml-auto"><i class="" style="display: inline" >
                                                    </i>

                                                    <a href="HomeStayDetailController?homeStayID=${o.homeStayID}">Detail</a></span>
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
                                        
                                        <c:forEach  begin="1" end="${endPage}" var="i" >
                                            <li class="${tag==i?"active":""}"><a href="getbysts?status=${act}&index=${i}">${i}</a></li>
                                            </c:forEach>

                                    </ul>

                                </div>
                            </div>
                        </div>

                    </div>

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