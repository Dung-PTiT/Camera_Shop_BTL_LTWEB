<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
</head>
<link rel="apple-touch-icon" sizes="76x76"
	href="/Shop/static/admin/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="/Shop/static/admin/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />
<link href="/Shop/static/admin/css/bootstrap.min.css" rel="stylesheet" />
<link href="/Shop/static/admin/css/animate.min.css" rel="stylesheet" />
<link href="/Shop/static/admin/css/paper-dashboard.css" rel="stylesheet" />
<link href="/Shop/static/admin/css/demo.css" rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link href="/Shop/static/admin/css/themify-icons.css" rel="stylesheet">
<body>
	<jsp:include page="../menuAdmin.jsp" />

	<div class="main-panel">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar bar1"></span> <span class="icon-bar bar2"></span>
						<span class="icon-bar bar3"></span>
					</button>
					<a class="navbar-brand" href="#">Add Product</a>
				</div>
			</div>
		</nav>
		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card">						
							<div class="content table-responsive table-full-width">
								<div>
									<div class="wrapper">
										<form class="form-signin" action="/Shop/admin/product/add"
											method="post" enctype="multipart/form-data">											
											<label>Name:</label> 
											<input type="text"
												class="form-control" name="name" style="background-color: #edd7e7"/>
											<label>Quantity:</label> 
											<input class="form-control"
												name="quantity" type="text" style="background-color: #edd7e7"/> 
											<label>Price:</label>
											<input type="text" class="form-control" name="price" style="background-color: #edd7e7" /> 
											<div class="form-group" >
												<label>Category</label>
												<div class="checkbox" style="background-color: #edd7e7">
													<select name="category">
														<c:forEach items="${categories}" var="c">
															<option value="${c.id}">${c.name}</option>
														</c:forEach>
													</select>
												</div>

											</div>
											<label>Description:</label> 
											<input type="text"
												class="form-control" name="description" style="background-color: #edd7e7"/>
											<label>Image:</label>
											<input type="file" class="form-control" name="productFile" style="background-color:#edd7e7" />	
											<hr>
											<button class="btn btn-lg btn-primary btn-block"
												type="submit" style="background-color: #3b5135">Add Product</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer class="footer">
			<div class="container-fluid">
				<nav class="pull-left">
					<ul>

						<li><a href="#"> Do Trong Dung </a></li>
						<li><a href="#"> Blog </a></li>
						<li><a href="#"> Licenses </a></li>
					</ul>
				</nav>
				<div class="copyright pull-right">
					&copy;
					<script>document.write(new Date().getFullYear())</script>
					, made with <i class="fa fa-heart heart"></i> by <a href="#">Do
						Trong Dung</a>
				</div>
			</div>
		</footer>

	</div>
	</div>
</body>
<!--   Core JS Files   -->
<script src="/Shop/static/admin/js/jquery.min.js" type="text/javascript"></script>
<script src="/Shop/static/admin/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="/Shop/static/admin/js/bootstrap-checkbox-radio.js"></script>

<!--  Charts Plugin -->
<script src="/Shop/static/admin/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="/Shop/static/admin/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js"></script>

<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
<script src="/Shop/static/admin/js/paper-dashboard.js"></script>

<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
<script src="/Shop/static/admin/js/demo.js"></script>

</html>