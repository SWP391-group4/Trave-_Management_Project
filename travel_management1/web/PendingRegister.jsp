<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CTU Travel</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">   

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link href="css/pendingRegister.css" rel="stylesheet">
        <script src="js/pendingRegister.js"></script>
    </head>

    <body id="page-top">

        <jsp:include page="AdminLeftPage.jsp"/>

        <!-- Topbar Navbar -->
        <jsp:include page="AdminHeader.jsp"></jsp:include>

    </nav>
    <!-- End of Topbar -->

    <!-- Begin Page Content -->
    <div class="container">
        
        <div class="well col-xs-8 col-sm-8 col-md-8 col-lg-8 col-xs-offset-2 col-sm-offset-2 col-md-offset-2 col-lg-offset-2">
            <div class="row user-row">
                <div class="col-xs-3 col-sm-2 col-md-1 col-lg-1">
                    <img class="img-circle"
                         src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=50"
                         alt="User Pic">
                </div>
                <div class="col-xs-8 col-sm-9 col-md-10 col-lg-10">
                    <strong>Cyruxx</strong><br>
                    <span class="text-muted">User level: Administrator</span>
                </div>
                <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 dropdown-user" data-for=".cyruxx">
                    <i class="glyphicon glyphicon-chevron-down text-muted"></i>
                </div>
            </div>
            <div class="row user-infos cyruxx">
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-0 col-md-offset-1 col-lg-offset-1">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">User information</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-xs-2 col-sm-2 hidden-md hidden-lg">
                                    <img class="img-circle"
                                         src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=50"
                                         alt="User Pic">
                                </div>
                                <div class="col-xs-12 col-sm-10 hidden-md hidden-lg">
                                    <strong>Cyruxx</strong><br>
                                    <dl>
                                        <dt>User level:</dt>
                                        <dd>Administrator</dd>
                                        <dt>Registered since:</dt>
                                        <dd>11/12/2013</dd>
                                        <dt>Topics</dt>
                                        <dd>15</dd>
                                        <dt>Warnings</dt>
                                        <dd>0</dd>
                                    </dl>
                                </div>
                                <div class=" col-md-12 col-lg-12 hidden-xs hidden-sm">
                                    <strong>Cyruxx</strong><br>
                                    <table class="table table-user-information">
                                        <tbody>
                                            <tr>
                                                <td>User level:</td>
                                                <td>Administrator</td>
                                            </tr>
                                            <tr>
                                                <td>Registered since:</td>
                                                <td>11/12/2013</td>
                                            </tr>
                                            <tr>
                                                <td>Topics</td>
                                                <td>15</td>
                                            </tr>
                                            <tr>
                                                <td>Warnings</td>
                                                <td>0</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <button class="btn btn-sm btn-primary" type="button"
                                    data-toggle="tooltip"
                                    data-original-title="Send message to user"><i class="glyphicon glyphicon-envelope"></i></button>
                            <span class="pull-right">
                                <button class="btn btn-sm btn-warning" type="button"
                                        data-toggle="tooltip"
                                        data-original-title="Edit this user"><i class="glyphicon glyphicon-edit"></i></button>
                                <button class="btn btn-sm btn-danger" type="button"
                                        data-toggle="tooltip"
                                        data-original-title="Remove this user"><i class="glyphicon glyphicon-remove"></i></button>
                            </span>
                        </div>
                    </div>
                </div>
            </div>



        </div>
    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Footer -->
<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2021</span>
        </div>
    </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login">Logout</a>
            </div>
        </div>
    </div>`
</div>

<!-- Bootstrap core JavaScript-->
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