<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Supplier List</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <jsp:include page="AdminLeftPageSup.jsp"/>
        <!-- Topbar Navbar -->
        <jsp:include page="AdminHeader.jsp"/>

    </nav>
    <!-- End of Topbar -->

    <!-- Begin Page Content -->

    <div class="container-fluid">



        <div class="row">

            <div class="col-lg-7">

                <!-- Supplier List -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3"  style="display: inline-flex; justify-content: space-between ">
                        <h6 class="m-0 font-weight-bold text-primary"><a href="AdminManageSupplierList">List Suppliers</a></h6>
                        <div>
                            <form action="AdminManageSearch">
                                <input type="text" name="search" placeholder="Search">
                                <input type="submit" name="submit" value="Search" class="btn btn-success">
                            </form>
                        </div>

                    </div>
                    <div class="card-body col-md-12">

                        <table class="table table-striped">


                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Supplier</th>
                                    <th scope="col">Homestay</th>
                                    <th scope="col">Email</th>
                                    <th scope="col"></th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${list}" var="o">
                                <form action="PreviewSearch?search=${search}&homestay${o.homestayId}&index=${tag}" method="get">
                                    <tr>
                                        <td><input type="hidden" name="homestay" value="${o.homestayId}"></td>
                                    <input type="hidden" name="tag" value="${tag}">
                                    <input type="hidden" name="search" value="${search}">
                                    <td>${o.firstName} ${o.lastName}</td>
                                    <td>${o.homestayName}</td>
                                    <td>${o.email}</td>
                                    <td><button type="submit" class="btn btn-primary" >
                                            Preview
                                        </button>
                                    </td>
                                    <td>
                                        <!--<input type="button" class="btn btn-warning" value="Detail" src="SupplierDetail.jsp">-->
                                        <button type="submit" class="btn btn-warning"><a href="SupplierDetail.jsp">Detail</a></button>
                                    </td>
                                    </tr>
                                </form>
                            </c:forEach>
                            </tbody>

                        </table>

                    </div>

                    <c:set value="${endPage}" var="o"/>
                    <ul class="pagination justify-content-center">
                        <c:choose>
                            <c:when test="${tag > 1}">
                                <li class="page-item ">
                                    <a class="page-link" href="AdminManageSearch?search=${search}&index=${tag-1}">Previous</a>
                                </li>
                            </c:when>
                        </c:choose>
                        <c:choose>
                            <c:when test="${tag+4< endPage}">
                                <c:forEach begin="${tag}" end="${tag+2}" var="i">
                                    <li class="${tag==i?"active":""} page-item"><a class="page-link" href="AdminManageSearch?search=${search}&index=${i}">${i}</a></li>
                                    </c:forEach>
                                </c:when>
                                <c:when test="${tag+2>=endPage}">
                                    <c:forEach begin="${tag}" end="${endPage}" var="i">
                                    <li class="${tag==i?"active":""} page-item"><a class="page-link" href="AdminManageSearch?search=${search}&index=${i}">${i}</a></li>
                                    </c:forEach>
                                </c:when>
                            </c:choose>

                        <c:choose>
                            <c:when test="${tag+6< endPage}">
                                <li class="page-item">
                                    <c:set value="${tag+1}" var="n"/>
                                    <a class="page-link" href="AdminManageSearch?search=${search}&index=${tag+1}">Next</a>
                                </li>
                            </c:when>
                        </c:choose>

                    </ul>

                </div>



            </div>

            <div class="col-lg-5">

                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Supplier Preview</h6>
                    </div>
                    <div class="card-body" id="supplierPreview" style="display: block" >

                        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
                        <div class="container bootdey flex-grow-1 container-p-y">

                            <div class="media align-items-center py-3 mb-3">
                                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="d-block ui-w-100 rounded-circle col-md-4">
                                <div class="media-body ml-4 col-md-8">
                                    <h4 class="font-weight-bold mb-0">${supHome.firstName} ${supHome.lastName}</h4>
                                    <div class="text-muted mb-2">${supHome.email}</div>
                                    <div class="text-muted mb-2">Phone: ${supHome.phone}</div>
                                    <div class="text-muted mb-2"></div>
                                    <a href="javascript:void(0)" class="btn btn-default btn-sm icon-btn"><i class="fa fa-mail"></i></a>
                                </div>
                            </div>


                            <div class="card mb-4">
                                <div class="card-body">
                                    <table class="table user-view-table m-0">
                                        <tbody>
                                            <tr>
                                                <td>Service name:</td>
                                                <td>${supHome.homestayName}</td>
                                            </tr>
                                            <tr>
                                                <td>Type:</td>
                                                <td>${cateName}</td>
                                            </tr>
                                            <tr>
                                                <td>Evaluate:</td>
                                                <td>${evaluate}</td>
                                            </tr>

                                            <tr>
                                                <td>City:</td>
                                                <td>Ha Noi</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                            <div>
                                <input type="submit" class="btn btn-success" value="View Detail" src="SupplierDetail.jsp">
                            </div>
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
            <span>Copyright &copy; Your Website 2020</span>
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
                    <span aria-hidden="true">�</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="logout">Logout</a>
            </div>
        </div>
    </div>
</div>


<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

</body>

</html>