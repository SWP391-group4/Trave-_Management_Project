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
                        <div style="padding-bottom: 25px ">
                            <a href="suppilerProflieController">Profile ></a>
                            <a href="updateaddress">Change Address & Avatar</a>
                        </div>
                        <h1>User: ${spa.accountS}</h1></div>
                <div class="col-sm-2">
                    <c:choose>
                        <c:when test="${Simg.img_Avatar == ''}">
                            <a href="suppilerProflieController" class="pull-right"><img title="cc" class="img-circle img-responsive" src="images/AvatarDefault.jpg">
                            </a>
                        </c:when>
                        <c:otherwise>
                            <img title="cca" class="img-circle img-responsive" src="images/${Simg.img_Avatar}">
                        </c:otherwise>
                    </c:choose>


                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <!--left col-->
                    <div class="container">

                    </div>
                    <ul class="list-group ">
                        <li class="list-group-item  bg-secondary text-light">Address</li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong>City</strong></span> ${spa.city} </li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong>District</strong></span> ${spa.district} </li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong>Specific</strong></span> ${spa.specific} </li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong>Ward</strong></span> ${spa.ward} </li>
                    </ul>




                </div>
                <!--/col-3-->
                <div class="col-sm-9">


                    <div class="tab-pane active" id="settings">

                        <hr>
                        <form class="form" action="updateaddress" method="post" id="registrationForm" enctype="multipart/form-data">
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="first_name">
                                        <h4>City</h4></label>
                                    <input type="text" class="form-control" value="${spa.city}""  name="city" id="first_name" placeholder="${spa.city}" title="">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="first_name">
                                        <h4>Ward</h4></label>
                                    <input type="text" class="form-control" value="${spa.ward}"  name="ward" id="first_name" placeholder="${spa.ward}" title="">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="first_name">
                                        <h4>District</h4></label>
                                    <input type="text" class="form-control" value="${spa.district}"  name="district" id="first_name" placeholder="${spa.district}" title="">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="first_name">
                                        <h4>Specific</h4></label>
                                    <input type="text" class="form-control" value="${spa.specific}"  name="specific" id="first_name" placeholder="${spa.specific}" title="">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <br>
                                    <button class="btn btn-lg btn-success" name="submit" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                    <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>

                                </div>
                                <input type="file" name="image" value="image" class="custom" accept="image/png, image/jpg, image/jpeg,image/n.jpg">
                            </div>  
                            <div class="row gutters">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <div class="text-right">
                                        <p class="success">${noti}</p>
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
        <jsp:include page="Footer.jsp"/>
        <!--/row-->

        <style type="text/css">
            body{
                margin-bottom:20px;
            }
        </style>

        <script type="text/javascript">






        </script>
    </body>
</html>