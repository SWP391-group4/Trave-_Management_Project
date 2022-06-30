<!DOCTYPE html>
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
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.html">CTUTRAVEL</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="flight.html" class="nav-link">Flight</a></li>
                        <li class="nav-item"><a href="restaurant.html" class="nav-link">Restaurant</a></li>
                        <li class="nav-item"><a href="hotel.html" class="nav-link">Hotels</a></li>
                        <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
                        <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
                            <c:if test="${sessionScope.acc!=null}">
                            <li class="nav-item" <i class="fa fa-sign-in" aria-hidden="true"></i><a href="login" class="nav-link">Logout</a></li>
                            <li class="nav-item"><a href="contact.html" class="nav-link">Hello${sessionScope.acc.account}</a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc==null}">
                            <li class="nav-item" <i class="fa fa-sign-in" aria-hidden="true"></i><a href="login" class="nav-link">Login</a></li>
                                </c:if> 
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container primary-content">
	<!-- PRIMARY CONTENT HEADING -->
	<div class="primary-content-heading clearfix">
		<h2>${display.homeStayname}</h2>
        <hr style="border:1px solid #fff">
		<div class="sticky-content pull-right">
			<div class="btn-group btn-dropdown">
				<button type="button" class="btn btn-default btn-sm btn-favorites" data-toggle="dropdown"><i class="fa fa-android-star"></i> Favorites</button>
				<ul class="dropdown-menu dropdown-menu-right list-inline">
					<li><a href="#"><i class="fa fa-pie-graph"></i> <span>Statistics</span></a></li>
					<li><a href="#"><i class="fa fa-email"></i> <span>Inbox</span></a></li>
					<li><a href="#"><i class="fa fa-chatboxes"></i> <span>Chat</span></a></li>
					<li><a href="#"><i class="fa fa-help-circled"></i> <span>Help</span></a></li>
					<li><a href="#"><i class="fa fa-gear-a"></i> <span>Settings</span></a></li>
					<li><a href="#"><i class="fa fa-help-buoy"></i> <span>Support</span></a></li>
				</ul>
			</div>
			<button type="button" class="btn btn-default btn-sm btn-quick-task" data-toggle="modal" data-target="#quick-task-modal"><i class="fa fa-edit"></i> Quick Task</button>
		    <br>
            <br>
		</div>
		<!-- quick task modal -->
		<div class="modal fade" id="quick-task-modal" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
						<h4 class="modal-title" id="myModalLabel">Quick Task</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label for="task-title" class="control-label sr-only">Title</label>
								<div class="col-sm-12">
									<input type="text" class="form-control" id="task-title" placeholder="Title">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label sr-only">Description</label>
								<div class="col-sm-12">
									<textarea class="form-control" name="task-description" rows="5" cols="30" placeholder="Description"></textarea>
								</div>
							</div>
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save Task</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- end quick task modal -->
	</div>
	<!-- END PRIMARY CONTENT HEADING -->
	<div class="row">
		<div class="col-md-8">
			<div class="project-section general-info">
				<h3>General Info</h3>
                                <button type="button" class="btn btn-sm btn-default pull-right"><i class="fa fa-compose"></i><a href="" >Update Information</a></button>
				<p>${display.description}</p>
				<div class="row">
                                     
					<div class="col-sm-9">
						<dl class="dl-horizontal">
                                                      <h2>Type:</h2>
                                    <p>${display.cateName}</p>
                                                    
                                                    <h2>All Service</h2>

                                                    <p>Bed Quantity: ${display.bedQty}</p>
                                                     <p>BedRoom Quantity: ${display.bedRoomQty}</p>
                                                      <p>Bathroom Quantity: ${display.bathRoomQty}</p>
                                                       <p>Livingroom Quantity: ${display.livingRoomQty}</p>
                                                        <p>Kitchen Quantity: ${display.kitchenQty}</p>
							
							
						</dl>
					</div>
                                                        <div class="col-sm-9">
						<dl class="dl-horizontal">
                                                    <h2>Address </h2>

                                                    <p>City: ${display.city}</p>
                                                     <p>District: ${display.district}</p>
                                                      <p>Specific: ${display.specific}</p>
                                                       <p>Ward: ${display.ward}</p>	
						</dl>
					</div>
					
					
				</div>
			</div>
			<div class="project-section activity">
				<h3>All Feed Back form Customer</h3>
				<ul class="list-unstyled project-activity-list">
					<li>
						<div class="media activity-item">
							<i class="fa fa-checkmark-circled pull-left text-success"></i>
							
						</div>
					</li>
					<li>
                                            <c:forEach items="${review}" var="o">
						<div class="media activity-item">
							<a href="#" class="pull-left">
								<img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="Avatar" class="media-object avatar">
							</a>
                                                    <!-- FeedBack From Customer -->
							<div class="media-body">
								<p class="activity-title"><a href="#">${o.cus_name} : </a>${o.feedBack}</p>
								<small class="text-muted">${o.date}</small>
							</div>
							<div class="btn-group pull-right activity-actions">
								<button type="button" class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
									<i class="fa fa-ios-arrow-down"></i>
									<span class="sr-only">Toggle Dropdown</span>
								</button>
								<ul class="dropdown-menu dropdown-menu-right" role="menu">
									<li><a href="#">Message Michael</a></li>
									<li><a href="#">Assign Task</a></li>
								</ul>
							</div>
						</div>
                                            </c:forEach>
					</li>
					
				</ul>
				<button type="button" class="btn btn-default center-block"><i class="fa fa-ios-refresh"></i> Load more</button>
			</div>
		</div>
		<div class="col-md-4">
			<!-- MY TODO LIST -->
                            
			<!-- END MY TODO LIST -->
			<!-- RECENT FILES -->
			<div class="widget">
				<div class="widget-header clearfix">
					<h3><i class="fa fa-document"></i> <span>Other Service</span></h3>
					<div class="btn-group widget-header-toolbar">
						<a href="#" title="Expand/Collapse" class="btn btn-link btn-toggle-expand"><i class="fa fa-ios-arrow-up"></i></a>
						<a href="#" title="Remove" class="btn btn-link btn-remove"><i class="fa fa-ios-close-empty"></i></a>
					</div>
				</div>
                               
				<div class="widget-content">
                                    <c:forEach  items="${listBySupplier}" var="o">
					<ul class="fa-ul recent-file-list bottom-30px">
						<li><i class="fa-li fa fa-home"></i><a href="displayinf?homeStayID=${o.homeStayID}">${o.homeStayname}</a></li>        
					</ul>
                                               
                                                 </c:forEach>
                                                 <c:forEach begin="0" end="0"  items="${listBySupplier}" var="o">
					  <a href="manageHomeStay?accountS=${o.accountS}" class="btn btn-sm btn-default"><i class="fa fa-list"></i> See all</a>
                                          </c:forEach>
				</div>
                              
			</div>
			<!-- END RECENT FILES -->
		</div>
	</div>
