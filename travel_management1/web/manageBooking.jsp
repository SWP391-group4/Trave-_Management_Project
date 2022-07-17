<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Booking Manage</title>
        <link
            rel="stylesheet"
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
        <!-- https://fonts.google.com/specimen/Roboto -->
        <link rel="stylesheet" href="css/fontawesome.min.css" />
        <!-- https://fontawesome.com/ -->


        <!--
            Product Admin CSS Template
            
        -->
    </head>

    <body id="reportsPage">
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="container mt-5">
                <div class="row tm-content-row">
                    <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
                        <div class="tm-bg-primary-dark tm-block tm-block-products">
                            <div class="tm-product-table-container">

                                <table class="table table-hover tm-table-small tm-product-table">

                                    <thead>
                                        <tr>

                                            <th scope="col">NAME</th>
                                            <th scope="col">VisitorNumber</th>
                                            <th scope="col">BookingTime</th>
                                            <th scope="col">OrderTime</th>
                                            <th scope="col">Phone</th>
                                            <th scope="col">Mail</th>
                                            <th  scope="col">Status</th>
                                              <th  scope="col">Action</th>


                                        </tr>
                                    </thead>
                                <c:forEach items="${listhomeStayID}" var="o">
                                    <tbody>

                                        <tr>

                                            <td>${o.accountC}</td>
                                            <td>${o.visitorNumber}</td>
                                            <td>${o.bookingTime}</td>
                                            <td>${o.orderTime}</td>
                                            <td>${o.phone}</td>
                                            <td>${o.email}</td> 
                                           <c:if test="${o.status==0}">
                                                <td><span class="badge bg-warning">Pending</span></td>
                                                <td><a class="btn btn-warning text-light" href="" >Change</a>
                                            </c:if>
                                            <c:if test="${o.status==1}">
                                                <td><span class="badge bg-success">Accept</span></td>
                                                      <td><a   class="btn btn-warning text-light" href="" >Change</a>
                                            </c:if>
                                                <c:if test="${o.status!=1&&o.status!=0}">
                                                <td><span class="badge bg-secondary">Done</span></td>
                                                <td><a class="btn btn-secondary" href=""  >Delete</a>
                                            </c:if>
                                         

                                        </tr>

                                    </tbody>


                                </c:forEach>

                            </table>

                        </div>
                        <!-- table container -->


                    </div>
                    <h2>Last Booking</h2>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">NAME</th>
                                <th scope="col">VisitorNumber</th>
                                <th scope="col">BookingTime</th>
                                <th scope="col">OrderTime</th>
                                <th scope="col">Phone</th>
                                <th scope="col">Mail</th>
                                <th  scope="col">Status</th>
                   
                            </tr>
                        </thead>
                    <c:forEach items="${list}" var="o">
                        <tbody>
                                <tr>

                                            <td>${o.accountC}</td>
                                            <td>${o.visitorNumber}</td>
                                            <td>${o.bookingTime}</td>
                                            <td>${o.orderTime}</td>
                                            <td>${o.phone}</td>
                                            <td>${o.email}</td> 
                                            <c:if test="${o.status==0}">
                                                <td><span class="badge bg-warning">Pending</span></td>
                                               
                                            </c:if>
                                            <c:if test="${o.status==1}">
                                                <td><span class="badge bg-success">Accept</span></td>
                                                   
                                            </c:if>
                                                <c:if test="${o.status!=1&&o.status!=0}">
                                                <td><span class="badge bg-secondary">Done</span></td>
                                              
                                            </c:if>
                                          

                                        </tr>
                        </tbody>
                        </c:forEach>
                    </table>
                </div>

            </div>

        </div>
  <jsp:include page="Footer.jsp"></jsp:include>
        <script src="js/jquery-3.3.1.min.js"></script>
        <!-- https://jquery.com/download/ -->
        <script src="js/bootstrap.min.js"></script>
        <!-- https://getbootstrap.com/ -->
        <script>
            $(function () {
                $(".tm-product-name").on("click", function () {
                    window.location.href = "edit-product.html";
                });
            });
        </script>
    </body>
</html>