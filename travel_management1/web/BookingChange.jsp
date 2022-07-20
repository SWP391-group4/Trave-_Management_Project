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

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />

        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <jsp:include page="Header.jsp"></jsp:include>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">

                        <p>${homeStayID}</p>

                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            Customer Booking
                        </div>
                        <div class="card-body">
                            <table id="datatablesSimple">
                                <thead>
                                    <tr>
                                        <th>OrID</th>
                                        <th>Account</th>
                                        <th>LastName</th>
                                        <th>Phone</th>
                                        <th>OrderTime</th>
                                        <th>Day</th>
                                        <th>VistorNumber</th>
                                        <th>Price</th>
                                        <th>Status</th>
                                        <th>Email</th>
                                        <th>Action<th>

                                    </tr>

                                </thead>

                                <tbody>

                                    <c:forEach items="${listhomeStayID}" var="o">

                                        <tr>
                                   
                                    <td>${o.orderNumber}</td>
                                    <td>${o.accountC}</td>
                                    <td>${o.firstName}</td>
                                    <td>${o.phone}</td>
                                    <td>${o.orderTime}</td>
                                    <td>${o.bookingTime}</td>
                                    <td>${o.visitorNumber}</td>
                                    <td>${o.price}</td>
                                    <c:if test="${o.status==0}">
                                        <td><span class="badge bg-warning">Pending</span></td>
                                    </c:if>
                                    <c:if test="${o.status==1}">
                                        <td><span class="badge bg-secondary text-light">Checked</span></td>
                                    </c:if>
                                    <td>${o.email}</td>
                                    <c:if  test="${o.status==0}">
                                    <td><a href="bookingchange?service=update&homeStayID=${homeStayID}&orderNumber=${o.orderNumber}">Update</a></td>
                                    </c:if>
                                    <c:if  test="${o.status==1}">
                                    <td></td>
                                    </c:if>
                                    </tr>

                                </c:forEach>

                                </tbody>
                            </table>
                        </div>  
                    </div>




                </div>
            </main>
            <jsp:include page="Footer.jsp"></jsp:include>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js123"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo121.js"></script>
    </body>
</html>
