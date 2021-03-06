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

        <link rel="stylesheet" href="css/image_choose.css">

        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/booking.css">

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="Header.jsp"/>

        <section  >
            <div class="container">
                <div class="main-body">

                    <!-- Breadcrumb -->
                    <nav class="navbar navbar-expand-lg navbar-light bg-light" >
                        <a class="navbar-brand" onclick="profileFunction()">Account</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav">
                                <a class="nav-item nav-link active" onclick="bookingFunction()">Booking <span class="sr-only">(current)</span></a>
                                <a class="nav-item nav-link"onclick="historyFunction()">History</a>
                            </div>
                        </div>
                    </nav>
                    <!-- /Breadcrumb -->
                    <form action="CustomerProfile" method="post" id="profile" enctype='multipart/form-data' >
                        <div class="row gutters-sm">
                            <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex flex-column align-items-center text-center">
                                            <c:choose>
                                                <c:when test="${cusImage.img_Avatar == ''}">
                                                    <img src="images/default_person.jpg" alt="Admin" class="rounded-circle" width="150">
                                                </c:when>
                                                <c:otherwise>
                                                    <img src="images/${cusImage.img_Avatar}" alt="Admin" class="rounded-circle" width="150">
                                                </c:otherwise>
                                            </c:choose>
                                            <hr>
                                            <input type="file" name="image" value="image" class="custom" accept="image/png, image/jpg, image/jpeg">

                                            <div class="mt-3">
                                                <h4>${cus.firstName} ${cus.lastName}</h4>
                                                <ul class="list-group list-group-flush">

                                                    <li class="list-group-item"><a href="SendMail?EmailService=0">Reset Email</a></li>
                                                    <li class="list-group-item"><a href="SendMail?EmailService=1">Reset Password</a></li>

                                                </ul>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                                <div class="card h-100">
                                    <div class="card-body">
                                        <div class="row gutters">
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                                <h6 class="mb-2 text-primary">Personal Details</h6>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                                <div class="form-group">
                                                    <label for="fullName">First Name</label>
                                                    <input type="text" class="form-control" id="fullName" value="${cus.firstName}" name="fname">
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                                <div class="form-group">
                                                    <label for="fullName">Last Name</label>
                                                    <input type="text" class="form-control" id="fullName" value=" ${cus.lastName}" name="lname">
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                                <div class="form-group">
                                                    <label for="eMail">Email</label>
                                                    <div class="col-sm-9 text-secondary card form-control">

                                                        <div>
                                                            ${cus.email}
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                                <div class="form-group">
                                                    <label for="eMail">Phone</label>
                                                    <div class="col-sm-9 text-secondary card form-control">
                                                        <div>
                                                            ${cus.phone}
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="row gutters">
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                                <h6 class="mt-3 mb-2 text-primary">Address</h6>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                                <div class="form-group">
                                                    <label for="Street">Specific</label>
                                                    <input type="name" class="form-control" id="Street" value="${cusAddress.specific}" name="specific">
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                                <div class="form-group">
                                                    <label for="ciTy">Ward</label>
                                                    <input type="name" class="form-control" id="ciTy" value="${cusAddress.ward}" name="ward">
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                                <div class="form-group">
                                                    <label for="sTate">District</label>
                                                    <input type="text" class="form-control" id="sTate" value="${cusAddress.district}" name="district">
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                                <div class="form-group">
                                                    <label for="zIp">City</label>
                                                    <input type="text" class="form-control" id="zIp" value="${cusAddress.city}" name="city">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row gutters">
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                                <div class="text-right">
                                                    <p class="success">${noti}</p>
                                                    <input type="submit" name="submit" class="btn btn-primary" value="Update">

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />

        <div class="event-schedule-area-two bg-color pad100" id="booking" style="display: none">
            <div class="container">

                <!-- row end-->
                <div class="row">
                    <div class="col-lg-12">

                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade active show" id="home" role="tabpanel">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead style="background-color: #CCC">
                                            <tr>
                                                <th class="text-center" scope="col">Date</th>
                                                <th scope="col"></th>
                                                <th scope="col" >Home stay</th>
                                                <th scope="col" >Price</th>
                                                <th scope="col">Status</th>
                                                <th class="text-center" scope="col"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:if test="${listBooking.size() > 0}">
                                                <c:forEach begin="0" end="${listBooking.size()-1}" var="i">
                                                    <tr class="inner-box">
                                                        <th scope="row">
                                                            <div class="event-date">
                                                                <span>${listBooking.get(i).day}</span>
                                                                <p>${listBooking.get(i).month}</p>
                                                            </div>
                                                        </th>
                                                        <td>
                                                            <div class="event-img">
                                                                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" />
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="event-wrap">
                                                                <h3><a href="HomeStayDetailController?homeStayID=${listHomestay.get(i).homeStayID}">${listHomestay.get(i).homeStayname}</a></h3>
                                                                <div class="meta">
                                                                    <div class="organizers">
                                                                        <a href="#">${listSupBook.get(i).firstName}${listSupBook.get(i).lastName}</a>
                                                                    </div>
                                                                    <div class="time">
                                                                        <i class="bi bi-people-fill">
                                                                            <a ><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
                                                                                <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                                                                <path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
                                                                                <path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
                                                                                </svg>${listBooking.get(i).visitorNumber} people </a>
                                                                        </i>
                                                                        <span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
                                                                            <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
                                                                            <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/>
                                                                            </svg> ${listBooking.get(i).bookingTime} day</span>

                                                                    </div>
                                                                    <div class="time">
                                                                        <span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-check" viewBox="0 0 16 16">
                                                                            <path d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                                                                            <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                                                                            </svg>${listBooking.get(i).month}/${listBooking.get(i).day}/2022</span></div>
                                                                    <div class="time">
                                                                        <span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building" viewBox="0 0 16 16">
                                                                            <path fill-rule="evenodd" d="M14.763.075A.5.5 0 0 1 15 .5v15a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5V14h-1v1.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V10a.5.5 0 0 1 .342-.474L6 7.64V4.5a.5.5 0 0 1 .276-.447l8-4a.5.5 0 0 1 .487.022zM6 8.694 1 10.36V15h5V8.694zM7 15h2v-1.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 .5.5V15h2V1.309l-7 3.5V15z"/>
                                                                            <path d="M2 11h1v1H2v-1zm2 0h1v1H4v-1zm-2 2h1v1H2v-1zm2 0h1v1H4v-1zm4-4h1v1H8V9zm2 0h1v1h-1V9zm-2 2h1v1H8v-1zm2 0h1v1h-1v-1zm2-2h1v1h-1V9zm0 2h1v1h-1v-1zM8 7h1v1H8V7zm2 0h1v1h-1V7zm2 0h1v1h-1V7zM8 5h1v1H8V5zm2 0h1v1h-1V5zm2 0h1v1h-1V5zm0-2h1v1h-1V3z"/>
                                                                            </svg> ${listHomestay.get(i).specific}, ${listHomestay.get(i).ward}, ${listHomestay.get(i).district}, ${listHomestay.get(i).city}</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="r-no">
                                                                <span>${listBooking.get(i).price} VND</span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="primary-btn">
                                                                <c:if test="${listBooking.get(i).status==0}">
                                                                    <span class="text-warning"> Pending</span></c:if>
                                                                <c:if test="${listBooking.get(i).status!=0}">
                                                                    <span class="text-success"> Confirm</span>
                                                                </c:if>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            </div>
                                                            <div class="primary-btn">
                                                                <a class="btn btn-primary" href="#">Read More</a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </c:if>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /col end-->
                </div>
                <!-- /row end-->
            </div>
        </div>



        <div class="event-schedule-area-two bg-color pad100" id="history" style="display: none">
            <div class="container">

                <!-- row end-->
                <div class="row">
                    <div class="col-lg-12">

                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade active show" id="home" role="tabpanel">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="text-center" scope="col">Date</th>
                                                <th scope="col">Image</th>
                                                <th scope="col" >Home stay</th>
                                                <th scope="col" >Price</th>
                                                <th scope="col">Evaluate</th>
                                                <th class="text-center" scope="col"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:if test="${listHistory.size() > 0}">
                                                <c:forEach begin="0" end="${listHistory.size()-1}" var="i">
                                                    <tr class="inner-box">
                                                        <th scope="row">
                                                            <div class="event-date">
                                                                <span>${listHistory.get(i).day}</span>
                                                                <p>${listHistory.get(i).month}</p>
                                                            </div>
                                                        </th>
                                                        <td>
                                                            <div class="event-img">
                                                                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" />
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="event-wrap">
                                                                <h3><a href="HomeStayDetailController?homeStayID=${listHomestayHistory.get(i).homeStayID}">${listHomestayHistory.get(i).homeStayname}</a></h3>
                                                                <div class="meta">
                                                                    <div class="organizers">
                                                                        <a href="#">${listHistory.get(i).visitorNumber} People</a>
                                                                    </div>
                                                                    <div class="time">
                                                                        <span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock-history" viewBox="0 0 16 16">
                                                                            <path d="M8.515 1.019A7 7 0 0 0 8 1V0a8 8 0 0 1 .589.022l-.074.997zm2.004.45a7.003 7.003 0 0 0-.985-.299l.219-.976c.383.086.76.2 1.126.342l-.36.933zm1.37.71a7.01 7.01 0 0 0-.439-.27l.493-.87a8.025 8.025 0 0 1 .979.654l-.615.789a6.996 6.996 0 0 0-.418-.302zm1.834 1.79a6.99 6.99 0 0 0-.653-.796l.724-.69c.27.285.52.59.747.91l-.818.576zm.744 1.352a7.08 7.08 0 0 0-.214-.468l.893-.45a7.976 7.976 0 0 1 .45 1.088l-.95.313a7.023 7.023 0 0 0-.179-.483zm.53 2.507a6.991 6.991 0 0 0-.1-1.025l.985-.17c.067.386.106.778.116 1.17l-1 .025zm-.131 1.538c.033-.17.06-.339.081-.51l.993.123a7.957 7.957 0 0 1-.23 1.155l-.964-.267c.046-.165.086-.332.12-.501zm-.952 2.379c.184-.29.346-.594.486-.908l.914.405c-.16.36-.345.706-.555 1.038l-.845-.535zm-.964 1.205c.122-.122.239-.248.35-.378l.758.653a8.073 8.073 0 0 1-.401.432l-.707-.707z"/>
                                                                            <path d="M8 1a7 7 0 1 0 4.95 11.95l.707.707A8.001 8.001 0 1 1 8 0v1z"/>
                                                                            <path d="M7.5 3a.5.5 0 0 1 .5.5v5.21l3.248 1.856a.5.5 0 0 1-.496.868l-3.5-2A.5.5 0 0 1 7 9V3.5a.5.5 0 0 1 .5-.5z"/>
                                                                            </svg>${listHistory.get(i).month}/${listHistory.get(i).day}/2022</span>
                                                                    </div>
                                                                    <div class="time">
                                                                        <span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building" viewBox="0 0 16 16">
                                                                            <path fill-rule="evenodd" d="M14.763.075A.5.5 0 0 1 15 .5v15a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5V14h-1v1.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V10a.5.5 0 0 1 .342-.474L6 7.64V4.5a.5.5 0 0 1 .276-.447l8-4a.5.5 0 0 1 .487.022zM6 8.694 1 10.36V15h5V8.694zM7 15h2v-1.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 .5.5V15h2V1.309l-7 3.5V15z"/>
                                                                            <path d="M2 11h1v1H2v-1zm2 0h1v1H4v-1zm-2 2h1v1H2v-1zm2 0h1v1H4v-1zm4-4h1v1H8V9zm2 0h1v1h-1V9zm-2 2h1v1H8v-1zm2 0h1v1h-1v-1zm2-2h1v1h-1V9zm0 2h1v1h-1v-1zM8 7h1v1H8V7zm2 0h1v1h-1V7zm2 0h1v1h-1V7zM8 5h1v1H8V5zm2 0h1v1h-1V5zm2 0h1v1h-1V5zm0-2h1v1h-1V3z"/>
                                                                            </svg> ${listHomestayHistory.get(i).specific}, ${listHomestayHistory.get(i).ward}, ${listHomestayHistory.get(i).district}, ${listHomestayHistory.get(i).city}</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="r-no">
                                                                <span>${listHistory.get(i).price} VND</span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="primary-btn">
                                                                <span>${listHomestayHistory.get(i).star} <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                                                    </svg></span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="primary-btn">
                                                                <a class="btn btn-primary" href="#">Read More</a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </c:if>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /col end-->
                </div>
                <!-- /row end-->
            </div>
        </div>
        <jsp:include page="Footer.jsp"/>

        <script>
            function profileFunction() {
                document.getElementById("profile").style.display = "block";
                document.getElementById("booking").style.display = "none";
                document.getElementById("history").style.display = "none";
            }
            function bookingFunction() {
                document.getElementById("profile").style.display = "none";
                document.getElementById("booking").style.display = "block";
                document.getElementById("history").style.display = "none";
            }
            function historyFunction() {
                document.getElementById("profile").style.display = "none";
                document.getElementById("booking").style.display = "none";
                document.getElementById("history").style.display = "block";
            }
        </script>

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
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="vendor/chart.js/Chart.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="js/demo/chart-area-demo.js"></script>
        <script src="js/demo/chart-pie-demo.js"></script>
    </body>
</html>