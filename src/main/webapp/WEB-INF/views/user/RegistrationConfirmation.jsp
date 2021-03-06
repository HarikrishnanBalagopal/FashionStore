<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="Common-Header.jsp"%>
<!-- LIGHT SECTION -->
<section class="lightSection clearfix pageHeader">
	<div class="container">
		<div class="row">
			<div class="col-xs-6">
				<div class="page-title">
					<h2>sign up</h2>
				</div>
			</div>
			<div class="col-xs-6">
				<ol class="breadcrumb pull-right">
					<li><a href="Home">Home</a></li>
					<li class="active">sign up</li>
				</ol>
			</div>
		</div>
	</div>
</section>

<!-- MAIN CONTENT SECTION -->
<section class="mainContent signUp">
	<div class="container">
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3>confirm details</h3>
					</div>
					<div class="panel-body">
						<form:form method="POST" modelAttribute="user" role="form">
							<div class="col-xs-12 form-group">
								<form:label path="email">Email *</form:label>
								<form:input path="email" type="email" class="form-control"
									name="email" disabled="true" readonly="true" />
							</div>
							<div class="col-xs-12 form-group">
								<form:label path="password">Password *</form:label>
								<form:input path="password" type="password" class="form-control"
									name="password" disabled="true" readonly="true" />
							</div>
							<div class="col-md-6 col-xs-12 form-group">
								<form:label path="firstName">First Name</form:label>
								<form:input path="firstName" type="text" class="form-control"
									name="firstName" disabled="true" readonly="true" />
							</div>
							<div class="col-md-6 col-xs-12 form-group">
								<form:label path="lastName">Last Name</form:label>
								<form:input path="lastName" type="text" class="form-control"
									name="lastName" disabled="true" readonly="true" />
							</div>
							<div class="col-xs-12 form-group">
								<form:label path="contactNo">Phone Number *</form:label>
								<form:input path="contactNo" type="text" class="form-control"
									name="phoneNumber" disabled="true" readonly="true" />
							</div>
							<div class="filterArea form-group">
								<h4>Shipping Address</h4>
								<div class="col-xs-12 form-group">
									<form:label path="shippingAddress.street">Street</form:label>
									<form:input path="shippingAddress.street" type="text"
										class="form-control" name="shippingAddressStreet"
										disabled="true" readonly="true" />
								</div>
								<div class="col-md-6 col-xs-12 form-group">
									<form:label path="shippingAddress.city">City</form:label>
									<br />
									<form:select path="shippingAddress.city" items="${cityList}"
										disabled="true" readonly="true" class="sbSelector" />
								</div>
								<div class="col-md-6 col-xs-12 form-group">
									<form:label path="shippingAddress.pin">Zip Code</form:label>
									<form:input path="shippingAddress.pin" type="text"
										class="form-control" name="shippingAddressPin" disabled="true"
										readonly="true" />
								</div>
							</div>
							<div class="filterArea form-group">
								<h4>Billing Address</h4>
								<div class="col-xs-12 form-group">
									<form:label path="billingAddress.street">Street</form:label>
									<form:input path="billingAddress.street" type="text"
										class="form-control" name="billingAddressStreet"
										disabled="true" readonly="true" />
								</div>
								<div class="col-md-6 col-xs-12 form-group">
									<form:label path="billingAddress.city">City</form:label>
									<br />
									<form:select path="billingAddress.city" items="${cityList}"
										disabled="true" readonly="true" class="sbSelector" />
								</div>
								<div class="col-md-6 col-xs-12 form-group">
									<form:label path="billingAddress.pin">Zip Code</form:label>
									<form:input path="billingAddress.pin" type="text"
										class="form-control" name="billingAddressPin" disabled="true"
										readonly="true" />
								</div>
							</div>
							<div class="form-group">
								<h4>Credit Card details *</h4>
								<div class="col-md-9 col-xs-12 form-group">
									<form:label path="cardDetails[0].cardNumber">Card Number *</form:label>
									<form:input path="cardDetails[0].cardNumber" type="text"
										class="form-control" name="cardNumber" disabled="true"
										readonly="true" />
								</div>
								<div class="col-md-3 col-xs-12 form-group">
									<form:label path="cardDetails[0].cvv">CVV *</form:label>
									<form:input path="cardDetails[0].cvv" type="text"
										class="form-control" name="cvv" disabled="true"
										readonly="true" />
								</div>
								<div class="col-xs-12 form-group">
									<form:label path="cardDetails[0].name">Name on card *</form:label>
									<form:input path="cardDetails[0].name" type="text"
										class="form-control" name="name" disabled="true"
										readonly="true" />
								</div>
								<div class="col-xs-6 form-group">
									<form:label path="cardDetails[0].expiryMonth">Expiry Month *</form:label>
									<form:input path="cardDetails[0].expiryMonth" type="text"
										class="form-control" name="expiryMonth" disabled="true"
										readonly="true" />
								</div>
								<div class="col-xs-6 form-group">
									<form:label path="cardDetails[0].expiryYear">Expiry Year *</form:label>
									<form:input path="cardDetails[0].expiryYear" type="text"
										class="form-control" name="expiryYear" disabled="true"
										readonly="true" />
								</div>
							</div>
							<div class="col-xs-6">
								<button name="_eventId_edit" type="submit"
									class="btn btn-primary btn-block">Edit</button>
							</div>
							<div class="col-xs-6">
								<button name="_eventId_submit" type="submit"
									class="btn btn-primary btn-block">Confirm Details</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="Common-Footer.jsp"%>