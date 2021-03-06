<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Abril+Fatface" rel="stylesheet">
        <link href="star/rateit.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/cmt.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
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
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.2/css/star-rating.min.css" />
    </head>
    <body>

        <jsp:include page="Header.jsp"></jsp:include>
            <!-- END nav -->

            <!--    <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_1.jpg');">
                  <div class="overlay"></div>
                  <div class="container">
                    <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
                      <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                        <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Hotel</span></p>
                        <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Hotels</h1>
                      </div>
                    </div>
                  </div>
                </div>-->

            <section class="ftco-section ftco-degree-bg">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-9">
                            <div class="row">
                                <div class="col-md-12 ftco-animate">
                                    <div class="single-slider owl-carousel">
                                    <c:forEach items="${img}" var="o" >
                                        <div class="item">
                                            <div class="hotel-img" style="background-image: url(images/${o.imageUrl});"></div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <c:if test="${sessionScope.acc!=null}">  
                                <div class="fields">
                                    <div class="form-group">
                                        
                                        <a href="bookingController?homeStayId=${detail.homeStayID}"> 
                                            <input type="submit" href="bookingController" value="Booking" class="btn btn-primary py-3 px-5">
                                        </a>
                                    </div>
                                </div>        
                            </c:if>
                            <c:if test="${sessionScope.acc==null}">
                                <div class="fields">

                                    <div class="form-group">
                                        <a href="login"> <input type="button"   onclick=" alert('You must to login first!')" value="Booking" class="btn btn-primary py-3 px-5">
                                        </a>
                                    </div>
                                </div>
                            </c:if>
                            <div class="col-md-12 hotel-single mt-4 mb-5 ftco-animate">
                                <h2>${detail.homeStayname}</h2>
                                <span>Our Best hotels &amp; Rooms</span>

                                <p class="rate mb-5">
                                    <span class="loc"><a href="#"><i class="icon-map"></i>${detail.specific},${detail.ward},${detail.city}</a></span>

                                    <span>8 Rating</span>
                                    <c:if test="${detail.star==1}">
                                    <p class="rate">
                                        <i class="icon-star"></i>
                                        <i class="icon-star-o"></i>
                                        <i class="icon-star-o"></i>
                                        <i class="icon-star-o"></i>
                                        <i class="icon-star-o"></i>

                                    </p>
                                </c:if>
                                <c:if test="${(detail.star<2)&&(detail.star>1)}">
                                    <p class="rate">
                                        <i class="icon-star"></i>
                                        <i class="icon-star-half"></i>
                                        <i class="icon-star-o"></i>
                                        <i class="icon-star-o"></i>
                                        <i class="icon-star-o"></i>

                                    </p>
                                </c:if>
                                <c:if test="${detail.star==2}">
                                    <p class="rate">
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star-o"></i>
                                        <i class="icon-star-o"></i>
                                        <i class="icon-star-o"></i>

                                    </p>
                                </c:if>
                                <c:if test="${(detail.star<3)&&(detail.star>2)}">
                                    <p class="rate">
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star-half"></i>
                                        <i class="icon-star-o"></i>
                                        <i class="icon-star-o"></i>

                                    </p>
                                </c:if>
                                <c:if test="${detail.star==3}">
                                    <p class="rate">
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star-o"></i>
                                        <i class="icon-star-o"></i>

                                    </p>
                                </c:if>
                                <c:if test="${(detail.star<4)&&(detail.star>3)}">
                                    <p class="rate">
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star-half"></i>
                                        <i class="icon-star-o"></i>

                                    </p>
                                </c:if>
                                <c:if test="${detail.star==4}">
                                    <p class="rate">
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star-o"></i>

                                    </p>
                                </c:if>
                                <c:if test="${detail.star==5}">
                                    <p class="rate">
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>

                                    </p>
                                </c:if>
                                <c:if test="${(detail.star<5)&&(details.star>4)}">
                                    <p class="rate">
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star-half"></i>

                                    </p>
                                </c:if>
                                </p>
                                <p>${detail.description}</p>
                                <h3>All Service</h3>
                                <div class="d-md-flex mt-5 mb-5">

                                    <ul class="ml-md-5">
                                        <li><i class="fad fa-bed"></i> BedRoom :</li>
                                        <li><i class="fas fa-bed"></i>  Bed: </li>
                                        <li><i class="fas fa-bath"></i> BathRoom </li>
                                        <li><i class="fad fa-person-booth"></i> LivingRoom:</li>
                                        <li><i class="fad fa-utensils"></i> KitChen:</li>
                                    </ul>
                                    <ul class="ml-md-5">
                                        <li>${detail.bedRoomQty}</li>
                                        <li>${detail.bedQty}</li>
                                        <li>${detail.bathRoomQty}</li>
                                        <li>${detail.livingRoomQty}</li>
                                        <li> ${detail.kitchenQty}</li>
                                    </ul>
                                </div>
                                <h3>Extensions</h3>

                                <ul class="ml-md-5">
                                    <li>${extion.listExtentions}</li>
                                </ul>
                                <h3>Some Rules</h3>
                                <c:forEach  items="${rules}" var="o">

                                    <div class="media">

                                        <div class="media-body">

                                            <p>- ${o.listRules}</p>                        
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                            <div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
                                <h4 class="mb-4">Take A Tour</h4>
                                <div class="block-16">
                                    <figure>
                                        <img src="images/1560881.png" alt="Image placeholder" class="img-fluid">
                                        <a href="${detail.video}" class="play-button popup-vimeo"><span class="icon-play"></span></a>
                                    </figure>
                                </div>
                            </div>
                            <div class="col-sm col-md-6 col-lg-12 ftco-animate"style=" margin: 0 10px 20px 10px">
                                <h4 class="mb-4">Other HomeStay</h4>
                                <div id="tables" class="row">
                                    <c:forEach  items="${listbyS}" var="o">
                                        <div class="col-md-4">
                                            <div class="destination">
                                                <a href="HomeStayDetailController?homeStayID=${o.homeStayID}" class="img img-2" style="background-image: url(images/room-4.jpg);"></a>
                                                <div class="text p-3">

                                                    <div class="d-flex">

                                                        <div class="one">
                                                            <h6><a href="HomeStayDetailController?homeStayID=${o.homeStayID}"></a>${o.homeStayname}</h6>
                                                            <p><i class="icon-map-o"></i> ${o.specific},${o.ward},${o.city}</p>
                                                        </div>

                                                        <div class="two">
                                                            <span class="price per-price"><br><small>${o.cateName}</small></span>
                                                        </div>

                                                    </div>
                                                    <c:if test="${o.star==1}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${(o.star<2)&&(o.star>1)}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-half"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${o.star==2}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${(o.star<3)&&(o.star>2)}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-half"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${o.star==3}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${(o.star<4)&&(o.star>3)}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-half"></i>
                                                            <i class="icon-star-o"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${o.star==4}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-o"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${o.star==5}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${(o.star<5)&&(o.star>4)}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-half"></i>

                                                        </p>
                                                    </c:if>
                                                    <hr>
                                                    <p class="bottom-area d-flex">
                                                        <c:if test="${o.status==0}">
                                                            <span class="badge bg-success text-light">Ready</span>
                                                        </c:if>
                                                        <c:if test="${o.status==1}">
                                                            <span class="badge bg-secondary text-light">Booked</span>
                                                        </c:if>
                                                        <span class="ml-auto"><a href="HomeStayDetailController?homeStayID=${o.homeStayID}">Detail</a></span>
                                                    </p>

                                                </div>

                                            </div>
                                        </div>
                                    </c:forEach>
                                    <button onclick="more()" class="btn btn-outline-warning">Load More</button>


                                </div>

                            </div>

                            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
                            <script>
                                        function more() {
                                            $.ajax({
                                                url: "travel_management1/load",
                                                type: "get",
                                                success: function (data) {
                                                    var row = document.getElementById("tables");
                                                    row innerHTML += data;
                                                },
                                                error: function (xhr) {
                                                    //do something here
                                                }

                                            });
                                        }
                            </script>
                            <div class="col-sm col-md-6 col-lg-12 ftco-animate"style=" margin: 0 10px 20px 10px">
                                <h4 class="mb-4">Ours HomeStay</h4>
                                <div class="row">
                                    <c:forEach begin="0" end="3" items="${listBySupplier}" var="o">
                                        <div class="col-md-4">
                                            <div class="destination">
                                                <a href="HomeStayDetailController?homeStayID=${o.homeStayID}" class="img img-2" style="background-image: url(images/room-4.jpg);"></a>
                                                <div class="text p-3">
                                                    <div class="d-flex">
                                                        <div class="one">
                                                            <h6><a href="HomeStayDetailController?homeStayID=${o.homeStayID}"></a>${o.homeStayname}</h6>
                                                            <p><i class="icon-map-o"></i> ${o.specific},${o.ward},${o.city}</p>
                                                        </div>
                                                        <div class="two">
                                                            <span class="price per-price"><br><small>${o.cateName}</small></span>
                                                        </div>
                                                    </div>
                                                    <c:if test="${o.star==1}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${(o.star<2)&&(o.star>1)}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-half"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${o.star==2}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${(o.star<3)&&(o.star>2)}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-half"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${o.star==3}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-o"></i>
                                                            <i class="icon-star-o"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${(o.star<4)&&(o.star>3)}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-half"></i>
                                                            <i class="icon-star-o"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${o.star==4}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-o"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${o.star==5}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>

                                                        </p>
                                                    </c:if>
                                                    <c:if test="${(o.star<5)&&(o.star>4)}">
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-half"></i>

                                                        </p>
                                                    </c:if>
                                                    <hr>
                                                    <p class="bottom-area d-flex">
                                                        <c:if test="${o.status==0}">
                                                            <span class="badge bg-success text-light">Ready</span>
                                                        </c:if>
                                                        <c:if test="${o.status==1}">
                                                            <span class="badge bg-secondary text-light">Booked</span>
                                                        </c:if>
                                                    </p>
                                                    <p class="bottom-area d-flex">

                                                        <span class="ml-auto"><a href="HomeStayDetailController?homeStayID=${o.homeStayID}">Detail</a></span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>

                                </div>
                            </div>
                            <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
                            <section class="content-item" id="comments">
                                <div class="container">   
                                    <div class="row">
                                        <div class="col-sm-8">   
                                            <c:if test="${sessionScope.acc!=null}">


                                                <h3 class="pull-left">New Comment</h3>
                                                <div>
                                                    
                                                </div>
                                                <fieldset>
                                                    <div class="row">


                                                        <form action="HomeStayDetailController" method="Get">
                                                            <div class="form-group col-xs-12 col-sm-9 col-lg-10">
                                                            <input type="hidden" name="homeStayID" value="${homestayId}">
                                                            </div>
                                                            <div class="form-group col-xs-12 col-sm-9 col-lg-10">
                                                                <input id="ratinginput" name="star" class="rating rating-loading" data-min="0" data-max="5" data-step="0.1" value="2">
                                                            </div>
                                                            
                                                            <div class="form-group col-xs-12 col-sm-9 col-lg-10">
                                                                <input type="text" name="user_name" placeholder="Your name" required="">
                                                            </div>



                                                            <div class="form-group col-xs-12 col-sm-9 col-lg-10">
                                                                <textarea class="form-control" name="comment" placeholder="Your message" required=""></textarea>
                                                            </div>
                                                            <button type="submit" name="submitComment" value="sub" class="btn btn-normal pull-right">Submit</button>
                                                        </form>


                                                    </div>  	
                                                </fieldset>

                                            </c:if>

                                            <c:if test="${sessionScope.acc==null}">
                                                <form>
                                                    <h6 class="pull-left">You must to login to comment</h6>
                                                </form>
                                            </c:if>
                                            <h6></h6>
                                            <c:forEach  items="${review}" var="o">

                                                <div class="media">
                                                    <a class="pull-left" href="#"><img class="media-object" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt=""></a>
                                                    <div class="media-body">
                                                        <h4 class="media-heading">${o.cus_name}</h4>
                                                        <p>${o.feedBack}</p>
                                                        <c:if test="${o.star==1}">
                                                            <p class="rate">
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star-o"></i>
                                                                <i class="icon-star-o"></i>
                                                                <i class="icon-star-o"></i>
                                                                <i class="icon-star-o"></i>

                                                            </p>
                                                        </c:if>
                                                        <c:if test="${o.star==2}">
                                                            <p class="rate">
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star-o"></i>
                                                                <i class="icon-star-o"></i>
                                                                <i class="icon-star-o"></i>

                                                            </p>
                                                        </c:if>
                                                        <c:if test="${o.star==3}">
                                                            <p class="rate">
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star-o"></i>
                                                                <i class="icon-star-o"></i>

                                                            </p>
                                                        </c:if>
                                                        <c:if test="${o.star==4}">
                                                            <p class="rate">
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star-o"></i>

                                                            </p>
                                                        </c:if>
                                                        <c:if test="${o.star==5}">
                                                            <p class="rate">
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                            </p>
                                                        </c:if>

                                                        <ul class="list-unstyled list-inline media-detail pull-left">
                                                            <li>${o.date}</li>
                                                        </ul>
                                                        <ul class="list-unstyled list-inline media-detail pull-right">

                                                        </ul>
                                                    </div>
                                                </div>
                                            </c:forEach>

                                        </div>
                                    </div>
                                </div>
                            </section>



                        </div>
                    </div> <!-- .col-md-8 -->
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

        <jsp:include page="Footer.jsp"></jsp:include>


        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

        <script src="star/jquery.rateit.js" type="text/javascript"></script>
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
        <script src="js/addons/rating.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.2/js/star-rating.min.js"></script>

    </body>
</html>