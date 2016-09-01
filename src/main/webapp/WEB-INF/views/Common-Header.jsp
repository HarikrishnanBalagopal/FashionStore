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
*
{
	margin:0;
	padding:0;
	outline:0;
}
.topBar
{
	min-height:40px;
	height:auto;
	background:#252525;
    color: #a7a7a7;
}
i
{
	margin-top:10px;
}
ul li {
    list-style-type: none;
}
.topBar ul li a
{
	color:#ffffff;
	transition: all 0.3s ease-in-out;
}
.topBar ul li a:hover,
.topBar ul li a:focus
{
	opacity:40%;
}
.topBar ul.pull-right li:nth-child(2) .dropdown-menu
{
    width: 350px;
    margin: 0;
    padding: 10px 15px;
    border-radius: 0;
}
#searchBox
{
    box-shadow: none;
    border-radius: 0;
}
#searchButton
{
    background-color: #47bac1;
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
                  <li><span><a data-toggle="modal" href='#'>Log in </a><small> or </small><a data-toggle="modal" href='#'> Create an account</a></span></li>
                  <li class="dropdown searchBox">
                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-search"></i></a>
                    <ul class="dropdown-menu dropdown-menu-right">
                      <li>
                        <span class="input-group">
                          <input id="searchBox" type="text" class="form-control" placeholder="Search..." aria-describedby="basic-addon2">
                          <span id="searchButton" class="input-group-addon" id="basic-addon2">Search</span>
                        </span>
                      </li>
                    </ul>
                  </li>
                  <li><a href="#"><i class="fa fa-shopping-cart"></i></a>
                </ul>
              </div>
            </div>

		</div>
	</div>
</div>

<div class="header">

</div>