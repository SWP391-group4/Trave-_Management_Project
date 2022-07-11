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

            <div class="col-lg-8">

                <!-- Supplier List -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3"  style="display: inline-flex; justify-content: space-between ">
                        <h6 class="m-0 font-weight-bold text-primary">Pending Supplier</h6>
                        <div>
                            <form action="AdminManageSearch">
                                <input type="text" name="search" placeholder="Search">
                                <input type="submit" class="btn btn-success" value="Search">
                            </form>
                        </div>

                    </div>
                    <div class="card-body col-md-12">

                        <table class="table table-striped">
                            <thead>
                                <tr>

                                    <th scope="col">Supplier</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Phone</th>
                                    <th scope="col"></th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${list}" var="o">                               

                                <form action="AdminPendingRegister" method="get">
                                    <tr>
                                        <td>${o.firstName} ${o.lastName}</td>
                                        <td>${o.email}</td>
                                        <td>${o.phone}</td>
                                        <td><button type="submit" class="btn btn-warning" >
                                                <a href="PendingSupplier?supplierId=${o.accountS}">
                                                    View
                                                </a>
                                            </button>
                                        </td>
                                </form>
                                <td>
                                    <!--<input type="button" class="btn btn-warning" value="Detail" src="SupplierDetail.jsp">-->
                                    <a href="AdminPendingRegister?update=1&supplierId=${o.accountS}"><button type="submit" class="btn btn-success">Accept</button></a>
                                </td>
                                <form action="AdminPendingRegister" method="get">
                                    <td>

                                        <input type="hidden" name="supplierId" value="${o.accountS}">
                                        <input type="hidden" name="index" value="${tag}">
                                        <button><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right" viewBox="0 0 16 16">
                                            <path d="M6 12.796V3.204L11.481 8 6 12.796zm.659.753 5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z"/>
                                            </svg></button>

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
                                    <a class="page-link" href="AdminPendingRegister?index=${tag-1}">Previous</a>
                                </li>
                            </c:when>
                        </c:choose>
                        <c:choose>
                            <c:when test="${tag+3< endPage}">
                                <c:forEach begin="${tag}" end="${tag+2}" var="i">
                                    <li class="${tag==i?"active":""} page-item"><a class="page-link" href="AdminPendingRegister?index=${i}">${i}</a></li>
                                    </c:forEach>
                                </c:when>
                                <c:when test="${tag+2>=endPage}">
                                    <c:forEach begin="${tag}" end="${endPage}" var="i">
                                    <li class="${tag==i?"active":""} page-item"><a class="page-link" href="AdminPendingRegister?index=${i}">${i}</a></li>
                                    </c:forEach>
                                </c:when>
                            </c:choose>

                        <c:choose>
                            <c:when test="${tag+6< endPage}">
                                <li class="page-item">
                                    <c:set value="${tag+1}" var="n"/>
                                    <a class="page-link" href="AdminPendingRegister?index=${tag+1}">Next</a>
                                </li>
                            </c:when>
                        </c:choose>

                    </ul>

                </div>



            </div>

            <div class="col-lg-4">

                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Pending Homestay</h6>
                    </div>
                    <c:if test="${supplierId != null}"> 
                        <c:set value="${listAddress}" var="Address"/>
                        <c:set value="${listHomestay}" var="homestay"/>
                        <c:set value="${listCat}" var="cat"/>
                        <c:forEach begin="0" end="${size-1}" var="i">
                            <div class="card-body " id="supplierPreview" style="display: block" >
                                <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
                                <div class="container bootdey flex-grow-1 container-p-y ">
                                    <div class="media align-items-center py-3 mb-3 ">
                                        <img src="images/hotel-1.jpg" alt="" class="col-md-5">
                                        <div class="media-body ml-4 col-md-7">
                                            <h4 class="font-weight-bold mb-0">${homestay.get(i).homeStayname}</h4>
                                            <div class="text-muted mb-2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building" viewBox="0 0 16 16">
                                                <path fill-rule="evenodd" d="M14.763.075A.5.5 0 0 1 15 .5v15a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5V14h-1v1.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V10a.5.5 0 0 1 .342-.474L6 7.64V4.5a.5.5 0 0 1 .276-.447l8-4a.5.5 0 0 1 .487.022zM6 8.694 1 10.36V15h5V8.694zM7 15h2v-1.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 .5.5V15h2V1.309l-7 3.5V15z"/>
                                                <path d="M2 11h1v1H2v-1zm2 0h1v1H4v-1zm-2 2h1v1H2v-1zm2 0h1v1H4v-1zm4-4h1v1H8V9zm2 0h1v1h-1V9zm-2 2h1v1H8v-1zm2 0h1v1h-1v-1zm2-2h1v1h-1V9zm0 2h1v1h-1v-1zM8 7h1v1H8V7zm2 0h1v1h-1V7zm2 0h1v1h-1V7zM8 5h1v1H8V5zm2 0h1v1h-1V5zm2 0h1v1h-1V5zm0-2h1v1h-1V3z"/>
                                                </svg> ${cat.get(i).cateName}</div>
                                            <div class="text-muted mb-2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-align-bottom" viewBox="0 0 16 16">
                                                <rect width="4" height="12" x="6" y="1" rx="1"/>
                                                <path d="M1.5 14a.5.5 0 0 0 0 1v-1zm13 1a.5.5 0 0 0 0-1v1zm-13 0h13v-1h-13v1z"/>
                                                </svg> ${Address.get(i).ward}, ${Address.get(i).district}</div>
                                            <div class="text-muted mb-2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hospital" viewBox="0 0 16 16">
                                                <path d="M8.5 5.034v1.1l.953-.55.5.867L9 7l.953.55-.5.866-.953-.55v1.1h-1v-1.1l-.953.55-.5-.866L7 7l-.953-.55.5-.866.953.55v-1.1h1ZM13.25 9a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5a.25.25 0 0 0 .25-.25v-.5a.25.25 0 0 0-.25-.25h-.5ZM13 11.25a.25.25 0 0 1 .25-.25h.5a.25.25 0 0 1 .25.25v.5a.25.25 0 0 1-.25.25h-.5a.25.25 0 0 1-.25-.25v-.5Zm.25 1.75a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5a.25.25 0 0 0 .25-.25v-.5a.25.25 0 0 0-.25-.25h-.5Zm-11-4a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5A.25.25 0 0 0 3 9.75v-.5A.25.25 0 0 0 2.75 9h-.5Zm0 2a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5a.25.25 0 0 0 .25-.25v-.5a.25.25 0 0 0-.25-.25h-.5ZM2 13.25a.25.25 0 0 1 .25-.25h.5a.25.25 0 0 1 .25.25v.5a.25.25 0 0 1-.25.25h-.5a.25.25 0 0 1-.25-.25v-.5Z"/>
                                                <path d="M5 1a1 1 0 0 1 1-1h4a1 1 0 0 1 1 1v1a1 1 0 0 1 1 1v4h3a1 1 0 0 1 1 1v7a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V8a1 1 0 0 1 1-1h3V3a1 1 0 0 1 1-1V1Zm2 14h2v-3H7v3Zm3 0h1V3H5v12h1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3Zm0-14H6v1h4V1Zm2 7v7h3V8h-3Zm-8 7V8H1v7h3Z"/>
                                                </svg> ${Address.get(i).city}</div>
                                            <div class="text-muted mb-2"></div>
                                            <a href="javascript:void(0)" class="btn btn-default btn-sm icon-btn"><i class="fa fa-mail"></i></a></div>
                                    </div>
                                    <div>
                                        <table>
                                            <tbody>
                                            <td>
                                                <a href="PendingHomstay?homeStayId=${homestay.get(i).homeStayID}">
                                                    <button class="btn btn-primary">View Detail</button></a>
                                            </td>
                                           
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
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
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
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