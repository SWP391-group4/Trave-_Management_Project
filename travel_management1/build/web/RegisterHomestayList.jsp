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

        <jsp:include page="AdminLeftPageSupPending.jsp"/>
        <!-- Topbar Navbar -->
        <jsp:include page="AdminHeader.jsp"/>

    </nav>
    <!-- End of Topbar -->

    <!-- Begin Page Content -->

    <div class="container-fluid">

        <div class="row">

            <div class="col-lg-12">

                <!-- Supplier List -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3"  style="display: inline-flex; justify-content: space-between ">
                        <h6 class="m-0 font-weight-bold text-primary">Pending Homestay</h6>
                        <div>
                            <form action="AdminPendingHomestayList" method="post">

                                <input type="text" name="search" placeholder="Search">
                                <input type="submit" class="btn btn-success" value="Search">
                            </form>
                        </div>

                    </div>
                    
                    <c:forEach begin="0" end="${size-1}" var="i">
                        <div class="container pb-5 mb-2">
                            <!-- Alert-->
                            <!-- Cart Item-->
                            <div class="cart-item d-md-flex justify-content-between">
                                <div class="px-3 my-3">
                                    <a class="cart-item-product" href="#">
                                        <div class="cart-item-product-thumb">
                                            <c:if test="${listImage.get(i).imageUrl==null}">
                                                <img src="images/default_person.jpg" alt="Product">
                                            </c:if>
                                                <c:if test="${listImage.get(i).imageUrl!=null}">
                                                <img src="images/${listImage.get(i).imageUrl}" alt="Product">
                                            </c:if>
                                            
                                        </div>
                                        <div class="cart-item-product-info">
                                            <h4 class="font-weight-bold">
                                                ${list.get(i).homeStayname}
                                            </h4>
                                            <span>
                                                <strong>
                                                    Type:
                                                </strong> 
                                                ${listCat.get(i).cateName}
                                            </span>
                                            <span>
                                                <strong>
                                                    Address:
                                                </strong> 
                                                ${listAddress.get(i).specific},${listAddress.get(i).ward},${listAddress.get(i).district},${listAddress.get(i).city}
                                            </span>
                                            
                                        </div>
                                    </a>
                                </div>

                                <div class="px3 my-3 text-center">
                                    <div class="cart-item-label">
                                        Supplier
                                    </div>
                                    <span class="text-xl font-weight-medium">
                                        ${listSupplier.get(i).firstName} ${listSupplier.get(i).lastName}
                                    </span>
                                </div>
                                <div class="px-3 my-3 text-center">
                                    <div class="cart-item-label">
                                        Apparent Price
                                    </div>
                                    <span class="text-xl font-weight-medium">
                                        ${listDetail.get(i).price} VND
                                    </span>
                                </div>
                                <div class="px-3 my-3 text-center">
                                    
                                    <a href="PendingHomstay?homeStayId=${list.get(i).homeStayID}&homestayPending=activate"><button class="btn btn-warning">Detail ></button></a>
                                </div>
                            </div>
                            <!-- Cart Item-->
                        </div>
                    </c:forEach>
                    
                    <c:set value="${endPage}" var="o"/>
                    <ul class="pagination justify-content-center">
                        <c:choose>
                            <c:when test="${tag > 1}">
                                <li class="page-item ">
                                    <a class="page-link" href="AdminPendingHomestayList?index=${tag-1}">Previous</a>
                                </li>
                            </c:when>
                        </c:choose>
                        <c:choose>
                            <c:when test="${tag+3< endPage}">
                                <c:forEach begin="${tag}" end="${tag+2}" var="i">
                                    <li class="${tag==i?"active":""} page-item"><a class="page-link" href="AdminPendingHomestayList?index=${i}">${i}</a></li>
                                    </c:forEach>
                                </c:when>
                                <c:when test="${tag+2>=endPage}">
                                    <c:forEach begin="${tag}" end="${endPage}" var="i">
                                    <li class="${tag==i?"active":""} page-item"><a class="page-link" href="AdminPendingHomestayList?index=${i}">${i}</a></li>
                                    </c:forEach>
                                </c:when>
                            </c:choose>

                        <c:choose>
                            <c:when test="${tag+6< endPage}">
                                <li class="page-item">
                                    <c:set value="${tag+1}" var="n"/>
                                    <a class="page-link" href="AdminPendingHomestayList?index=${tag+1}">Next</a>
                                </li>
                            </c:when>
                        </c:choose>

                    </ul>

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

