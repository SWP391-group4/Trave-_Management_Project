<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
        <!--  All snippets are MIT license http://bootdey.com/license -->
        <title>update my profile - Bootdey.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />

        <div class="container">
            <div class="row">
                <div class="row">
                    <a href="AdminPendingRegister">< Back</a>
                </div>
                <div class="col-12">
                    <!-- Page title -->
                    <div class="my-5">
                        <h3>Supplier Profile</h3>
                        <hr>
                    </div>
                    <!-- Form START -->
                    <form class="file-upload">
                        <div class="row mb-5 gx-5">
                            <!-- Contact detail -->
                            <div class="col-xxl-8 mb-5 mb-xxl-0">
                                <div class="bg-secondary-soft px-4 py-5 rounded">
                                    <div class="row g-3">
                                        <h4 class="mb-4 mt-0">Contact detail</h4>
                                        <!-- First Name -->
                                        <div class="col-md-6">
                                            <label readonly class="form-label">Supplier Account</label>
                                            <input readonly type="text" class="form-control" placeholder="" aria-label="First name" value="${supplier.accountS}">
                                        </div>
                                        <div class="col-md-6">
                                        </div>
                                        <div class="col-md-6">
                                            <label readonly class="form-label">First Name *</label>
                                            <input readonly type="text" class="form-control" placeholder="" aria-label="First name" value="${supplier.firstName}">
                                        </div>
                                        <!-- Last name -->
                                        <div class="col-md-6">
                                            <label readonly class="form-label">Last Name *</label>
                                            <input readonly type="text" class="form-control" placeholder="" aria-label="Last name" value="${supplier.lastName}">
                                        </div>
                                        <!-- Phone number -->
                                        <div class="col-md-6">
                                            <label readonly class="form-label">Phone number *</label>
                                            <input readonly type="text" class="form-control" placeholder="" aria-label="Phone number" value="${supplier.phone}">
                                        </div>
                                        <!-- Mobile number -->
                                        <div class="col-md-6">
                                            <label readonly class="form-label">Fax</label>
                                            <input readonly type="text" class="form-control" placeholder="" aria-label="Phone number" value="${supplier.fax}">
                                        </div>
                                        <!-- Email -->
                                        <div class="col-md-6">
                                            <label for="inputEmail4" class="form-label">Email *</label>
                                            <input readonly type="email" class="form-control" id="inputEmail4" value="${supplier.email}">
                                        </div>


                                    </div> <!-- Row END -->
                                </div>
                            </div>
                            <!-- Upload profile -->
                            <div class="col-xxl-4">
                                <div class="bg-secondary-soft px-4 py-5 rounded">
                                    <div class="row g-3">
                                        <h4 class="mb-4 mt-0 text-center">Avatar</h4>
                                        <div class="text-center">
                                            <!-- Image upload -->
                                            <div class="square position-relative display-2 mb-3">
                                                <c:if test="${supImage.img_Avatar == null}">
                                                    <img src="images/default_person.jpg" alt="alt" class="w-100"/>
                                                </c:if>
                                                <c:if test="${supImage.img_Avatar != null}">
                                                <img src="images/${supImage.img_Avatar}" alt="alt"class="w-100"/>
                                                </c:if>
                                            </div>
                                            <!-- Button -->
                                            <input readonly type="file" id="customFile" name="file" hidden="">
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div> <!-- Row END -->

                        <div class="row mb-5 gx-5">
                            <!-- Contact detail -->
                            <div class="col-xxl-8 mb-5 mb-xxl-0">
                                <div class="bg-secondary-soft px-4 py-5 rounded">
                                    <div class="row g-3">
                                        <h4 class="mb-4 mt-0">Address</h4>
                                        <!-- First Name -->

                                        <div class="col-md-6">
                                            <label readonly class="form-label">City *</label>
                                            <input readonly type="text" class="form-control" placeholder="" aria-label="First name" value="${supAddress.city}">
                                        </div>
                                        <!-- Last name -->
                                        <div class="col-md-6">
                                            <label readonly class="form-label">District *</label>
                                            <input readonly type="text" class="form-control" placeholder="" aria-label="Last name" value="${supAddress.district}">
                                        </div>
                                        <!-- Phone number -->
                                        <div class="col-md-6">
                                            <label readonly class="form-label">Ward *</label>
                                            <input readonly type="text" class="form-control" placeholder="" aria-label="Phone number" value="${supAddress.ward}">
                                        </div>
                                        <!-- Mobile number -->
                                        <div class="col-md-6">
                                            <label readonly class="form-label">Specific</label>
                                            <input readonly type="text" class="form-control" placeholder="" aria-label="Phone number" value="${supAddress.specific}">
                                        </div>
                                        <!-- Email -->
                                    </div> <!-- Row END -->
                                </div>
                            </div>
                            <!-- Upload profile -->
                            <div class="col-xxl-4">
                                <div class="bg-secondary-soft px-4 py-5 rounded">
                                    <h4 class="mb-4 mt-0 text-center">Citizen Identify</h4>
                                    <div class="row g-3">
                                        <img src="images-ID/${supImage.img_ID_front}" alt="alt" class="w-100"/>
                                        <img src="images-ID/${supImage.img_ID_back}" alt="alt" class="w-100"/>
                                    </div>
                                </div>
                            </div>
                        </div> 


                </div> <!-- Row END -->
                
                <!-- button -->
                <div class="gap-3 d-md-flex justify-content-md-end text-center">
                    <button type="button" class="btn btn-success btn-lg">Activate Account</button>
                </div>
                </form> <!-- Form END -->
            </div>
        </div>


        <style type="text/css">
            body{
                margin-top:20px;
                color: #9b9ca1;
            }
            .bg-secondary-soft {
                background-color: rgba(208, 212, 217, 0.1) !important;
            }
            .rounded {
                border-radius: 5px !important;
            }
            .py-5 {
                padding-top: 3rem !important;
                padding-bottom: 3rem !important;
            }
            .px-4 {
                padding-right: 1.5rem !important;
                padding-left: 1.5rem !important;
            }
            .file-upload .square {
                height: 250px;
                width: 250px;
                margin: auto;
                vertical-align: middle;
                border: 1px solid #e5dfe4;
                background-color: #fff;
                border-radius: 5px;
            }
            .text-secondary {
                --bs-text-opacity: 1;
                color: rgba(208, 212, 217, 0.5) !important;
            }
            .btn-success-soft {
                color: #28a745;
                background-color: rgba(40, 167, 69, 0.1);
            }
            .btn-danger-soft {
                color: #dc3545;
                background-color: rgba(220, 53, 69, 0.1);
            }
            .form-control {
                display: block;
                width: 100%;
                padding: 0.5rem 1rem;
                font-size: 0.9375rem;
                font-weight: 400;
                line-height: 1.6;
                color: #29292e;
                background-color: #fff;
                background-clip: padding-box;
                border: 1px solid #e5dfe4;
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
                border-radius: 5px;
                -webkit-transition: border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
                transition: border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
                transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
                transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
            }
        </style>

        <script type="text/javascript">

        </script>
    </body>
</html>