</div>

<style type="text/css">
body {
    background-image: url('http://demo.thedevelovers.com/dashboard/queenadmin-1.2/assets/img/gray_jean.png?1353438653');
    background-repeat: repeat;
    min-height: 1585px;
}

/*------------------------------------------------*/
/*    Page: Project details
/*------------------------------------------------*/
.project-section {
  margin-bottom: 30px;
}
.project-section h3 {
  display: inline-block;
  vertical-align: middle;
  *vertical-align: auto;
  *zoom: 1;
  *display: inline;
  margin-top: 0;
}
.project-section.activity h3 {
  margin-bottom: 0;
}
.project-section dl {
  margin-top: 20px;
  margin-bottom: 0;
}
.project-section dl dd {
  margin-bottom: 10px;
}
@media screen and (min-width: 768px) {
  .project-section dl.dl-horizontal dt {
    width: 95px;
    margin-bottom: 10px;
  }
  .project-section dl.dl-horizontal dd {
    margin-left: 105px;
    margin-bottom: 0;
  }
}
.project-section ul.team-list {
  margin-top: 10px;
}
.project-section ul.team-list > li {
  text-align: center;
  margin-bottom: 15px;
  padding: 0 10px;
}
.project-section ul.team-list > li img {
  width: 40px;
  margin-bottom: 8px;
}
.project-section ul.team-list > li p {
  margin-bottom: 0;
  line-height: 1;
}
.project-section ul.team-list > li span {
  font-size: 10px;
}
.project-section ul.team-list > li.team-add > i {
  -moz-border-radius: 50%;
  -webkit-border-radius: 50%;
  border-radius: 50%;
  display: block;
  margin: 0 auto;
  margin-bottom: 17px;
  width: 40px;
  height: 40px;
  font-size: 28px;
  background-color: #ccc;
  color: inherit;
}
.project-section ul.team-list > li.team-add .btn {
  position: relative;
  top: -7px;
}

ul.project-activity-list > li {
  border-top: 1px dashed #CCC;
}
ul.project-activity-list > li:first-child {
  border-top: none;
}
ul.project-activity-list > li .activity-item .avatar, ul.project-activity-list > li .activity-item > i {
  width: 24px;
}
ul.project-activity-list > li .activity-item > i {
  font-size: 24px;
}

.project-progress {
  margin-top: 20px;
}
.project-progress .pie-chart {
  width: 100px;
}
.project-progress .pie-chart .percent {
  line-height: 100px;
}
.project-progress .percent, .project-progress .chart-title {
  color: inherit;
}


