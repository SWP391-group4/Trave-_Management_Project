/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

/**
 *
 * @author phams
 */
public class DAOVouchers {
    
}
/*
<%-- 
    Document   : Demo
    Created on : Jun 22, 2022, 10:37:40 PM
    Author     : phams
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <link rel="stylesheet" href="css/Demo.css">
    </head>
    <body>
        <div class="container-xl px-4 mt-4">
            <!-- Account page navigation-->
            <nav class="nav nav-borders">
                <a class="nav-link  ms-0" href="https://www.bootdey.com/snippets/view/bs5-edit-profile-account-details" target="__blank">Profile</a>
                <a class="nav-link" href="https://www.bootdey.com/snippets/view/bs5-profile-billing-page" target="__blank">Billing</a>
                <a class="nav-link active" href="https://www.bootdey.com/snippets/view/bs5-profile-security-page" target="__blank">Security</a>
                <a class="nav-link" href="https://www.bootdey.com/snippets/view/bs5-edit-notifications-page"  target="__blank">Notifications</a>
            </nav>
            <hr class="mt-0 mb-4">
            <div class="row">
                <div class="col-lg-8">
                    <!-- Change password card-->
                    <div class="card mb-4">
                        <div class="card-header">Change Password</div>
                        <div class="card-body">
                            <form>
                                <!-- Form Group (current password)-->
                                <div class="mb-3">
                                    <label class="small mb-1" for="currentPassword">Current Password</label>
                                    <input class="form-control" id="currentPassword" type="password" placeholder="Enter current password">
                                </div>
                                <!-- Form Group (new password)-->
                                <div class="mb-3">
                                    <label class="small mb-1" for="newPassword">New Password</label>
                                    <input class="form-control" id="newPassword" type="password" placeholder="Enter new password">
                                </div>
                                <!-- Form Group (confirm password)-->
                                <div class="mb-3">
                                    <label class="small mb-1" for="confirmPassword">Confirm Password</label>
                                    <input class="form-control" id="confirmPassword" type="password" placeholder="Confirm new password">
                                </div>
                                <button class="btn btn-primary" type="button">Save</button>
                            </form>
                        </div>
                    </div>
                    <!-- Security preferences card-->
                    <div class="card mb-4">
                        <div class="card-header">Security Preferences</div>
                        <div class="card-body">
                            <!-- Account privacy optinos-->
                            <h5 class="mb-1">Nam ml</h5>
                            <p class="small text-muted">By setting your account to private, your profile information and posts will not be visible to users outside of your user groups.</p>
                            <form>
                                <div class="col-sm-6 mb-3">
                                    <div class="card h-100">
                                        <div class="card-body">
                                            <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">assignment</i>Project Status</h6>
                                            <small>Web Design</small>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <small>Website Markup</small>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 72%" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <small>One Page</small>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 89%" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <small>Mobile Template</small>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <small>Backend API</small>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                            </form>
                            <hr class="my-4">
                            <!-- Data sharing options-->
                            <h5 class="mb-1">Data Sharing</h5>
                            <p class="small text-muted">Sharing usage data can help us to improve our products and better serve our users as they navigation through our application. When you agree to share usage data with us, crash reports and usage analytics will be automatically sent to our development team for investigation.</p>
                            <form>
                                <div class="form-check">
                                    <input class="form-check-input" id="radioUsage1" type="radio" name="radioUsage" checked="">
                                    <label class="form-check-label" for="radioUsage1">Yes, share data and crash reports with app developers</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" id="radioUsage2" type="radio" name="radioUsage">
                                    <label class="form-check-label" for="radioUsage2">No, limit my data sharing with app developers</label>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <!-- Two factor authentication card-->
                    <div class="card mb-4">
                        <div class="card-header">Two-Factor Authentication</div>
                        <div class="card-body">
                            <p>Add another level of security to your account by enabling two-factor authentication. We will send you a text message to verify your login attempts on unrecognized devices and browsers.</p>
                            <form>
                                <div class="form-check">
                                    <input class="form-check-input" id="twoFactorOn" type="radio" name="twoFactor" checked="">
                                    <label class="form-check-label" for="twoFactorOn">On</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" id="twoFactorOff" type="radio" name="twoFactor">
                                    <label class="form-check-label" for="twoFactorOff">Off</label>
                                </div>
                                <div class="mt-3">
                                    <label class="small mb-1" for="twoFactorSMS">SMS Number</label>
                                    <input class="form-control" id="twoFactorSMS" type="tel" placeholder="Enter a phone number" value="555-123-4567">
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- Delete account card-->
                    <div class="card mb-4">
                        <div class="card-header">Delete Account</div>
                        <div class="card-body">
                            <p>Deleting your accuount is a permanent action and cannot be undone. If you are sure you want to delete your account, select the button below.</p>
                            <button class="btn btn-ewr
                    </div>
                </div>
ádujgh<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Adventure - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">Adventure</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
	          <li class="nav-item"><a href="places.html" class="nav-link">Places</a></li>
	          <li class="nav-item active"><a href="hotel.html" class="nav-link">Hotels</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
			  <li class="nav-item" <i class="fa fa-sign-in" aria-hidden="true"></i><a href="login.html" class="nav-link">Login</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Hotel</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Hotels</h1>
          </div>
        </div>
      </div>
    </div>
		
		<section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
        	
          <div class="col-lg-9">
          	<div class="row">
          		<div class="col-md-12 ftco-animate">
          			<div class="single-slider owl-carousel">
          				<div class="item">
          					<div class="hotel-img" style="background-image: url(images/hotel-2.jpg);"></div>
          				</div>
          				<div class="item">
          					<div class="hotel-img" style="background-image: url(images/hotel-3.jpg);"></div>
          				</div>
          				<div class="item">
          					<div class="hotel-img" style="background-image: url(images/hotel-4.jpg);"></div>
          				</div>
          			</div>
          		</div>
          		<div class="col-md-12 hotel-single mt-4 mb-5 ftco-animate">
                             <h2>${detail.homeStayname}</h2>
          			<span>Our Best hotels &amp; Rooms</span>
                               
          			<p class="rate mb-5">
          				<span class="loc"><a href="#"><i class="icon-map"></i>${detail.specific},${detail.ward},${detail.city}</a></span>
          				<span class="star">
    							<i class="icon-star"></i>
    							<i class="icon-star"></i>
    							<i class="icon-star"></i>
    							<i class="icon-star"></i>
    							<i class="icon-star-o"></i>
    							8 Rating</span>
    						</p>
    						<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
    						<div class="d-md-flex mt-5 mb-5">
                                              
    							<ul class="ml-md-5">
                                                            <li><i class="fas fa-bed"></i> BedRoom :</li>
	    							<li>Bed: </li>
	    							<li>BathRoom </li>
	    							<li>LivingRoom:</li>
                                                                <li>KitChen:</li>
	    						</ul>
	    						<ul class="ml-md-5">
	    							<li>${detail.bedRoomQty}</li>
	    							<li>${detail.bedQty}</li>
	    							<li>${detail.bathRoomQty}</li>
	    							<li>${detail.livingRoomQty}</li>
                                                               <li> ${detail.kitchenQty}</li>
	    						</ul>
    						</div>
    						<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
          		</div>
          		<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
          			<h4 class="mb-4">Take A Tour</h4>
          			<div class="block-16">
		              <figure>
		                <img src="images/hotel-6.jpg" alt="Image placeholder" class="img-fluid">
		                <a href="https://vimeo.com/45830194" class="play-button popup-vimeo"><span class="icon-play"></span></a>
		              </figure>
		            </div>
          		</div>
          		<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
          			<h4 class="mb-4">Our Rooms</h4>
          			<div class="row">
          				<div class="col-md-4">
				    				<div class="destination">
				    					<a href="hotel-single.html" class="img img-2" style="background-image: url(images/room-4.jpg);"></a>
				    					<div class="text p-3">
				    						<div class="d-flex">
				    							<div class="one">
						    						<h3><a href="hotel-single.html">Hotel, Italy</a></h3>
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
				    			<div class="col-md-4">
				    				<div class="destination">
				    					<a href="hotel-single.html" class="img img-2" style="background-image: url(images/room-5.jpg);"></a>
				    					<div class="text p-3">
				    						<div class="d-flex">
				    							<div class="one">
						    						<h3><a href="hotel-single.html">Hotel, Italy</a></h3>
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
				    			<div class="col-md-4">
				    				<div class="destination">
				    					<a href="hotel-single.html" class="img img-2" style="background-image: url(images/room-6.jpg);"></a>
				    					<div class="text p-3">
				    						<div class="d-flex">
				    							<div class="one">
						    						<h3><a href="hotel-single.html">Hotel, Italy</a></h3>
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
          			</div>
          		</div>
          		<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
          			<h4 class="mb-5">Check Availability &amp; Booking</h4>
          			<div class="fields">
          				<div class="row">
          					<div class="col-md-6">
				              <div class="form-group">
				                <input type="text" class="form-control" placeholder="Name">
				              </div>
			              </div>
			              <div class="col-md-6">
				              <div class="form-group">
				                <input type="text" class="form-control" placeholder="Email">
				              </div>
			              </div>
			              <div class="col-md-6">
				              <div class="form-group">
				                <input type="text" class="form-control checkin_date" placeholder="Date from">
				              </div>
			              </div>
			              <div class="col-md-6">
				              <div class="form-group">
				                <input type="text" class="form-control checkout_date" placeholder="Date to">
				              </div>
				            </div>
				            <div class="col-md-6">
					            <div class="form-group">
				                <div class="select-wrap one-third">
			                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                    <select name="" id="" class="form-control" placeholder="Guest">
			                      <option value="0">Guest</option>
			                      <option value="1">1</option>
			                      <option value="2">2</option>
			                      <option value="3">3</option>
			                      <option value="4">4</option>
			                    </select>
			                  </div>
				              </div>
			              </div>
			              <div class="col-md-6">
					            <div class="form-group">
				                <div class="select-wrap one-third">
			                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                    <select name="" id="" class="form-control" placeholder="Children">
			                      <option value="0">Children</option>
			                      <option value="1">1</option>
			                      <option value="2">2</option>
			                      <option value="3">3</option>
			                      <option value="4">4</option>
			                    </select>
			                  </div>
				              </div>
			              </div>
				            <div class="col-md-12">
				              <div class="form-group">
				                <input type="submit" value="Check Availability" class="btn btn-primary py-3">
				              </div>
			              </div>
		              </div>
		            </div>
          		</div>
          		<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
          			<h4 class="mb-4">Review &amp; Ratings</h4>
          			<div class="row">
          				<div class="col-md-6">
          					<form method="post" class="star-rating">
										  <div class="form-check">
												<input type="checkbox" class="form-check-input" id="exampleCheck1">
												<label class="form-check-label" for="exampleCheck1">
													<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i> 100 Ratings</span></p>
												</label>
										  </div>
										  <div class="form-check">
									      <input type="checkbox" class="form-check-input" id="exampleCheck1">
									      <label class="form-check-label" for="exampleCheck1">
									    	   <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i> 30 Ratings</span></p>
									      </label>
										  </div>
										  <div class="form-check">
									      <input type="checkbox" class="form-check-input" id="exampleCheck1">
									      <label class="form-check-label" for="exampleCheck1">
									      	<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i> 5 Ratings</span></p>
									     </label>
										  </div>
										  <div class="form-check">
										    <input type="checkbox" class="form-check-input" id="exampleCheck1">
									      <label class="form-check-label" for="exampleCheck1">
									      	<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i> 0 Ratings</span></p>
									      </label>
										  </div>
										  <div class="form-check">
									      <input type="checkbox" class="form-check-input" id="exampleCheck1">
									      <label class="form-check-label" for="exampleCheck1">
									      	<p class="rate"><span><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i> 0 Ratings</span></p>
										    </label>
										  </div>
										</form>
          				</div>
          			</div>
          		</div>
          		<div class="col-md-12 hotel-single ftco-animate mb-5 mt-5">
          			<h4 class="mb-4">Related Hotels</h4>
          			<div class="row">
          				<div class="col-md-4">
				    				<div class="destination">
				    					<a href="hotel-single.html" class="img img-2" style="background-image: url(images/hotel-1.jpg);"></a>
				    					<div class="text p-3">
				    						<div class="d-flex">
				    							<div class="one">
						    						<h3><a href="hotel-single.html">Hotel, Italy</a></h3>
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
				    			<div class="col-md-4">
				    				<div class="destination">
				    					<a href="hotel-single.html" class="img img-2" style="background-image: url(images/hotel-2.jpg);"></a>
				    					<div class="text p-3">
				    						<div class="d-flex">
				    							<div class="one">
						    						<h3><a href="hotel-single.html">Hotel, Italy</a></h3>
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
				    			<div class="col-md-4">
				    				<div class="destination">
				    					<a href="hotel-single.html" class="img img-2" style="background-image: url(images/hotel-3.jpg);"></a>
				    					<div class="text p-3">
				    						<div class="d-flex">
				    							<div class="one">
						    						<h3><a href="hotel-single.html">Hotel, Italy</a></h3>
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
          			</div>
          		</div>

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
            </div>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <sc

    </body>q?eqwd
</html>

*/