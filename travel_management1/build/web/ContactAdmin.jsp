<%-- 
    Document   : ContactAdmin
    Created on : Jul 4, 2022, 12:10:49 AM
    Author     : phams
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/ContactAdmin.css">
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
        <link rel="icon" href="images/logo.png" type="">
        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">
        <link rel="stylesheet" href="css/search1.css">

        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <!------ Include the above in your HEAD tag ---------->
        <jsp:include page="Header.jsp"></jsp:include>
        <hr>
        <div class="container-fluid px-5 my-5">
            <div class="row justify-content-center">
                <div class="col-xl-5">
                    <div class="card border-0 rounded-3 shadow-lg overflow-hidden">
                        <div class="card-body p-0">
                            <div class="row g-0">

                                <div class="col-sm-12 p-4">
                                    <div class="text-center">
                                        <div class="h3 fw-light">Contact Form</div>
                                        
                                    </div>

                                    <form id="contactForm" data-sb-form-api-token="API_TOKEN" action="ContactAdmin" method="post">
                                        
                                        <!-- Email Input -->
                                        <div class="form-floating mb-3">
                                            
                                            <input class="form-control" type="text" placeholder="Caption" name="caption"/>

                                        </div>
                                        <hr>
                                        <!-- Message Input -->
                                        <div class="form-floating mb-3">
                                            <label for="message">Message</label>
                                            <textarea class="form-control" id="message" type="text" placeholder="Message" style="height: 10rem;" data-sb-validations="required" name="description"></textarea>
                                            <div class="invalid-feedback" data-sb-feedback="message:required">Message is required.</div>
                                        </div>
                                        <!-- Submit button -->
                                        <div class="d-grid">
                                            <p class="alert">${alert}</p>
                                        <input type="submit" class="btn btn-primary btn-lg" name="submit" value="Send">
                                        </div>
                                    </form>
                                    <!-- End of contact form -->

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
              <jsp:include page="Footer.jsp"></jsp:include>
        <!-- CDN Link to SB Forms Scripts -->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
