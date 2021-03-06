<%@page import="Entity.HomeStays"%>
<!doctype html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link href='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css' rel='stylesheet'>
        <link href='' rel='stylesheet'>
        <style>h2 {
                font-size: 40px;
                background: linear-gradient(to left, #660066 0%, #ff3300 100%);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
            }</style>
        <script type='text/javascript' src=''></script>
        <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
        <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js'></script>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <title>CTU Travel</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Abril+Fatface" rel="stylesheet">
        <link href="star/rateit.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/cmt.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="icon" href="images/logo.png" type="">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
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


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <link href="blog-overview.css" rel="stylesheet">
    </head>
</head>
<jsp:include page="Header.jsp"></jsp:include>
    <body oncontextmenu='return false' class='snippet-body'>
        <main class="container"  style="margin-bottom:50px">
            <div class="py-5 text-center">
                <h2>Booking</h2>
            </div>
            <div class="row g-5">
                <div class="col-md-5 col-lg-4 order-md-last">
                    <h4 class="d-flex justify-content-between align-items-center mb-3">
                        
                    <%
                        HomeStays h = (HomeStays) request.getAttribute("detail");
                        double discount = (double) request.getAttribute("discount");
                        double total = h.getPrice() - discount * h.getPrice();
                    %>
                    <span class="text-primary">Price: <%=total%> VND / 1 Day</span>
                </h4>
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between lh-sm">
                        <div>
                            <h6 class="my-0">HomeStay: ${detail.homeStayname} </h6>
                            <small>Address: ${detail.specific}, ${detail.ward}, ${detail.city}</small>
                        </div>  
                    </li>        
                </ul>
                <form class="card p-2" method="post" action="bookingController">
                    <div class="input-group">    
                        <input type="hidden" name="homestayid" value="${detail.homeStayID}">  
                        <select class="form-select" id="country" name="voucherid" >
                            <option value=".">No Use</option>
                            <c:forEach items="${voucher}" var="c">                                  
                                <c:if test="${c.voucherId==check}">                               
                                    <option value="${c.voucherId}" selected="">${c.title} (${c.discount}%)</option>
                                </c:if>
                                <c:if test="${c.voucherId!=check}">                               
                                    <option value="${c.voucherId}" >${c.title} (${c.discount}%)</option>
                                </c:if>
                            </c:forEach>
                        </select>
                        <button type="submit" name="submit" value="add" class="btn btn-danger">Add</button>
                    </div>
                </form>
            </div>
            <div class="col-md-7 col-lg-8">
                <form class="needs-validation" method="post" action="bookingController">
                    <div class="row g-3">
                        <div class="col-sm-6">
                            <input type="hidden" name="homestayid" value="${detail.homeStayID}"> 
                            <input type="hidden" name="voucherid" value="${check}">
                            <input type="hidden" name="total" value="<%=total%>">
                            <label for="firstName" class="form-label">First name</label>
                            <input type="text" class="form-control" id="firstName" name="firstname" required>
                            <div class="invalid-feedback">
                                Valid first name is required.
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <label for="lastName" class="form-label">Last name</label>
                            <input type="text" class="form-control" id="lastName" name="lastname" required>
                            <div class="invalid-feedback">
                                Valid last name is required.
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <label for="lastName" class="form-label">Visitor Number</label>
                            <input type="number" class="form-control" id="lastName" name="numvisitor" min="1" required>
                            <div class="invalid-feedback">
                                Visitor is required.
                            </div>
                        </div>
                        <div class="col-12">
                            <label for="day" class="form-label">Start Day <span class="text-muted"></span></label>
                            <input name="startdate" type="date" value="${date}" class="form-control" required min="${date}">

                        </div>
                        <div class="col-12">
                            <label for="day" class="form-label">Number of rental days<span class="text-muted"></span></label>
                            <input name="rent" type="number" class="form-control" required min="1" >
                        </div>
                    </div>
                    <br>
                    <br>
                    <button class="w-100 btn btn-danger btn-lg" name="submit" value="book" type="submit" >Book now</button>
                </form>
            </div>
    </main>

    <jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>