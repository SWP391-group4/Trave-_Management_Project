<%-- 
    Document   : Resraurant
    Created on : Jun 3, 2022, 11:23:50 AM
    Author     : phams
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Restaurant</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="author" content="colorlib.com">
        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Abril+Fatface" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
        <link href="css/main.css" rel="stylesheet" />

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
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.html">CucCutBeNho</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="about.html" class="nav-link">Flight</a></li>
                        <li class="nav-item"><a href="places.html" class="nav-link">Hotels</a></li>
                        <li class="nav-item active"><a href="hotel.html" class="nav-link">Restaurant</a></li>
                        <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
                        <li class="nav-item" <i class="fa fa-sign-in" aria-hidden="true"></i><a href="login.html" class="nav-link">Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->

        <div class="hero-wrap js-fullheight" style="background-image: url('images/hotel-1.jpg');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
                    <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                        <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Restaurant</span></p>
                        <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Hotel</h1>
                        <div class="s003">
                            <form>
                                <div class="inner-form">
                                    <div class="input-field first-wrap">
                                        <input id="search" type="text" placeholder="Address" />
                                    </div>
                                    <div class="input-field second-wrap">
                                        <input id="search" type="text" placeholder="Input name of restaurant" />
                                    </div>
                                    <div class="input-field third-wrap">
                                        <button class="btn-search" type="button">
                                            <svg class="svg-inline--fa fa-search fa-w-16" aria-hidden="true" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                            <path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path>
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <section class="">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="carousel-testimony owl-carousel ftco-owl">
                            <div class="item">
                                <div class="testimony-wrap p-4 pb-5">
                                    <div>
                                        <img src="images/person_1.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="testimony-wrap p-4 pb-5">
                                    <div>
                                        <img src="images/person_1.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="testimony-wrap p-4 pb-5">
                                    <div>
                                        <img src="images/person_1.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="testimony-wrap p-4 pb-5">
                                    <div>
                                        <img src="images/person_1.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="testimony-wrap p-4 pb-5">
                                    <div>
                                        <img src="images/person_1.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="ftco-section">
            <div class="container">
                <!--                <div class="row">
                                    <div class="col-lg-3 sidebar order-md-last ftco-animate">
                                        <div class="sidebar-wrap ftco-animate">
                                            <h3 class="heading mb-4">Find City</h3>
                                            <form action="#">
                                                <div class="fields">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" placeholder="Destination, City">
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="select-wrap one-third">
                                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                                            <select name="" id="" class="form-control" placeholder="Keyword search">
                                                                <option value="">Select Location</option>
                                                                <option value="">San Francisco USA</option>
                                                                <option value="">Berlin Germany</option>
                                                                <option value="">Lodon United Kingdom</option>
                                                                <option value="">Paris Italy</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" id="checkin_date" class="form-control checkin_date" placeholder="Date from">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" id="checkout_date" class="form-control checkout_date" placeholder="Date to">
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="range-slider">
                                                            <span>
                                                                <input type="number" value="25000" min="0" max="120000"/>	-
                                                                <input type="number" value="50000" min="0" max="120000"/>
                                                            </span>
                                                            <input value="1000" min="0" max="120000" step="500" type="range"/>
                                                            <input value="50000" min="0" max="120000" step="500" type="range"/>
                                                            </svg>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="submit" value="Search" class="btn btn-primary py-3 px-5">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="sidebar-wrap ftco-animate">
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
                                    </div> END
                -->
                <div class="col-lg-12">
                    <div class="row">

                        <div class="container">

                            <div class="row justify-content-center mb-5 pb-3">

                                <div class="col-md-7 heading-section text-center ftco-animate">

                                    <h2 class="mb-4">Top destinations in Vietnam</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                            <div class="destination">
                                <a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/Danang.jpg);">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="icon-link"></span>
                                    </div>
                                </a>
                                <div class="text p-3">
                                    <div class="d-flex">
                                        <div class="one">
                                            <h3><a href="#">Đà Nẵng</a></h3>

                                        </div>
                                    </div>
                                    <p>Far far away, behind the word mountains, far from the countries</p>
                                    <hr>
                                    <p class="bottom-area d-flex">

                                        <span class="ml-auto"><a href="#">Book Hotel Now</a></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                            <div class="destination">
                                <a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/NhaTrang.jpg);">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="icon-link"></span>
                                    </div>
                                </a>
                                <div class="text p-3">
                                    <div class="d-flex">
                                        <div class="one">
                                            <h3><a href="#">Nha Trang</a></h3>

                                        </div>

                                    </div>
                                    <p>Far far away, behind the word mountains, far from the countries</p>
                                    <hr>
                                    <p class="bottom-area d-flex">

                                        <span class="ml-auto"><a href="#">Book Hotel Now</a></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                            <div class="destination">
                                <a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/hotel-3.jpg);">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="icon-link"></span>
                                    </div>
                                </a>
                                <div class="text p-3">
                                    <div class="d-flex">
                                        <div class="one">
                                            <h3><a href="#">New Orleans, LA</a></h3>
                                            <p class="rate">
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star-o"></i>
                                                <span>8 Rating</span>
                                            </p>
                                        </div>
                                        <div class="two">
                                            <span class="price per-price">$40<br><small>/night</small></span>
                                        </div>
                                    </div>
                                    <p>Far far away, behind the word mountains, far from the countries</p>
                                    <hr>
                                    <p class="bottom-area d-flex">
                                        <span><i class="icon-map-o"></i> Miami, Fl</span> 
                                        <span class="ml-auto"><a href="#">Book Now</a></span>
                                    </p>
                                </div>
                                <div class="row justify-content-center mb-5 pb-3">


                                </div>

                            </div>
                            <div class="text-center">
                                <a href="#" class="btn btn-outline-success" role="button" aria-disabled="true">More Hotel</a>
                            </div>
                        </div>

                        <div class="container">
                            <div class="row justify-content-center mb-5 pb-3">
                                <div class="col-md-7 heading-section text-center ftco-animate">
                                    <h2 class="mb-4">Flight destination</h2>
                                </div>
                            </div>
                        </div>
                        <div class="container-fluid">
                            <div class="row" >
                                <c:forEach items="${listP}" var="o">
                                    <div class="col-sm col-md-6 col-lg ftco-animate">
                                        <div class="destination">
                                            <a href="#" class="img img-2 d-flex justify-content-center align-items-center"
                                              style="background-image: url(images/hotel-1.jpg);">
                                                <div class="icon d-flex justify-content-center align-items-center">
                                                    <span class="icon-link"></span>
                                                </div>
                                            </a>
                                            <div class="text p-3">
                                                <div class="d-flex">
                                                    <div class="one">
                                                        <h3><a href="#">${o.city}</a></h3>
                                                        <p class="rate">
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-o"></i>
                                                            <span>8 Rating</span>
                                                        </p>
                                                    </div>

                                                    <div class="two">
                                                        <span class="price per-price">$40<br><small>/night</small></span>
                                                    </div>
                                                </div>                 
                                                <p>Far far away, behind the word mountains, far from the countries</p>
                                                <hr>
                                                <p class="bottom-area d-flex">
                                                    <span><i class="icon-map-o"></i> Miami, Fl</span>
                                                    <span class="ml-auto"><a href="#">Book Now</a></span>
                                                </p>
                                            </div>

                                        </div>
                                    </div>
                                </c:forEach>


                            </div>
                        </div>
                        <div class="container">
                            <div class="row justify-content-center mb-5 pb-3">
                                <div class="col-md-7 heading-section text-center ftco-animate">
                                    <h2 class="mb-4">Flight destination</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                            <div class="destination">
                                <a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/hotel-1.jpg);">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="icon-link"></span>
                                    </div>
                                </a>
                                <div class="text p-3">
                                    <div class="d-flex">
                                        <div class="one">
                                            <h3><a href="#">New Orleans, LA</a></h3>
                                            <p class="rate">
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star-o"></i>
                                                <span>8 Rating</span>
                                            </p>
                                        </div>
                                        <div class="two">
                                            <span class="price per-price">$40<br><small>/night</small></span>
                                        </div>
                                    </div>
                                    <p>Far far away, behind the word mountains, far from the countries</p>
                                    <hr>
                                    <p class="bottom-area d-flex">
                                        <span><i class="icon-map-o"></i> Miami, Fl</span> 
                                        <span class="ml-auto"><a href="#">Book Now</a></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                            <div class="destination">
                                <a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/hotel-2.jpg);">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="icon-link"></span>
                                    </div>
                                </a>
                                <div class="text p-3">
                                    <div class="d-flex">
                                        <div class="one">
                                            <h3><a href="#">New Orleans, LA</a></h3>
                                            <p class="rate">
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star-o"></i>
                                                <span>8 Rating</span>
                                            </p>
                                        </div>
                                        <div class="two">
                                            <span class="price per-price">$40<br><small>/night</small></span>
                                        </div>
                                    </div>
                                    <p>Far far away, behind the word mountains, far from the countries</p>
                                    <hr>
                                    <p class="bottom-area d-flex">
                                        <span><i class="icon-map-o"></i> Miami, Fl</span> 
                                        <span class="ml-auto"><a href="#">Book Now</a></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                            <div class="destination">
                                <a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/hotel-3.jpg);">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="icon-link"></span>
                                    </div>
                                </a>
                                <div class="text p-3">
                                    <div class="d-flex">
                                        <div class="one">
                                            <h3><a href="#">New Orleans, LA</a></h3>
                                            <p class="rate">
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star-o"></i>
                                                <span>8 Rating</span>
                                            </p>
                                        </div>
                                        <div class="two">
                                            <span class="price per-price">$40<br><small>/night</small></span>
                                        </div>
                                    </div>
                                    <p>Far far away, behind the word mountains, far from the countries</p>
                                    <hr>
                                    <p class="bottom-area d-flex">
                                        <span><i class="icon-map-o"></i> Miami, Fl</span> 
                                        <span class="ml-auto"><a href="#">Book Now</a></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                            <div class="destination">
                                <a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/hotel-3.jpg);">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="icon-link"></span>
                                    </div>
                                </a>
                                <div class="text p-3">
                                    <div class="d-flex">
                                        <div class="one">
                                            <h3><a href="#">New Orleans, LA</a></h3>
                                            <p class="rate">
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star-o"></i>
                                                <span>8 Rating</span>
                                            </p>
                                        </div>
                                        <div class="two">
                                            <span class="price per-price">$40<br><small>/night</small></span>
                                        </div>
                                    </div>
                                    <p>Far far away, behind the word mountains, far from the countries</p>
                                    <hr>
                                    <p class="bottom-area d-flex">
                                        <span><i class="icon-map-o"></i> Miami, Fl</span> 
                                        <span class="ml-auto"><a href="#">Book Now</a></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                            <div class="destination">
                                <a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/hotel-3.jpg);">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="icon-link"></span>
                                    </div>
                                </a>
                                <div class="text p-3">
                                    <div class="d-flex">
                                        <div class="one">
                                            <h3><a href="#">New Orleans, LA</a></h3>
                                            <p class="rate">
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star-o"></i>
                                                <span>8 Rating</span>
                                            </p>
                                        </div>
                                        <div class="two">
                                            <span class="price per-price">$40<br><small>/night</small></span>
                                        </div>
                                    </div>
                                    <p>Far far away, behind the word mountains, far from the countries</p>
                                    <hr>
                                    <p class="bottom-area d-flex">
                                        <span><i class="icon-map-o"></i> Miami, Fl</span> 
                                        <span class="ml-auto"><a href="#">Book Now</a></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                            <div class="destination">
                                <a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/hotel-3.jpg);">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="icon-link"></span>
                                    </div>
                                </a>
                                <div class="text p-3">
                                    <div class="d-flex">
                                        <div class="one">
                                            <h3><a href="#">New Orleans, LA</a></h3>
                                            <p class="rate">
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star-o"></i>
                                                <span>8 Rating</span>
                                            </p>
                                        </div>
                                        <div class="two">
                                            <span class="price per-price">$40<br><small>/night</small></span>
                                        </div>
                                    </div>
                                    <p>Far far away, behind the word mountains, far from the countries</p>
                                    <hr>
                                    <p class="bottom-area d-flex">
                                        <span><i class="icon-map-o"></i> Miami, Fl</span> 
                                        <span class="ml-auto"><a href="#">Book Now</a></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div> <!-- .col-md-8 -->
                    <div class="text-center">
                        <a href="#" class="btn btn-outline-success" role="button" aria-disabled="true">More Restaurants</a>
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
