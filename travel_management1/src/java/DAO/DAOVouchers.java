/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

/**
 *
 * @author phams
 */
public class DAOVouchers {
    
}
/*
<%-- 
    Document   : Demo
    Created on : Jun 22, 2022, 10:37:40 PM
    Author     : phams
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/Demo.css">
    </head>
    <body>
        <div class="container-xl px-4 mt-4">
            <!-- Account page navigation-->
            <nav class="nav nav-borders">
                <a class="nav-link  ms-0" href="https://www.bootdey.com/snippets/view/bs5-edit-profile-account-details" target="__blank">Profile</a>
                <a class="nav-link" href="https://www.bootdey.com/snippets/view/bs5-profile-billing-page" target="__blank">Billing</a>
                <a class="nav-link active" href="https://www.bootdey.com/snippets/view/bs5-profile-security-page" target="__blank">Security</a>
                <a class="nav-link" href="https://www.bootdey.com/snippets/view/bs5-edit-notifications-page"  target="__blank">Notifications</a>
            </nav>
            <hr class="mt-0 mb-4">
            <div class="row">
                <div class="col-lg-8">
                    <!-- Change password card-->
                    <div class="card mb-4">
                        <div class="card-header">Change Password</div>
                        <div class="card-body">
                            <form>
                                <!-- Form Group (current password)-->
                                <div class="mb-3">
                                    <label class="small mb-1" for="currentPassword">Current Password</label>
                                    <input class="form-control" id="currentPassword" type="password" placeholder="Enter current password">
                                </div>
                                <!-- Form Group (new password)-->
                                <div class="mb-3">
                                    <label class="small mb-1" for="newPassword">New Password</label>
                                    <input class="form-control" id="newPassword" type="password" placeholder="Enter new password">
                                </div>
                                <!-- Form Group (confirm password)-->
                                <div class="mb-3">
                                    <label class="small mb-1" for="confirmPassword">Confirm Password</label>
                                    <input class="form-control" id="confirmPassword" type="password" placeholder="Confirm new password">
                                </div>
                                <button class="btn btn-primary" type="button">Save</button>
                            </form>
                        </div>
                    </div>
                    <!-- Security preferences card-->
                    <div class="card mb-4">
                        <div class="card-header">Security Preferences</div>
                        <div class="card-body">
                            <!-- Account privacy optinos-->
                            <h5 class="mb-1">Nam ml</h5>
                            <p class="small text-muted">By setting your account to private, your profile information and posts will not be visible to users outside of your user groups.</p>
                            <form>
                                <div class="col-sm-6 mb-3">
                                    <div class="card h-100">
                                        <div class="card-body">
                                            <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">assignment</i>Project Status</h6>
                                            <small>Web Design</small>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <small>Website Markup</small>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 72%" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <small>One Page</small>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 89%" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <small>Mobile Template</small>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <small>Backend API</small>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                            </form>
                            <hr class="my-4">
                            <!-- Data sharing options-->
                            <h5 class="mb-1">Data Sharing</h5>
                            <p class="small text-muted">Sharing usage data can help us to improve our products and better serve our users as they navigation through our application. When you agree to share usage data with us, crash reports and usage analytics will be automatically sent to our development team for investigation.</p>
                            <form>
                                <div class="form-check">
                                    <input class="form-check-input" id="radioUsage1" type="radio" name="radioUsage" checked="">
                                    <label class="form-check-label" for="radioUsage1">Yes, share data and crash reports with app developers</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" id="radioUsage2" type="radio" name="radioUsage">
                                    <label class="form-check-label" for="radioUsage2">No, limit my data sharing with app developers</label>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <!-- Two factor authentication card-->
                    <div class="card mb-4">
                        <div class="card-header">Two-Factor Authentication</div>
                        <div class="card-body">
                            <p>Add another level of security to your account by enabling two-factor authentication. We will send you a text message to verify your login attempts on unrecognized devices and browsers.</p>
                            <form>
                                <div class="form-check">
                                    <input class="form-check-input" id="twoFactorOn" type="radio" name="twoFactor" checked="">
                                    <label class="form-check-label" for="twoFactorOn">On</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" id="twoFactorOff" type="radio" name="twoFactor">
                                    <label class="form-check-label" for="twoFactorOff">Off</label>
                                </div>
                                <div class="mt-3">
                                    <label class="small mb-1" for="twoFactorSMS">SMS Number</label>
                                    <input class="form-control" id="twoFactorSMS" type="tel" placeholder="Enter a phone number" value="555-123-4567">
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- Delete account card-->
                    <div class="card mb-4">
                        <div class="card-header">Delete Account</div>
                        <div class="card-body">
                            <p>Deleting your account is a permanent action and cannot be undone. If you are sure you want to delete your account, select the button below.</p>
                            <button class="btn btn-danger-soft text-danger" type="button">I understand, delete my account</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <sc

    </body>q?eqwd
</html>

*/