<style type="text/css">
    body{
        margin-top:20px;
        background:#eee;
    }
    .product-card {
        position: relative;
        max-width: 380px;
        padding-top: 12px;
        padding-bottom: 43px;
        transition: all 0.35s;
        border: 1px solid #e7e7e7;
    }
    .product-card .product-head {
        padding: 0 15px 8px;
    }
    .product-card .product-head .badge {
        margin: 0;
    }
    .product-card .product-thumb {
        display: block;
    }
    .product-card .product-thumb > img {
        display: block;
        width: 100%;
    }
    .product-card .product-card-body {
        padding: 0 20px;
        text-align: center;
    }
    .product-card .product-meta {
        display: block;
        padding: 12px 0 2px;
        transition: color 0.25s;
        color: rgba(140, 140, 140, .75);
        font-size: 12px;
        font-weight: 600;
        text-decoration: none;
    }
    .product-card .product-meta:hover {
        color: #8c8c8c;
    }
    .product-card .product-title {
        margin-bottom: 8px;
        font-size: 16px;
        font-weight: bold;
    }
    .product-card .product-title > a {
        transition: color 0.3s;
        color: #343b43;
        text-decoration: none;
    }
    .product-card .product-title > a:hover {
        color: #ac32e4;
    }
    .product-card .product-price {
        display: block;
        color: #404040;
        font-family: 'Montserrat', sans-serif;
        font-weight: normal;
    }
    .product-card .product-price > del {
        margin-right: 6px;
        color: rgba(140, 140, 140, .75);
    }
    .product-card .product-buttons-wrap {
        position: absolute;
        bottom: -20px;
        left: 0;
        width: 100%;
    }
    .product-card .product-buttons {
        display: table;
        margin: auto;
        background-color: #fff;
        box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .11);
    }
    .product-card .product-button {
        display: table-cell;
        position: relative;
        width: 50px;
        height: 40px;
        border-right: 1px solid rgba(231, 231, 231, .6);
    }
    .product-card .product-button:last-child {
        border-right: 0;
    }
    .product-card .product-button > a {
        display: block;
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        transition: all 0.3s;
        color: #404040;
        font-size: 16px;
        line-height: 40px;
        text-align: center;
        text-decoration: none;
    }
    .product-card .product-button > a:hover {
        background-color: #ac32e4;
        color: #fff;
    }
    .product-card:hover {
        border-color: transparent;
        box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .09);
    }
    .product-category-card {
        display: block;
        max-width: 400px;
        text-align: center;
        text-decoration: none !important;
    }
    .product-category-card .product-category-card-thumb {
        display: table;
        width: 100%;
        box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .09);
    }
    .product-category-card .product-category-card-body {
        padding: 20px;
        padding-bottom: 28px;
    }
    .product-category-card .main-img, .product-category-card .thumblist {
        display: table-cell;
        padding: 15px;
        vertical-align: middle;
    }
    .product-category-card .main-img > img, .product-category-card .thumblist > img {
        display: block;
        width: 100%;
    }
    .product-category-card .main-img {
        width: 65%;
        padding-right: 10px;
    }
    .product-category-card .thumblist {
        width: 35%;
        padding-left: 10px;
    }
    .product-category-card .thumblist > img:first-child {
        margin-bottom: 6px;
    }
    .product-category-card .product-category-card-meta {
        display: block;
        padding-bottom: 9px;
        color: rgba(140, 140, 140, .75);
        font-size: 11px;
        font-weight: 600;
    }
    .product-category-card .product-category-card-title {
        margin-bottom: 0;
        transition: color 0.3s;
        color: #343b43;
        font-size: 18px;
    }
    .product-category-card:hover .product-category-card-title {
        color: #ac32e4;
    }
    .product-gallery {
        position: relative;
        padding: 45px 15px 0;
        box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .09);
    }
    .product-gallery .gallery-item::before {
        display: none !important;
    }
    .product-gallery .gallery-item::after {
        box-shadow: 0 8px 24px 0 rgba(0, 0, 0, .26);
    }
    .product-gallery .video-player-button, .product-gallery .badge {
        position: absolute;
        z-index: 5;
    }
    .product-gallery .badge {
        top: 15px;
        left: 15px;
        margin-left: 0;
    }
    .product-gallery .video-player-button {
        top: 0;
        right: 15px;
        width: 60px;
        height: 60px;
        line-height: 60px;
    }
    .product-gallery .product-thumbnails {
        display: block;
        margin: 0 -15px;
        padding: 12px;
        border-top: 1px solid #e7e7e7;
        list-style: none;
        text-align: center;
    }
    .product-gallery .product-thumbnails > li {
        display: inline-block;
        margin: 10px 3px;
    }
    .product-gallery .product-thumbnails > li > a {
        display: block;
        width: 94px;
        transition: all 0.25s;
        border: 1px solid transparent;
        background-color: #fff;
        opacity: 0.75;
    }
    .product-gallery .product-thumbnails > li:hover > a {
        opacity: 1;
    }
    .product-gallery .product-thumbnails > li.active > a {
        border-color: #ac32e4;
        cursor: default;
        opacity: 1;
    }
    .product-meta {
        padding-bottom: 10px;
    }
    .product-meta > a, .product-meta > i {
        display: inline-block;
        margin-right: 5px;
        color: rgba(140, 140, 140, .75);
        vertical-align: middle;
    }
    .product-meta > i {
        margin-top: 2px;
    }
    .product-meta > a {
        transition: color 0.25s;
        font-size: 13px;
        font-weight: 600;
        text-decoration: none;
    }
    .product-meta > a:hover {
        color: #8c8c8c;
    }
    .cart-item {
        position: relative;
        margin-bottom: 30px;
        padding: 0 50px 0 10px;
        background-color: #fff;
        box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .09);
    }
    .cart-item .cart-item-label {
        display: block;
        margin-bottom: 15px;
        color: #8c8c8c;
        font-size: 13px;
        font-weight: 600;
        text-transform: uppercase;
    }
    .cart-item .cart-item-product {
        display: table;
        width: 420px;
        text-decoration: none;
    }
    .cart-item .cart-item-product-thumb, .cart-item .cart-item-product-info {
        display: table-cell;
        vertical-align: top;
    }
    .cart-item .cart-item-product-thumb {
        width: 110px;
    }
    .cart-item .cart-item-product-thumb > img {
        display: block;
        width: 100%;
    }
    .cart-item .cart-item-product-info {
        padding-top: 5px;
        padding-left: 15px;
    }
    .cart-item .cart-item-product-info > span {
        display: block;
        margin-bottom: 2px;
        color: #404040;
        font-size: 12px;
    }
    .cart-item .cart-item-product-title {
        margin-bottom: 8px;
        transition: color, 0.3s;
        color: #343b43;
        font-size: 16px;
        font-weight: bold;
    }
    .cart-item .cart-item-product:hover .cart-item-product-title {
        color: #ac32e4;
    }
    .cart-item .count-input {
        display: inline-block;
        width: 85px;
    }
    .cart-item .remove-item {
        right: -10px !important;
    }
    @media (max-width: 991px) {
        .cart-item {
            padding-right: 30px;
        }
        .cart-item .cart-item-product {
            width: auto;
        }
    }
    @media (max-width: 768px) {
        .cart-item {
            padding-right: 10px;
            padding-bottom: 15px;
        }
        .cart-item .cart-item-product {
            display: block;
            width: 100%;
            text-align: center;
        }
        .cart-item .cart-item-product-thumb, .cart-item .cart-item-product-info {
            display: block;
        }
        .cart-item .cart-item-product-thumb {
            margin: 0 auto 10px;
        }
        .cart-item .cart-item-product-info {
            padding-left: 0;
        }
        .cart-item .cart-item-label {
            margin-bottom: 8px;
        }
    }
    .comparison-table {
        width: 100%;
        overflow-x: auto;
        -webkit-overflow-scrolling: touch;
        -ms-overflow-style: -ms-autohiding-scrollbar;
    }
    .comparison-table table {
        min-width: 750px;
        table-layout: fixed;
    }
    .comparison-table .comparison-item {
        position: relative;
        margin-bottom: 10px;
        padding: 13px 12px 18px;
        background-color: #fff;
        text-align: center;
        box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .09);
    }
    .comparison-table .comparison-item .comparison-item-thumb {
        display: block;
        width: 80px;
        margin-right: auto;
        margin-bottom: 12px;
        margin-left: auto;
    }
    .comparison-table .comparison-item .comparison-item-thumb > img {
        display: block;
        width: 100%;
    }
    .comparison-table .comparison-item .comparison-item-title {
        display: block;
        margin-bottom: 14px;
        transition: color 0.25s;
        color: #404040;
        font-size: 14px;
        font-weight: 600;
        text-decoration: none;
    }
    .comparison-table .comparison-item .comparison-item-title:hover {
        color: #ac32e4;
    }
    .remove-item {
        display: block;
        position: absolute;
        top: -5px;
        right: -5px;
        width: 22px;
        height: 22px;
        padding-left: 1px;
        border-radius: 50%;
        background-color: #ff5252;
        color: #fff;
        line-height: 23px;
        text-align: center;
        box-shadow: 0 3px 12px 0 rgba(255, 82, 82, .5);
        cursor: pointer;
    }
    .card-wrapper {
        margin: 30px -15px;
    }
    @media (max-width: 576px) {
        .card-wrapper .jp-card-container {
            width: 260px !important;
        }
        .card-wrapper .jp-card {
            min-width: 250px !important;
        }
    }

</style>
<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

</body>

</html>