/* widgets */
.widget {
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  border-radius: 3px;
  border-width: 1px;
  border-style: solid;
  margin-bottom: 20px;
  background-color: #fff;
  border-color: #d0d0d0;
}
.widget .widget-header h3, .widget.widget-no-header h3 {
  margin-top: 0;
  font-size: 14px;
  color: #6a6a6a;
}
.widget.widget-transparent {
  border: none;
  background: transparent;
}
.widget .widget-header {
  padding: 0 10px;
  border-bottom: 1px solid #fff;
  background-color: #e9e9e9;
}
.widget .widget-header h3 {
  display: inline-block;
  vertical-align: middle;
  *vertical-align: auto;
  *zoom: 1;
  *display: inline;
  margin-bottom: 0;
  line-height: 40px;
  float: left;
}
@media screen and (max-width: 480px) {
  .widget .widget-header h3 {
    display: block;
    float: none;
  }
}
.widget .widget-header h3 i {
  width: 18px;
  padding: 10px 0;
  font-size: 16px;
  color: #6A6A6A;
}
.widget .widget-header .btn-group > a,
.widget .widget-header .btn-group .dropdown-toggle .icon {
  color: #838383;
}
.widget .widget-header .btn-group > a:hover, .widget .widget-header .btn-group > a:focus,
.widget .widget-header .btn-group .dropdown-toggle .icon:hover,
.widget .widget-header .btn-group .dropdown-toggle .icon:focus {
  color: #505050;
}
.widget .widget-header .widget-header-toolbar {
  float: right;
  width: auto;
  margin-left: 15px;
}
@media screen and (max-width: 480px) {
  .widget .widget-header .widget-header-toolbar {
    display: block;
    position: initial;
  }
}
.widget .widget-header .widget-header-toolbar.btn-group {
  top: 5px;
}
@media screen and (max-width: 480px) {
  .widget .widget-header .widget-header-toolbar.btn-group > .btn {
    top: -5px;
  }
}
.widget .widget-header .widget-header-toolbar .label {
  position: relative;
  top: 11px;
  padding: 5px;
  font-size: 85%;
}
@media screen and (max-width: 480px) {
  .widget .widget-header .widget-header-toolbar .label {
    top: 0;
  }
}
.widget .widget-header .widget-header-toolbar .label i {
  font-size: 14px;
}
.widget .widget-header .widget-header-toolbar .btn-xs {
  top: 5px;
}
.widget .widget-header .widget-header-toolbar .btn-link {
  padding: 0 0 0 15px;
}
.widget .widget-header .widget-header-toolbar .btn-link i {
  font-size: 28px;
  line-height: 1;
}
.widget .widget-header .widget-header-toolbar .btn-link:first-child {
  padding-left: 0;
}
.widget .widget-header .widget-header-toolbar .progress {
  width: 150px;
  position: relative;
  top: 19px;
}
@media screen and (max-width: 480px) {
  .widget .widget-header .widget-header-toolbar .progress {
    top: 0;
  }
}
.widget .widget-header .widget-header-toolbar .progress .progress-bar {
  font-size: 10px;
  line-height: 1.5;
}
.widget .widget-header .nav-tabs {
  border-bottom: none;
}
.widget .widget-header .nav-tabs > li > a {
  height: 41px;
}
.widget .widget-header .nav-tabs > li > a, .widget .widget-header .nav-tabs > li > a:hover, .widget .widget-header .nav-tabs > li > a:focus {
  border-top: none;
  border-bottom: none;
}
.widget .widget-header .nav-justified > li > a {
  -moz-border-radius: 0;
  -webkit-border-radius: 0;
  border-radius: 0;
}
.widget .widget-header .nav-justified > li:first-child > a {
  -moz-border-radius-topleft: 2px;
  -webkit-border-top-left-radius: 2px;
  border-top-left-radius: 2px;
}
.widget .widget-header .nav-justified > li:last-child > a {
  -moz-border-radius-topright: 2px;
  -webkit-border-top-right-radius: 2px;
  border-top-right-radius: 2px;
  margin-right: -1px;
}
.widget .widget-content {
  padding: 20px;
}
.widget .widget-footer {
  padding: 7px 10px;
  background-color: #e9e9e9;
}
.widget .widget-footer .progress {
  margin-bottom: 0;
}

.widget-header-toolbar .pagination-sm {
  margin-bottom: 0;
  margin-top: 5px;
}
.widget-header-toolbar .onoffswitch > label:first-child {
  margin-bottom: 0;
  top: 3px;
}
.widget-header-toolbar .fancy-checkbox {
  margin-bottom: 0;
  position: relative;
  top: 4px;
}
.widget-header-toolbar .fancy-checkbox input[type="checkbox"] + span {
  margin-right: 0;
}
.widget-header-toolbar .badge {
  margin-top: 10px;
}
@media screen and (max-width: 480px) {
  .widget-header-toolbar .badge {
    margin-top: 0;
  }
}


</style>

<script type="text/javascript">

</script>
</body>
</html>