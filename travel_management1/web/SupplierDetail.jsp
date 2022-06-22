<%-- 
    Document   : SupplierDetail
    Created on : Jun 22, 2022, 5:26:16 PM
    Author     : phams
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/SupplierDetail.css">
    </head>
    <body>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
        <div class="container bootdey flex-grow-1 container-p-y">

            <div class="media align-items-center py-3 mb-3 col-md-8">
                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="d-block ui-w-100 rounded-circle col-md-3">
                <div class="media-body ml-4 col-md-9">
                    <h4 class="font-weight-bold mb-0">John Doe <span class="text-muted font-weight-normal">@johndoe</span></h4>
                    <div class="text-muted mb-2">ID: 3425433</div>
                    <a href="javascript:void(0)" class="btn btn-primary btn-sm" onclick="supplierProfile()" >Profile</a>&nbsp;
                    <a href="javascript:void(0)" class="btn btn-success btn-sm" onclick="supplierHomestay()">Homestay</a>&nbsp;
                    <a href="javascript:void(0)" class="btn btn-default btn-sm icon-btn"><i class="fa fa-mail"></i></a>
                </div>
            </div>

            <div class="container" id="profile" style="display: block">
                <div class="card mb-4" >
                    <div class="card-body">

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Registered:</td>
                                    <td>01/23/2017</td>
                                </tr>
                                <tr>
                                    <td>Latest activity:</td>
                                    <td>01/23/2018 (14 days ago)</td>
                                </tr>
                                <tr>
                                    <td>Verified:</td>
                                    <td><span class="fa fa-check text-primary"></span>&nbsp; Yes</td>
                                </tr>
                                <tr>
                                    <td>Role:</td>
                                    <td>User</td>
                                </tr>
                                <tr>
                                    <td>Status:</td>
                                    <td><span class="badge badge-outline-success">Active</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <hr class="border-light m-0">
                    <div class="table-responsive">
                        <table class="table card-table m-0">
                            <tbody>
                                <tr>
                                    <th>Module Permission</th>
                                    <th>Read</th>
                                    <th>Write</th>
                                    <th>Create</th>
                                    <th>Delete</th>
                                </tr>
                                <tr>
                                    <td>Users</td>
                                    <td><span class="fa fa-check text-primary"></span></td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                </tr>
                                <tr>
                                    <td>Articles</td>
                                    <td><span class="fa fa-check text-primary"></span></td>
                                    <td><span class="fa fa-check text-primary"></span></td>
                                    <td><span class="fa fa-check text-primary"></span></td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                </tr>
                                <tr>
                                    <td>Staff</td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="card">
                    <div class="row no-gutters row-bordered">
                        <div class="d-flex col-md align-items-center">
                            <a href="javascript:void(0)" class="card-body d-block text-body">
                                <div class="text-muted small line-height-1">Posts</div>
                                <div class="text-xlarge">125</div>
                            </a>
                        </div>
                        <div class="d-flex col-md align-items-center">
                            <a href="javascript:void(0)" class="card-body d-block text-body">
                                <div class="text-muted small line-height-1">Followers</div>
                                <div class="text-xlarge">534</div>
                            </a>
                        </div>
                        <div class="d-flex col-md align-items-center">
                            <a href="javascript:void(0)" class="card-body d-block text-body">
                                <div class="text-muted small line-height-1">Following</div>
                                <div class="text-xlarge">236</div>
                            </a>
                        </div>
                    </div>
                    <hr class="border-light m-0" >
                    <div class="card-body">

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Username:</td>
                                    <td>nmaxwell</td>
                                </tr>
                                <tr>
                                    <td>Name:</td>
                                    <td>Nelle Maxwell</td>
                                </tr>
                                <tr>
                                    <td>E-mail:</td>
                                    <td>nmaxwell@mail.com</td>
                                </tr>
                                <tr>
                                    <td>Company:</td>
                                    <td>Company Ltd.</td>
                                </tr>
                            </tbody>
                        </table>

                        <h6 class="mt-4 mb-3">Social links</h6>

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Twitter:</td>
                                    <td><a href="javascript:void(0)">https://twitter.com/user</a></td>
                                </tr>
                                <tr>
                                    <td>Facebook:</td>
                                    <td><a href="javascript:void(0)">https://www.facebook.com/user</a></td>
                                </tr>
                                <tr>
                                    <td>Instagram:</td>
                                    <td><a href="javascript:void(0)">https://www.instagram.com/user</a></td>
                                </tr>
                            </tbody>
                        </table>

                        <h6 class="mt-4 mb-3">Personal info</h6>

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Birthday:</td>
                                    <td>May 3, 1995</td>
                                </tr>
                                <tr>
                                    <td>Country:</td>
                                    <td>Canada</td>
                                </tr>
                                <tr>
                                    <td>Languages:</td>
                                    <td>English</td>
                                </tr>
                            </tbody>
                        </table>

                        <h6 class="mt-4 mb-3">Contacts</h6>

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Phone:</td>
                                    <td>+0 (123) 456 7891</td>
                                </tr>
                            </tbody>
                        </table>

                        <h6 class="mt-4 mb-3">Interests</h6>

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Favorite music:</td>
                                    <td>
                                        Rock,
                                        Alternative,
                                        Electro,
                                        Drum &amp; Bass,
                                        Dance
                                    </td>
                                </tr>
                                <tr>
                                    <td>Favorite movies:</td>
                                    <td>
                                        The Green Mile,
                                        Pulp Fiction,
                                        Back to the Future,
                                        WALL·E,
                                        Django Unchained,
                                        The Truman Show,
                                        Home Alone,
                                        Seven Pounds
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>




            <!--Homestay-->
            <div class="container" id="homestay" style="display: none">
                <div class="card mb-4" >
                    <div class="card-body">

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Registered:</td>
                                    <td>01/23/2022</td>
                                </tr>
                                <tr>
                                    <td>Latest activity:</td>
                                    <td>01/23/2018 (14 days ago)</td>
                                </tr>
                                <tr>
                                    <td>Verified:</td>
                                    <td><span class="fa fa-check text-primary"></span>&nbsp; Yes</td>
                                </tr>
                                <tr>
                                    <td>Role:</td>
                                    <td>User</td>
                                </tr>
                                <tr>
                                    <td>Status:</td>
                                    <td><span class="badge badge-outline-success">Active</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <hr class="border-light m-0">
                    <div class="table-responsive">
                        <table class="table card-table m-0">
                            <tbody>
                                <tr>
                                    <th>Module Permission</th>
                                    <th>Read</th>
                                    <th>Write</th>
                                    <th>Create</th>
                                    <th>Delete</th>
                                </tr>
                                <tr>
                                    <td>Users</td>
                                    <td><span class="fa fa-check text-primary"></span></td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                </tr>
                                <tr>
                                    <td>Articles</td>
                                    <td><span class="fa fa-check text-primary"></span></td>
                                    <td><span class="fa fa-check text-primary"></span></td>
                                    <td><span class="fa fa-check text-primary"></span></td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                </tr>
                                <tr>
                                    <td>Staff</td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                    <td><span class="fa fa-times text-light"></span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="card">
                    <div class="row no-gutters row-bordered">
                        <div class="d-flex col-md align-items-center">
                            <a href="javascript:void(0)" class="card-body d-block text-body">
                                <div class="text-muted small line-height-1">Posts</div>
                                <div class="text-xlarge">250</div>
                            </a>
                        </div>
                        <div class="d-flex col-md align-items-center">
                            <a href="javascript:void(0)" class="card-body d-block text-body">
                                <div class="text-muted small line-height-1">Followers</div>
                                <div class="text-xlarge">534</div>
                            </a>
                        </div>
                        <div class="d-flex col-md align-items-center">
                            <a href="javascript:void(0)" class="card-body d-block text-body">
                                <div class="text-muted small line-height-1">Following</div>
                                <div class="text-xlarge">236</div>
                            </a>
                        </div>
                    </div>
                    <hr class="border-light m-0">
                    <div class="card-body">

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Username:</td>
                                    <td>nmaxwell</td>
                                </tr>
                                <tr>
                                    <td>Name:</td>
                                    <td>Nelle Maxwell</td>
                                </tr>
                                <tr>
                                    <td>E-mail:</td>
                                    <td>nmaxwell@mail.com</td>
                                </tr>
                                <tr>
                                    <td>Company:</td>
                                    <td>Company Ltd.</td>
                                </tr>
                            </tbody>
                        </table>

                        <h6 class="mt-4 mb-3">Social links</h6>

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Twitter:</td>
                                    <td><a href="javascript:void(0)">https://twitter.com/user</a></td>
                                </tr>
                                <tr>
                                    <td>Facebook:</td>
                                    <td><a href="javascript:void(0)">https://www.facebook.com/user</a></td>
                                </tr>
                                <tr>
                                    <td>Instagram:</td>
                                    <td><a href="javascript:void(0)">https://www.instagram.com/user</a></td>
                                </tr>
                            </tbody>
                        </table>

                        <h6 class="mt-4 mb-3">Personal info</h6>

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Birthday:</td>
                                    <td>May 3, 1995</td>
                                </tr>
                                <tr>
                                    <td>Country:</td>
                                    <td>Canada</td>
                                </tr>
                                <tr>
                                    <td>Languages:</td>
                                    <td>English</td>
                                </tr>
                            </tbody>
                        </table>

                        <h6 class="mt-4 mb-3">Contacts</h6>

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Phone:</td>
                                    <td>+0 (123) 456 7891</td>
                                </tr>
                            </tbody>
                        </table>

                        <h6 class="mt-4 mb-3">Interests</h6>

                        <table class="table user-view-table m-0">
                            <tbody>
                                <tr>
                                    <td>Favorite music:</td>
                                    <td>
                                        Rock,
                                        Alternative,
                                        Electro,
                                        Drum &amp; Bass,
                                        Dance
                                    </td>
                                </tr>
                                <tr>
                                    <td>Favorite movies:</td>
                                    <td>
                                        The Green Mile,
                                        Pulp Fiction,
                                        Back to the Future,
                                        WALL·E,
                                        Django Unchained,
                                        The Truman Show,
                                        Home Alone,
                                        Seven Pounds
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                </div>

            </div>
        </div>
        <script>
            function supplierProfile() {
                document.getElementById("profile").style.display = 'none';
                document.getElementById("homestay").style.display = 'block';
            }
            function supplierHomestay() {
                document.getElementById("profile").style.display = 'block';
                document.getElementById("homestay").style.display = 'none';
            }
        </script>
    </body>
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

</html>
