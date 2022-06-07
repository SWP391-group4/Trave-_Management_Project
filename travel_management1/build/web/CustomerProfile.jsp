<%-- 
    Document   : Customerprofile
    Created on : Jun 7, 2022, 11:13:26 AM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<head>
    <title>Customer Profile</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .tr {
            border: 2px solid red;
            border-radius: 12px;
            padding: 5px;
        }
        .login-form {
            width: 340px;
            margin: 50px auto;
            font-size: 15px;
        }
        .login-form form {
            margin-bottom: 15px;
            background: #f7f7f7;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            padding: 30px;
        }
        .login-form h2 {
            margin: 0 0 15px;
        }
        .form-control, .btn {
            min-height: 38px;
            border-radius: 2px;
        }
        .btn {
            font-size: 15px;
            font-weight: bold;
        }
    </style>
</head>

<body><hr>
    <div class="container bootstrap snippet">
        <div class="row">
            <div class="col-sm-10"><h1>User name</h1></div>
            <div class="col-sm-2"><a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a></div>
        </div>
        <div class="row">
            <div class="col-sm-3"><!--left col-->


                <div class="text-center">
                    <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
                    <h6>Upload a different photo...</h6>
                    <input type="file" class="text-center center-block file-upload">
                </div></hr><br>




            </div><!--/col-3-->
            <div class="col-sm-9">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
                    <li><a data-toggle="tab" href="#messages">Restaurant</a></li>
                    <li><a data-toggle="tab" href="#settings">Hotel</a></li>
                    <li><a data-toggle="tab" href="#setting">Flight</a></li>
                </ul>


                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <hr>
                        <form class="form" action="##" method="post" id="registrationForm">
                            <div class="form-group">

                                <div class="col-xs-6">
                                    <label for="first_name"><h4>First name</h4></label>
                                    <div class="form-control"> ${customer.firstName}</div> 
                                </div>
                            </div>
                            <div class="form-group">

                                <div class="col-xs-6">
                                    <label for="last_name"><h4>Last name</h4></label>
                                    <div class="form-control"> ${customer.lastName}</div> 
                                </div>
                            </div>

                            <div class="form-group">

                                <div class="col-xs-6">
                                    <label for="phone"><h4>Phone</h4></label>
                                    <div class="form-control"> ${customer.phone}</div> 
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="mobile"><h4>Mobile</h4></label>
                                    <div class="form-control"> ${customer.email}</div> 
                                </div>
                            </div>
                        </form>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <br>
                                <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="button" data-toggle="modal" data-target="#myModal"> 
                                    Change Password
                                </button>
                            </div>
                        </div>


                        <!-- The ChangePass Form -->
                        <div class="modal fade" id="myModal">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                <div class="login-form">
                                    <form action="Login" method="post">
                                        <!--        <div class="alert alert-danger" role="alert">-->


                                        <h2 class="text-center">Log in</h2>  
                                        <div>${alert}</div>
                                        <div class="form-group">
                                            <input  type="text" name="account" class="form-control" placeholder="username" required="required" value="">
                                        </div>
                                        <div class="form-group">
                                            <input  type="password" name="password" class="form-control" placeholder="password" required="required" value="">
                                        </div>
                                        <div class="form-group">

                                            <input type="submit" class="btn btn-warning btn-block" name="Login">
                                        </div>
                                        <div class="clearfix">
                                            <label class="float-left form-check-label">Don't have account?<a href="Registration.jsp">   register</a></label>
                                        </div>        
                                    </form>
                                </div>
                                </div>
                            </div>
                        </div>
                        <hr>

                    </div><!--/CusInfo-->
                    <div class="tab-pane" id="messages">

                        <h2></h2>

                        <hr>
                        <table class="table ">
                            <thead>
                                <tr>


                                    <th>Full Name</th>


                                    <th>Phone</th>
                                    <th>OrderTime</th>

                                    <th>Feedback</th>
                                    <th>Star</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>

                                <c:forEach items="${resHisList}" var="res">
                                    <tr class="tr">
                                        <td>${res.firstName}</td>

                                        <td>${res.phone}</td>
                                        <td>${res.orderTime}</td>

                                        <td>${res.feedback}</td>
                                        <td>${res.star}</td>



                                    </tr>

                                </c:forEach>

                            </tbody>
                        </table>

                    </div><!--/RES-->
                    <div class="tab-pane" id="settings">


                        <hr>
                        <table class="table ">
                            <thead>
                                <tr>


                                    <th>Full Name</th>


                                    <th>Phone</th>
                                    <th>OrderTime</th>
                                    <th>UserTime</th>

                                    <th>Feedback</th>
                                    <th>Star</th>

                                </tr>
                            </thead>
                            <tbody>

                                <c:forEach items="${hotelList}" var="hotel">
                                    <tr class="tr">
                                        <td>${hotel.firstName}</td>

                                        <td>${hotel.phone}</</td>
                                        <td>${hotel.orderTime}</td>
                                        <td>${hotel.usedTime}</td>

                                        <td>${hotel.feedback}</td>
                                        <td>${hotel.star}</td>



                                    </tr>

                                </c:forEach>

                            </tbody>
                        </table>
                    </div><!--/HIS-->
                    <div class="tab-pane" id="setting">


                        <hr>
                        <table class="table ">
                            <thead>
                                <tr>


                                    <th>First Name</th>


                                    <th>Phone</th>
                                    <th>Price</th>

                                    <th>Feedback</th>
                                    <th>Star</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>

                                <c:forEach items="${flightList}" var="flight">
                                    <tr class="tr">
                                        <td>${flight.firstName}</td>

                                        <td>${flight.phone}</</td>
                                        <td>${flight.price}</</td>

                                        <td>${flight.feedback}</</td>
                                        <td>${flight.star}</</td>



                                    </tr>

                                </c:forEach>

                            </tbody>
                        </table>
                    </div><!--/FLI-->

                </div><!--/tab-pane-->
            </div><!--/tab-content-->

        </div><!--/col-9-->

    </div><!--/row-->
    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>
</body>

