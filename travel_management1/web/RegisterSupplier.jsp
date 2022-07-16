<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Abril+Fatface" rel="stylesheet">

        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">

        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-12 col-xl-8 ">
                        <h3 class="h3 mb-4 page-title font-weight-bold">Register Supplier</h3>
                        <div class="my-4">
                            <hr class="my-4" />
                            <h2 class="h3 mb-4 page-title ">User Information</h2>
                            <form action="SupplierRegister" method="post" enctype='multipart/form-data'>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputCompany5">First name: </label>
                                        <input type="text" class="form-control" id="inputCompany5" placeholder="First name" name="firstName" value="${firstName}"/>
                                    <label for="inputState6">Contact Phone</label>    
                                    <input type="text" class="form-control" id="inputCompany5" placeholder="(+84)" name="phone" />
                                    <label for="inputState6">Contact Email</label>    
                                    <input type="text" class="form-control" id="inputCompany5" placeholder="userName123@email.com" name="email" value="${email}"/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputState5">Last name</label>                      
                                    <input type="text" class="form-control" id="Last name" placeholder="Last name" name="lastName" value="${lastName}"/>

                                    <label for="inputState6">Fax</label>    
                                    <input type="text" class="form-control" id="inputCompany5" name="fax" value="${fax}"/>
                                </div>                  

                            </div>
                            <hr class="my-4" />
                            <h2 class="h3 mb-4 page-title ">User Address</h2>
                            <div class="form-row">
                                <div class="form-group col-md-4 "> 
                                    <label for="inputState5">City</label>                      
                                    <input type="text" class="form-control" id="inputCompany5" placeholder=""  name="city"value="${city}"/>
                                    <label for="inputState5">Specific</label>
                                    <input type="text" class="form-control" id="inputCompany5" name="specific"value="${specific}"/>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="inputState5">District</label>                      
                                    <input type="text" class="form-control" id="inputCompany5" name="district" value="${district}"/>
                                </div> 
                                <div class="form-group col-md-4">
                                    <label for="inputState5">Ward</label>                      
                                    <input type="text" class="form-control" id="inputCompany5" placeholder="" name="ward" value="${ward}"/>
                                </div> 
                            </div>
                            <hr class="my-4" />
                            <h2 class="h3 mb-4 page-title ">Citizen Identification</h2>
                            <div class="form-row">

                                <div class="form-group col-md-6">
                                    <c:choose>
                                        <c:when test="${cusImage.img_ID_front == null}">
                                            <img src="images/before.png" alt="Admin" width="150">
                                        </c:when>
                                        <c:otherwise>
                                            <img src="images/${cusImage.img_ID_front}" alt="alt" style="width: 100%; height: 75% "/>
                                        </c:otherwise>
                                    </c:choose>
                                    <input type="file" name="imageBefore" class="custom" value="${cusImage.img_ID_front}" accept="image/png, image/jpg, image/jpeg">
                                </div> 
                                <div class="form-group col-md-6">
                                    <c:choose>
                                        <c:when test="${cusImage.img_ID_back == null}">
                                            <img src="images/after.png" alt="Admin" width="150">
                                        </c:when>
                                        <c:otherwise>
                                            <img src="images/${cusImage.img_ID_back}" alt="alt"style="width: 100%; height: 75% "/>
                                        </c:otherwise>
                                    </c:choose>
                                            <input type="file" name="imageAfter" class="custom" value="${cusImage.img_ID_back}" accept="image/png, image/jpg, image/jpeg">
                                </div>
                                
                            </div>
                            <div class="text-warning">${alert}</div>
                            <div>
                                <button type="submit" name="preview" value="preview" class="btn btn-primary">Preview</button>
                                <c:if test="${continues==null}">
                                    <button type="submit" name="register" class="btn btn-primary">Register</button>
                                </c:if>
                        </form>
                        <c:if test="${continues!=null}">
                            <button type="submit" name="register" class="btn btn-primary">Continues</button>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style type="text/css">
    .custom {
        color: transparent;
        text-align: center;
    }
    .custom::-webkit-file-upload-button {
        visibility: hidden;
    }
    .custom::before {
        content: 'Upload Image';
        color: #ffffff;
        display: inline-block;
        background: #f9be37;
        border: 1px solid #f9be37;
        border-radius: 7px;
        padding: 5px 8px;
        outline: none;
        white-space: nowrap;
        -webkit-user-select: none;
        cursor: pointer;
        text-shadow: 1px 1px #f9be37;
        font-size: 10pt;
        margin-left: 110px;
        margin-right: auto;
    }
    .custom:hover::before {
        border-color: #f9be37;
    }
    .custom:active {
        outline: 0;
    }
    .custom:active::before {
        background: -webkit-linear-gradient(top, #black, #black);
    }
    body{
        color: #8e9194;
        background-color: #f4f6f9;
    }
    .avatar-xl img {
        width: 110px;
    }
    .rounded-circle {
        border-radius: 50% !important;
    }
    img {
        vertical-align: middle;
        border-style: none;
    }
    .text-muted {
        color: #aeb0b4 !important;
    }
    .text-muted {
        font-weight: 300;
    }
    .form-control {
        display: block;
        width: 100%;
        height: calc(1.5em + 0.75rem + 2px);
        padding: 0.375rem 0.75rem;
        font-size: 1.5rem;
        font-weight: 400;
        line-height: 1.5;
        color: #4d5154;
        background-color: #ffffff;
        background-clip: padding-box;
        border: 1px solid #eef0f3;
        border-radius: 0.25rem;
        transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    }
</style>

<script type="text/javascript">
    var myModal = document.getElementById('myModal');
    var myInput = document.getElementById('myInput');

    myModal.addEventListener('shown.bs.modal', function () {
        myInput.focus();
    });
</script>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/chart-area-demo.js"></script>
<script src="js/demo/chart-pie-demo.js"></script>
</body>
</html>