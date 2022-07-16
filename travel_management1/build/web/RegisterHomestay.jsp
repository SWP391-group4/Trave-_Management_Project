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
                    <div class="col-12 col-lg-12 col-xl-8 " id="first">
                        <h3 class="h3 mb-4 page-title font-weight-bold">Register Homestay</h3>
                        <div class="my-4">
                            <hr class="my-4" />
                            <h2 class="h3 mb-4 page-title ">Homestay Information</h2>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputCompany5">Type of Homestay</label>
                                    <select name="skills"  class=" fluid selection dropdown no">
                                        <option value="">All</option>
                                        <option value="1">PHP</option>
                                    </select>

                                </div>
                                <div class="form-group col-md-6">
                                </div>  
                                <div class="form-group col-md-6">
                                    <label for="inputState5">HomeStay Name </label>                      
                                    <input type="text" class="form-control" id="homestayName" placeholder="HomeStay Name" name="lastName" value="${lastName}"/>
                            </div>   
                        </div>
                    </div>
                    <div class="my-4">
                        <hr class="my-4" />
                        <h2 class="h3 mb-4 page-title ">Homestay Address</h2>
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
                    </div>
                    <hr class="my-4" />
                    <h2 class="h3 mb-4 page-title ">HomeStay Components</h2>
                    <div class="form-row">
                        <div class="form-group col-md-6 "> 
                            <label for="inputState5">Bedroom </label>                      
                            <input type="number" class="form-control" id="homestayName"  name="lastName" value="${lastName}"/>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputState5"> Bed </label>                      
                            <input type="number" class="form-control" id="homestayName"name="lastName" value="${lastName}"/>
                        </div> 
                        <div class="form-group col-md-6">
                            <label for="inputState5">LivingRoom </label>                      
                            <input type="number" class="form-control" id="homestayName" name="lastName" value="${lastName}"/>
                        </div> 
                        <div class="form-group col-md-6">
                            <label for="inputState5">Kitchen </label>                      
                            <input type="number" class="form-control" id="homestayName"  name="lastName" value="${lastName}"/>
                        </div> 
                        <div class="form-group col-md-6">
                            <label for="inputState5">BathRoom</label>                      
                            <input type="number" class="form-control" id="homestayName" name="lastName" value="${lastName}"/>
                        </div> 

                    </div>
                    <hr class="my-4" />

                    <h2 class="h3 mb-4 page-title ">HomeStay Extentions</h2>
                    <div class="form-row">
                        <div class="form-group col-md-4 "> 
                            <input type="checkbox" name="extensions" value="first"> Wifi<BR>
                            <input type="checkbox" name="extensions" value="first"> Air Conditioning<BR>
                            <input type="checkbox" name="extensions" value="first"> Washing Machine<BR>
                            <input type="checkbox" name="extensions" value="first"> Fan<BR>
                        </div>
                        <div class="form-group col-md-4">
                            <input type="checkbox" name="extensions" value="first"> Internet<BR>
                            <input type="checkbox" name="extensions" value="first"> Fridge<BR>
                            <input type="checkbox" name="extensions" value="first"> Feater<BR>
                            <input type="checkbox" name="extensions" value="first"> Desk<BR>
                        </div> 
                        <div class="form-group col-md-4">
                            <input type="checkbox" name="extensions" value="first"> TV<BR>
                            <input type="checkbox" name="extensions" value="first"> Sofa<BR>
                            <input type="checkbox" name="extensions" value="first"> Windows<BR>
                            <input type="checkbox" name="extensions" value="first"> Wardrobe<BR>    
                        </div>
                        <input type="text" class="form-control" id="inputCompany5" name="district" value="" placeholder="Anything else"/>    
                    </div>
                    <hr class="my-4" />

                    <h2 class="h3 mb-4 page-title ">CheckIn/CheckOut</h2>
                    <div class="form-row">
                        <div class="form-group col-md-6 "> 
                            <label for="inputState5">ChecIn time</label>                      
                            <input type="time" class="form-control" id="inputCompany5" placeholder=""  name="city"value="${city}"/>
                        </div>
                        <div class="form-group col-md-6 "> 
                            <label for="inputState5">ChecOut time</label>                      
                            <input type="time" class="form-control" id="inputCompany5" placeholder=""  name="city"value="${city}"/>
                        </div>
                    </div>
                </div>
                        
                        
                <!----------------------------------------------------------------------------------------------------------------------------------->
                
                
                <div class="col-12 col-lg-12 col-xl-8 " id="second" style="display: none;">
                    <h2 class="h3 mb-4 page-title ">HomeStay Images</h2>
                    <div class="form-row">
                        <label for="inputState5">BackGround Image</label>
                        <div class="form-group "> 

                            <img src="images/after.png" alt="Admin" class="w-50">
                            <input type="file" name="imageAfter" class="custom" value="${cusImage.img_ID_back}" accept="image/png, image/jpg, image/jpeg">
                        </div>
                    </div>
                    <div class="form-row">
                        <label for="inputState5">Homestay Images</label>
                        <div class="form-group "> 
                            <div class="form-group col-md-4">
                                <img src="images/after.png" alt="Admin" class="w-100">
                                <input type="file" name="imageAfter" class="custom" value="${cusImage.img_ID_back}" accept="image/png, image/jpg, image/jpeg">
                            </div>
                            <div class="form-group col-md-4 ">
                                <img src="images/after.png" alt="Admin" class="w-100">
                                <input type="file" name="imageAfter" class="custom" value="${cusImage.img_ID_back}" accept="image/png, image/jpg, image/jpeg">
                            </div>
                            <div class="form-group col-md-4 ">
                                <img src="images/after.png" alt="Admin" class="w-100">
                                <input type="file" name="imageAfter" class="custom" value="${cusImage.img_ID_back}" accept="image/png, image/jpg, image/jpeg">
                            </div>
                        </div>
                    </div>
                    <hr class="my-4" />  
                    <label for="inputState5">HomeStay Description</label>     
                    <div class="form-row">
                        <textarea name="" class="w-100">
                        </textarea>
                    </div>
                    <hr class="my-4" />  
                    <label for="inputState5">HomeStay Rules</label>     
                    <div class="form-row">
                        <textarea name="" class="w-100">
                        </textarea>
                    </div>
                    <hr class="my-4" />

                    <div class="form-row">
                        <div class="form-group col-md-6 "> 
                            <label for="inputState5">Price </label>                      
                            <input type="number" class="form-control" id="homestayName"  name="lastName" value="${lastName}"/>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputState5"> Incurred Cost </label>                      
                            <input type="number" class="form-control" id="homestayName"name="lastName" value="${lastName}"/>
                        </div> 
                    </div>
                </div>
            </div>

            <hr class="my-4" />      


            <div class="text-warning">${alert}</div>
            <div class="col-md-12">
                <button type="submit" name="preview" value="preview" class="btn btn-primary" id="back" onclick="backFunction()" style="display: none">Back</button>
                <button type="submit" name="register" class="btn btn-primary" onclick="continueFunction()" id="continue">Continues</button>
                <button type="submit" name="register" class="btn btn-primary" id="register" style="display: none">Register</button>
            </div>
        </div>
    </div>
</div>
</div>
</div>
<script>
    function continueFunction() {
        document.getElementById("first").style.display = "none";
        document.getElementById("continue").style.display = "none";

        document.getElementById("second").style.display = "block";
        document.getElementById("register").style.display = "inline-block";
        document.getElementById("back").style.display = "inline-block";
    }
    function backFunction() {
        document.getElementById("first").style.display = "block";
        document.getElementById("continue").style.display = "block";

        document.getElementById("second").style.display = "none";
        document.getElementById("register").style.display = "none";
        document.getElementById("back").style.display = "none";
    }
</script>
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