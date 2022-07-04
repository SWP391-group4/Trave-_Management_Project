<%-- 
    Document   : SuPresestPassword
    Created on : Jul 4, 2022, 10:44:30 PM
    Author     : thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
      <jsp:include page="Header.jsp"></jsp:include>
    <body>
        <div class="col-md-8">
                                <div class="card">
                                    <div class="card-header">Reset Password</div>
                                    <div class="card-body">
                                        <form action="resestpasswordSUP" method="post">
                                            <div class="form-group row">
                                                <label for="password" class="col-md-4 col-form-label text-md-right">Old Password</label>
                                                <div class="col-md-6">
                                                    <input type="password" id="password" class="form-control" name="oldPassword" required>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="password" class="col-md-4 col-form-label text-md-right">New Password</label>
                                                <div class="col-md-6">
                                                    <input type="password" id="password" class="form-control" name="newPassword" required>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="password" class="col-md-4 col-form-label text-md-right">Confirm new Password</label>
                                                <div class="col-md-6">
                                                    <input type="password" id="password" class="form-control" name="confirmPassword" required>
                                                </div>
                                            </div>


                                            <div class="col-md-6 offset-md-4">
                                                <button type="submit" class="btn btn-primary">
                                                    Update
                                                </button>
                                                <p class="alert">${alert}</p>
                                            </div>
                                    </div>
                                    </form>
                                </div>
                            </div>
                                              <style type="text/css">
            body{
                margin-top:20px;
            }
        </style>

        <script type="text/javascript">






        </script>
    </body>
</html>
