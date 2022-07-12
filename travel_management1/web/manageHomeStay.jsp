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
          <jsp:include page="Header.jsp"></jsp:include>
        <!-- END nav -->
<div class="container">
    <div class="container-fluid p-0">
		<h1 class="h3 mb-3">Clients</h1>
		<div class="row">
			<div class="col-xl-8">
				<div class="card">
					<div class="card-header pb-0">
						<div class="card-actions float-right">
							<div class="dropdown show">
								<a href="#" data-toggle="dropdown" data-display="static">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal align-middle"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg>
								</a>

								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="#">Action</a>
									<a class="dropdown-item" href="#">Another action</a>
									<a class="dropdown-item" href="#">Something else here</a>
								</div>
							</div>
						</div>
						<h5 class="card-title mb-0">Clients</h5>
					</div>
					<div class="card-body">
						<table class="table table-striped" style="width:100%">
							<thead>
								<tr>
									<th>#</th>
									<th>HomeStayID</th>
									<th>HomeStayName</th>
									<th>Type</th>
									<th>Status</th>
                                                                        <th>View</th><!-- <th>Status</th> -->
                                                                        <th>Edit</th>
								</tr>
							</thead>
                                                <c:if test="${detail.status==1}">
                                                        <c:forEach items="${listbyAccountS}" var="o">
                                                        
							<tbody>
								<tr>
									<td><img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="32" height="32" class="rounded-circle my-n1" alt="Avatar"></td>
									<td>${o.homeStayID}</td>
									<td>${o.homeStayname}</td>
									<td>${o.cateName}</td>
                                                                        <c:if test="${o.status==1}">
									<td><span class="badge bg-success">Active</span></td>
                                                                        <td><a href="displayinf?homeStayID=${o.homeStayID}">View</a></td>
                                                                        <td><a href="updatehomestay?homeStayID=${o.homeStayID}">Edit</a></td>
                                                                         </c:if>
                                                                         <c:if test="${o.status==0}">
                                                                             <td><span class="badge bg-secondary">Booked</span></td>
                                                                        <td><a href="displayinf?homeStayID=${o.homeStayID}">View</a></td>
                                                                        <td><a href="updatehomestay?homeStayID=${o.homeStayID}">Edit</a></td>
                                                                         </c:if>
                                                                        <c:if test="${(o.status!=1)&&(o.status!=0)}">
                                                                            <td><span class="badge bg-warning">Pendding</span></td>
                                                                        <td><a href="displayinf?homeStayID=${o.homeStayID}">View</a></td>
                                                                       
                                                                        </c:if>
                                                                        
								</tr>
								
							</tbody>
                                                        
                                          
                                                        
                                                        
                                                        
                                                        
                                                        
</c:forEach>
                                                                       </c:if> 
                                                <c:if test="${detail.status==0}">
                                                    <p>Your Account are not ready </p>
                                                </c:if>
                                                        <a href=""> <button> Create </button> </a>
						</table>
					</div>
				</div>
			</div>

			<div class="col-xl-4">
				<div class="card">
					<div class="card-header">
						<div class="card-actions float-right">
							<div class="dropdown show">
								<a href="#" data-toggle="dropdown" data-display="static">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal align-middle"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg>
								</a>

								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="#">Action</a>
									<a class="dropdown-item" href="#">Another action</a>
									<a class="dropdown-item" href="#">Something else here</a>
								</div>
							</div>
						</div>
						<h5 class="card-title mb-0">${sessionScope.acc.account}</h5>
					</div>
					<div class="card-body">
						<div class="row g-0">
							<div class="col-sm-3 col-xl-12 col-xxl-3 text-center">
								<img src="https://bootdey.com/img/Content/avatar/avatar3.png" width="64" height="64" class="rounded-circle mt-2" alt="Angelica Ramos">
							</div>
							<div class="col-sm-9 col-xl-12 col-xxl-9">
								<strong>About me</strong>
								
							</div>
						</div>

						<table class="table table-sm mt-2 mb-4">
							<tbody>
								<tr>
									<th>Name</th>
									<td>${detail.firstName} ${detail.lastName}</td>
								</tr>
								<tr>
									<th>Fax</th>
									<td>${detail.fax}</td>
								</tr>   
								<tr>
									<th>Email</th>
									<td>${detail.email}</td>
								</tr>
								<tr>
									<th>Phone</th>
									<td>${detail.phone}</td>
								</tr>
								<tr>
									<th>Status</th>
                                                                        <c:if test="${detail.status==1}">
									<td><span class="badge bg-success">Active</span></td>
                                                                </c:if>
                                                                               <c:if test="${detail.status==0}">
									<td><span class="badge bg-warning">Peding</span></td>
                                                                </c:if>
							
							</tbody>
						</table>

						<strong>Activity</strong>

						<ul class="timeline mt-2 mb-0">
							<li class="timeline-item">
								<strong>Signed out</strong>
								<span class="float-right text-muted text-sm">30m ago</span>
								<p>Nam pretium turpis et arcu. Duis arcu tortor, suscipit...</p>
							</li>
							<li class="timeline-item">
								<strong>Created invoice #1204</strong>
								<span class="float-right text-muted text-sm">2h ago</span>
								<p>Sed aliquam ultrices mauris. Integer ante arcu...</p>
							</li>
							<li class="timeline-item">
								<strong>Discarded invoice #1147</strong>
								<span class="float-right text-muted text-sm">3h ago</span>
								<p>Nam pretium turpis et arcu. Duis arcu tortor, suscipit...</p>
							</li>
							<li class="timeline-item">
								<strong>Signed in</strong>
								<span class="float-right text-muted text-sm">3h ago</span>
								<p>Curabitur ligula sapien, tincidunt non, euismod vitae...</p>
							</li>
							<li class="timeline-item">
								<strong>Signed up</strong>
								<span class="float-right text-muted text-sm">2d ago</span>
								<p>Sed aliquam ultrices mauris. Integer ante arcu...</p>
							</li>
						</ul>

					</div>
				</div>
			</div>
		</div>

	</div>
</div>

<style type="text/css">
body{margin-top:20px;
background-color: #f7f7fc;
}

.timeline {
    list-style-type: none;
    position: relative
}

.timeline:before {
    background: #dee2e6;
    left: 9px;
    width: 2px;
    height: 100%
}

.timeline-item:before,
.timeline:before {
    content: " ";
    display: inline-block;
    position: absolute;
    z-index: 1
}

.timeline-item:before {
    background: #fff;
    border-radius: 50%;
    border: 3px solid #3b7ddd;
    left: 0;
    width: 20px;
    height: 20px
}
.card {
    margin-bottom: 24px;
    box-shadow: 0 0 0.875rem 0 rgba(33,37,41,.05);
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: initial;
    border: 0 solid transparent;
    border-radius: .25rem;
}
.card-body {
    flex: 1 1 auto;
    padding: 1.25rem;
}
.card-header:first-child {
    border-radius: .25rem .25rem 0 0;
}
.card-header {
    border-bottom-width: 1px;
}
.pb-0 {
    padding-bottom: 0!important;
}
.card-header {
    padding: 1rem 1.25rem;
    margin-bottom: 0;
    background-color: #fff;
    border-bottom: 0 solid transparent;
}
</style>

<script type="text/javascript">

</script>
    </body>
</html> 