<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="Common-Header.jsp"%>
<section class="lightSection pageHeader">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<div class="page-title">
					<h2>add product</h2>
				</div>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb pull-right">
					<li><a href="Home">Home</a></li>
					<li><a href="AdminHome">Admin Home</a></li>
					<li class="active">Add Product</li>
				</ol>
			</div>
		</div>
	</div>
</section>

<section class="mainContent logIn">
	<div class="container">
		<div class="row">
			<div
				class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3>product details</h3>
					</div>
					<div class="panel-body">
						<form:form action="AddProductAttempt" method="POST" modelAttribute="product" role="form">
							<div class="form-group">
								<form:label path="name">Product Name</form:label>
								<form:input path="name" type="text" class="form-control" required/>
							</div>
							<div class="form-group">
								<form:label path="description">Description</form:label>
								<form:input path="description" type="text" class="form-control" required/>
							</div>
							<div class="form-group">
								<form:label path="price">Price</form:label>
								<form:input path="price" type="text" class="form-control" required/>
							</div>
							<input type="submit" value="Add Product" class="btn btn-primary btn-block"/>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="Common-Footer.jsp"%>