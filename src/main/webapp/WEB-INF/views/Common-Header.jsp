<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BigBag Store</title>
<script src="https://use.fontawesome.com/20c7f48529.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>

	<div class="topBar">
		<div class="container">
			<div class="row">
				<div class="col-md-6 hidden-sm hidden-xs">
					<ul class="list-inline">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-google-plus-official"></i></a></li>
						<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
					</ul>
				</div>
				<div class="col-md-6 col-xs-12">
					<ul class="list-inline pull-right">
						<li><span><a data-toggle="modal" href='#'>Log in </a><small>
									or </small><a data-toggle="modal" href='#'> Create an account</a></span></li>
						<li class="dropdown searchBox"><a href="javascript:void(0)"
							class="dropdown-toggle" data-toggle="dropdown"><i
								class="fa fa-search"></i></a>
							<ul class="dropdown-menu dropdown-menu-right">
								<li><span class="input-group"> <input id="searchBox"
										type="text" class="form-control" placeholder="Search..."
										aria-describedby="basic-addon2"> <span
										id="searchButton" class="input-group-addon" id="basic-addon2">Search</span>
								</span></li>
							</ul></li>
						<li><a href="#"><i class="fa fa-shopping-cart"></i></a>
					</ul>
				</div>
			</div>

		</div>
	</div>
	</div>

	<nav class="navbar navbar-main navbar-default" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="javascript:void(0)"> <img
				src="resources/images/logo.png" alt=""><span class="company-name">B<small>IG</small> B<small>AG</small></span></a>
		</div>

		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li id="LinkHome"><a href="Home">Home</a></li>
				<li id="LinkRegister"><a href="Register">Register</a></li>
				<li id="LinkLogin"><a href="Login">Login</a></li>
				<li id="LinkAboutUs"><a href="AboutUs">About Us</a></li>
				<li id="LinkContactUs"><a href="ContactUs">Contact Us</a></li>
			</ul>
		</div>
	</div>
	</nav>