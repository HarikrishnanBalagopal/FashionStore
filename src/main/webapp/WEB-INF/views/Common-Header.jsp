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
<style>
* {
	margin: 0;
	padding: 0;
	outline: 0;
}

.topBar {
	min-height: 40px;
	height: auto;
	background: #252525;
	color: #a7a7a7;
}

i {
	margin-top: 10px;
}

ul li {
	list-style-type: none;
}

.topBar ul li a {
	color: #ffffff;
	transition: all 0.3s ease-in-out;
}

.topBar ul li a:hover, .topBar ul li a:focus {
	opacity: 40%;
}

.topBar ul.pull-right li:nth-child(2) .dropdown-menu {
	width: 350px;
	margin: 0;
	padding: 10px 15px;
	border-radius: 0;
}

#searchBox {
	box-shadow: none;
	border-radius: 0;
}

#searchButton {
	background-color: #47bac1;
}

.navbar-default {
    background-color: #ffffff;
    margin-bottom: 0;
    border: none;
}

.navbar-brand img
{
	width:40px;
}
</style>
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
			<a class="navbar-brand" href="javascript:void(0)"><img
				src="resources/images/logo.png" alt=""></a>
		</div>

		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="javascript:void(0)">Home</a></li>
				<li class="dropdown megaDropMenu"><a href="javascript:void(0)"
					class="dropdown-toggle" data-toggle="dropdown"
					data-hover="dropdown" data-delay="300" data-close-others="true"
					aria-expanded="false">Shop</b></a>
					<ul class="dropdown-menu row">
						<li class="col-sm-3 col-xs-12">
							<ul class="list-unstyled">
								<li>Products Grid View</li>
								<li><a href="product-grid-left-sidebar.html">Products
										Sidebar Left</a></li>
								<li><a href="product-grid-right-sidebar.html">Products
										Sidebar Right</a></li>
								<li><a href="product-grid-3-col-filter.html">Products 3
										Columns V1</a></li>
								<li><a href="product-grid-3-col.html">Products 3
										Columns V2</a></li>
								<li><a href="product-grid-4-col.html">Products 4
										Columns</a></li>
							</ul>
						</li>
						<li class="col-sm-3 col-xs-12">
							<ul class="list-unstyled">
								<li>Products List View</li>
								<li><a href="product-list-left-sidebar.html">Products
										Sidebar Left</a></li>
								<li><a href="product-list-right-sidebar.html">Products
										Sidebar Right</a></li>
								<li class="listHeading">Others</li>
								<li><a href="single-product.html">Single Product</a></li>
								<li><a href="cart-page.html">Cart Page</a></li>
							</ul>
						</li>
						<li class="col-sm-3 col-xs-12">
							<ul class="list-unstyled">
								<li>Checkout</li>
								<li><a href="checkout-step-1.html">Step 1 - Address</a></li>
								<li><a href="checkout-step-2.html">Step 2 - Shipping</a></li>
								<li><a href="checkout-step-3.html">Step 3 - Payment</a></li>
								<li><a href="checkout-step-4.html">Step 4 - Payment</a></li>
								<li><a href="checkout-complete.html">Order Complete</a></li>
							</ul>
						</li>
						<li class="col-sm-3 col-xs-12"><a href="#" class="menu-photo"><img
								src="img/menu-photo.jpg" alt="menu-img"></a></li>
					</ul></li>
				<li class="dropdown"><a href="javascript:void(0)"
					class="dropdown-toggle" data-toggle="dropdown" role="button"
					aria-haspopup="true" aria-expanded="false">pages</a>
					<ul class="dropdown-menu dropdown-menu-left">
						<li><a href="about-us.html">About Us</a></li>
						<li><a href="signup.html">Register</a></li>
						<li><a href="signup-login.html">Register or Login</a></li>
						<li><a href="login.html">Login</a></li>
						<li><a href="lost-password.html">Password Recovery</a></li>
						<li><a href="privacy-policy.html">Privacy Policy</a></li>
						<li><a href="terms-and-conditions.html">Terms &amp;
								Conditions</a></li>
						<li><a href="404.html">404 Not Found</a></li>
						<li><a href="coming-soon.html">Coming Soon</a></li>
					</ul></li>
				<li class="dropdown"><a href="javascript:void(0)"
					class="dropdown-toggle" data-toggle="dropdown" role="button"
					aria-haspopup="true" aria-expanded="false">blog</a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="blog-right-sidebar.html">Right Sidebar</a></li>
						<li><a href="blog-left-sidebar.html">Left Sidebar</a></li>
						<li><a href="blog-fullwidth.html">Full Width</a></li>
						<li><a href="blog-single-fullwidth.html">Single Post</a></li>
						<li><a href="blog-single-right-sidebar.html">Single Right
								Sidebar</a></li>
						<li><a href="blog-single-left-sidebar.html">Single Left
								Sidebar</a></li>
					</ul></li>
				<li class="dropdown"><a href="javascript:void(0)"
					class="dropdown-toggle" data-toggle="dropdown" role="button"
					aria-haspopup="true" aria-expanded="false">My Account</a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="account-dashboard.html">Dashboard</a></li>
						<li><a href="account-profile.html">Profile</a></li>
						<li><a href="account-all-orders.html">All Orders</a></li>
						<li><a href="account-single-order.html">Single Order</a></li>
						<li><a href="account-wishlist.html">Wishlist</a></li>
						<li><a href="account-address.html">Address</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	</nav>