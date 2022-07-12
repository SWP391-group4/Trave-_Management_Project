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
    <body>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
           <jsp:include page="Header.jsp"></jsp:include>
        <div class="container">
<div class="row justify-content-center">
    <div class="col-12 col-lg-10 col-xl-8 mx-auto">
        <h2 class="h3 mb-4 page-title">Update:${h.homeStayname}</h2>
        <div class="my-4">
          
            <form>
               
                <hr class="my-4" />
                <div class="form" action="updatehomestay" method="post">
                    <div class="form-group">
                        <label for="firstname">Description</label>
                        <input type="text" id="firstname" class="form-control" placeholder="Brown" name="description" value="${h.description}"/>
                        
                    </div>

                </div>
                
               
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCompany5">Rule</label>
                        <input type="text" class="form-control" id="inputCompany5" placeholder="Nec Urna Suscipit Ltd" name="listrules" value="${r.listRules}" />
                        <label for="inputState6">Categories</label>    
                        <select id="inputState6" class="form-control">
                              <c:forEach items="${listC}" var="c">
                            <option selected="${c.cateId}">${c.cateName}</option>
                               </c:forEach>
                        </select> 
                        
                    </div>
                   <div class="form-group col-md-6">
                         <label for="inputState5">Price</label>                      
                                <input type="number" class="form-control" id="inputCompany5" placeholder="VNÐ" name="price" value="${h.price}" />
                        <label for="inputState5">Status</label>
                        <select id="inputState5" class="form-control">
                            <option selected="${h.status==1}">Available</option>
                             <option selected="${h.status==0}">Booked</option>
                          
                        </select>
                    </div>                  
                    
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4 "> 
                            <label for="inputState5">Kitchen</label>                      
                                <input type="number" class="form-control" id="inputCompany5" placeholder="Number of Kitchen"  name="kitchenQty" value="${h.kitchenQty}"/>
                            <label for="inputState5">LivingRoomQty</label>                      
                                <input type="number" class="form-control" id="inputCompany5" placeholder="Number of Living Room" name="livingRoomQty" value="${h.livingRoomQty}" />
                    </div>
                    <div class="form-group col-md-4">
                            <label for="inputState5">BedRoomQ</label>                      
                                <input type="number" class="form-control" id="inputCompany5" placeholder="Number of Bed Room"  name="bedroomQty" value="${h.bedRoomQty}"/>
                            <label for="inputState5">BedQty</label>                      
                                <input type="number" class="form-control" id="inputCompany5" placeholder="Number of Bed" name="bedQty" value="${h.bedQty}" />
                    </div> 
                    <div class="form-group col-md-4">
                            <label for="inputState5">BathRoomQ</label>                      
                                <input type="number" class="form-control" id="inputCompany5" placeholder="Number of Bath Room" name="bathRoomQty" value="${h.bathRoomQty}" />
                    </div> 
                    <div class="form-group col-md-6">
                            <label for="inputState5">CheckIn</label>                      
                            <input type="time" class="form-control" id="inputCompany5" placeholder="Check-in Date and time" name="checkin" value="${hd.checkIn}" />
                            <label for="inputState5">Extensions</label>                      
                                <input type="text" class="form-control" id="inputCompany5" placeholder="" name="listextensions" value="${e.listExtentions}" />
                    </div> 
                    <div class="form-group col-md-6">
                            <label for="inputState5">CheckOut</label>                      
                            <input type="time" class="form-control" id="inputCompany5" placeholder="Check-out Date and time" name="checkout" value="${hd.checkOut}" />
                            <label for="inputState5">IncurredCost</label>                      
                                <input type="number" class="form-control" id="inputCompany5" placeholder="${hd.incurredCost}" name="incurredCost"  />
                    </div>  
                </div>
                <div class="form-row">
                    <label for="inputState5">Video</label>                      
                                <input type="url" class="form-control" id="inputCompany5" placeholder="Input URL video"  name="video" value="${hd.video}"/>
                </div>
                
<!--                <hr class="my-4" />
                <div class="row mb-4">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputPassword4">Old Password</label>
                            <input type="password" class="form-control" id="inputPassword5" />
                        </div>
                        <div class="form-group">
                            <label for="inputPassword5">New Password</label>
                            <input type="password" class="form-control" id="inputPassword5" />
                        </div>
                        <div class="form-group">
                            <label for="inputPassword6">Confirm Password</label>
                            <input type="password" class="form-control" id="inputPassword6" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <p class="mb-2">Password requirements</p>
                        <p class="small text-muted mb-2">To create a new password, you have to meet all of the following requirements:</p>
                        <ul class="small text-muted pl-4 mb-0">
                            <li>Minimum 8 character</li>
                            <li>At least one special character</li>
                            <li>At least one number</li>
                            <li>Can?t be the same as a previous password</li>
                        </ul>
                    </div>
                </div>-->
                <button type="submit" class="btn btn-primary">Save Change</button>
            </form>
        </div>
    </div>
</div>

</div>

<style type="text/css">
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
    font-size: 0.875rem;
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

</script>
</body>
</html>