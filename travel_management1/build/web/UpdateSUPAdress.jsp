<!DOCTYPE html>
<html lang="en">
    <head>

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

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <jsp:include page="Header.jsp"></jsp:include>
            <!-- END nav -->
            <div class="container bootstrap snippets bootdey">
                <div class="row">
                    <div class="col-sm-10">
                        <h1>User: </h1></div>
                <div class="col-sm-2">
                    <a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="https://bootdey.com/img/Content/avatar/avatar1.png">
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <!--left col-->
 <div style="padding-bottom: 25px ">
                        <a href="suppilerProflieController">Profile ></a>

                        <a href="updateaddress">HighSetting</a>
                    </div>
                    <ul class="list-group ">
                        <li class="list-group-item  bg-secondary text-light">Address</li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong>City</strong></span></li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong>District</strong></span> </li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong>Specific</strong></span>  </li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong>Ward</strong></span> </li>
                    </ul>

                    



                </div>
                <!--/col-3-->
                <div class="col-sm-9">

                    <ul class="nav nav-tabs" id="myTab">
<!--                                        <li class=""><a href="#home" data-toggle="tab">Home</a></li>-->

                        <li class="active"><a href="#settings" data-toggle="tab">High Settings</a></li>
                    </ul>

                    <div class="tab-content">
                       
                        <!--/tab-pane-->
                       

                        
                     
                        <!--/tab-pane-->
                        <div class="tab-pane active" id="settings">

                            <hr>
                            <form class="form" action="updateaddress" method="post" id="registrationForm">
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="first_name">
                                            <h4>First Name</h4></label>
                                        <input type="text" class="form-control" value=""  name="fname" id="first_name" placeholder="${sp.firstName}" title="enter your first name if any.">
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="last_name">
                                            <h4>Last_Name</h4></label>
                                        <input type="text" class="form-control" value=" " name="lname" id="last_name" placeholder="${sp.lastName}" title="enter your last name if any.">
                                    </div>
                                </div>

                                <!--                        <div class="form-group">
                                
                                                            <div class="col-xs-6">
                                                                <label for="phone">
                                                                    <h4>Email</h4></label>
                                                                <input type="text" class="form-control"   placeholder="" title="">
                                                            </div>
                                                        </div>-->

                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="mobile">
                                            <h4>Phone</h4></label>
                                        <input type="number" class="form-control" name="phone" id="mobile" placeholder="" title="enter your mobile number if any.">
                                    </div>
                                </div>
                                <!--                        <div class="form-group">
                                    
                                                            <div class="col-xs-6">
                                                                <label for="email">
                                                                    <h4>Email</h4></label>
                                                                <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email.">
                                                            </div>
                                                        </div>-->
                                <!--                        <div class="form-group">
                                
                                                            <div class="col-xs-6">
                                                                <label for="email">
                                                                    <h4>Specific</h4></label>
                                                                <input type="name" value="" class="form-control" id="location" placeholder="" title="enter a location">
                                                            </div>
                                                            <div class="col-xs-6">
                                                                <label for="email">
                                                                    <h4>Ward</h4></label>
                                                                <input type="name" value="" class="form-control" id="location" placeholder="" title="enter a location">
                                                            </div> comment 
                                                            <div class="col-xs-6">
                                                                <label for="email">
                                                                    <h4>Address</h4></label>
                                                                <input type="name" value="" class="form-control" id="location" placeholder="" title="enter a location">
                                                            </div>
                                                        </div>-->
                                <!--                        <div class="form-group">
                                
                                                            <div class="col-xs-6">
                                                                <label for="password">
                                                                    <h4>Password</h4></label>
                                                                <input type="password" class="form-control" name="password" id="password" placeholder="password" title="enter your password.">
                                                            </div>
                                                        </div>-->
                                <!--                        <div class="form-group">
                                
                                                            <div class="col-xs-6">
                                                                <label for="password2">
                                                                    <h4>Verify</h4></label>
                                                                <input type="password" class="form-control" name="password2" id="password2" placeholder="password2" title="enter your password2.">
                                                            </div>
                                                        </div>-->
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <br>
                                        <button class="btn btn-lg btn-success" name="submit" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                        <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                                      
                                        <button class="btn btn-lg btn-info" href="#Upload" name="submit" type="submit"><i class="glyphicon glyphicon-upload"></i>  UPLOAD NEW AVATAR</button>
                                    </div>
                                </div>  
                                <div class="row gutters">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="text-right">
                                            <p class="success"></p>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                    <!--/tab-pane-->
                </div>
                <!--/tab-content-->

            </div>
            <!--/col-9-->
        </div>
        <!--/row-->

        <style type="text/css">
            body{
                margin-top:20px;
            }
        </style>

        <script type="text/javascript">






        </script>
    </body>
</html>