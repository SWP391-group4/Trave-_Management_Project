<%-- 
    Document   : Login
    Created on : May 29, 2022, 10:47:23 PM
    Author     : phams
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Bootstrap Simple Login Form</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            .login-form {
                width: 340px;
                margin: 50px auto;
                font-size: 15px;
            }
            .login-form form {
                margin-bottom: 15px;
                background: #f7f7f7;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }
            .login-form h2 {
                margin: 0 0 15px;
            }
            .form-control, .btn {
                min-height: 38px;
                border-radius: 2px;
            }
            .btn {        
                font-size: 15px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <div class="login-form">
            <form action="Login" method="post">
                <!--        <div class="alert alert-danger" role="alert">-->
               
                
                <h2 class="text-center">Log in</h2>  
                <div>${alert}</div>
                <div class="form-group">
                    <input  type="text" name="account" class="form-control" placeholder="username" required="required" value="">
                </div>
                <div class="form-group">
                    <input  type="password" name="password" class="form-control" placeholder="password" required="required" value="">
                </div>
                <div class="form-group">
                    
                    <input type="submit" class="btn btn-warning btn-block" name="Login">
                </div>
                <div class="clearfix">
                    <label class="float-left form-check-label">Don't have account?<a href="Registration.jsp">   register</a></label>
                </div>        
            </form>
        </div>
    </body>
</html>