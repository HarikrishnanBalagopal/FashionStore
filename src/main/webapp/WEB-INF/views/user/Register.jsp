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
						<h3>sign up</h3>
					</div>
					<div class="panel-body">
						<form:form method="POST" modelAttribute="user" role="form">
							<div class="col-xs-12 form-group">
								<form:label path="email">Email * ${error}</form:label>
								<form:input path="email" type="email" class="form-control"
									name="email" placeholder="example@server.com"
									autofocus="autofocus" required="required" />
								<c:forEach
									items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
									var="err">
									<div>
										<span>${err.text}</span>
									</div>
								</c:forEach>
							</div>
							<div class="col-xs-12 form-group">
								<form:label path="password">Password *</form:label>
								<form:input path="password" type="password" class="form-control"
									name="password"
									placeholder="(atleast 8 characters and must include letters and numbers)"
									title="Password must be atleast 8 characters and must include letters and numbers"
									pattern="^(?=[^a-z]*[a-z])(?=[^\d]*\d).{8,}$"
									required="required" />
								<c:forEach
									items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
									var="err">
									<div>
										<span>${err.text}</span>
									</div>
								</c:forEach>
							</div>
							<div class="col-md-6 col-xs-12 form-group">
								<form:label path="firstName">First Name *</form:label>
								<form:input path="firstName" type="text" class="form-control"
									name="firstName" required="required" />
								<c:forEach
									items="${flowRequestContext.messageContext.getMessagesBySource('firstName')}"
									var="err">
									<div>
										<span>${err.text}</span>
									</div>
								</c:forEach>
								<br />
							</div>
							<div class="col-md-6 col-xs-12 form-group">
								<form:label path="lastName">Last Name *</form:label>
								<form:input path="lastName" type="text" class="form-control"
									name="lastName" required="required" />
								<c:forEach
									items="${flowRequestContext.messageContext.getMessagesBySource('lastName')}"
									var="err">
									<div>
										<span>${err.text}</span>
									</div>
								</c:forEach>
								<br />
							</div>
							<div class="col-xs-12 form-group">
								<form:label path="contactNo">Phone Number *</form:label>
								<form:input path="contactNo" type="text" class="form-control"
									pattern="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$"
									title="Must be 10 digits long" name="phoneNumber"
									required="required" />
								<c:forEach
									items="${flowRequestContext.messageContext.getMessagesBySource('contactNo')}"
									var="err">
									<div>
										<span>${err.text}</span>
									</div>
								</c:forEach>
								<br />
							</div>
							<div class="filterArea form-group">
								<h4>Shipping Address *</h4>
								<div class="col-xs-12 form-group">
									<form:label path="shippingAddress.street">Street *</form:label>
									<form:input path="shippingAddress.street" type="text"
										class="form-control" name="shippingAddressStreet"
										required="required" />
								</div>
								<c:forEach
									items="${flowRequestContext.messageContext.getMessagesBySource('shippingAddressStreet')}"
									var="err">
									<div>
										<span>${err.text}</span>
									</div>
								</c:forEach>
								<br />
								<div class="col-md-6 col-xs-12 form-group">
									<form:label path="shippingAddress.city">City *</form:label>
									<br />
									<form:select path="shippingAddress.city" items="${cityList}"
										class="sbSelector" />
								</div>
								<div class="col-md-6 col-xs-12 form-group">
									<form:label path="shippingAddress.pin">Zip Code *</form:label>
									<form:input path="shippingAddress.pin" type="text"
										class="form-control" name="shippingAddressPin"
										pattern="[0-9]+" title="Digits only" required="required" />
								</div>
							</div>
							<div class="filterArea form-group">
								<h4>Billing Address *</h4>
								<div class="col-xs-12 form-group">
									<form:label path="billingAddress.street">Street *</form:label>
									<form:input path="billingAddress.street" type="text"
										class="form-control" name="billingAddressStreet"
										required="required" />
									<c:forEach
										items="${flowRequestContext.messageContext.getMessagesBySource('billingAddressStreet')}"
										var="err">
										<div>
											<span>${err.text}</span>
										</div>
									</c:forEach>
								</div>
								<div class="col-md-6 col-xs-12 form-group">
									<form:label path="billingAddress.city">City *</form:label>
									<br />
									<form:select path="billingAddress.city" items="${cityList}"
										class="sbSelector" />
								</div>
								<div class="col-md-6 col-xs-12 form-group">
									<form:label path="billingAddress.pin">Zip Code *</form:label>
									<form:input path="billingAddress.pin" type="text"
										class="form-control" name="billingAddressPin" pattern="[0-9]+"
										title="Digits only" required="required" />
								</div>
							</div>
							<div class="form-group">
								<h4>Credit Card details *</h4>
								<div class="col-md-9 col-xs-12 form-group">
									<form:label path="cardDetails[0].cardNumber">Card Number *</form:label>
									<form:input path="cardDetails[0].cardNumber" type="text"
										class="form-control" name="cardNumber" required="required" />
									<c:forEach
										items="${flowRequestContext.messageContext.getMessagesBySource('cardNumber')}"
										var="err">
										<div>
											<span>${err.text}</span>
										</div>
									</c:forEach>
								</div>
								<div class="col-md-3 col-xs-12 form-group">
									<form:label path="cardDetails[0].cvv">CVV *</form:label>
									<form:input path="cardDetails[0].cvv" type="text"
										class="form-control" name="cvv" required="required" />
									<c:forEach
										items="${flowRequestContext.messageContext.getMessagesBySource('cvv')}"
										var="err">
										<div>
											<span>${err.text}</span>
										</div>
									</c:forEach>
								</div>
								<div class="col-xs-12 form-group">
									<form:label path="cardDetails[0].name">Name on card *</form:label>
									<form:input path="cardDetails[0].name" type="text"
										class="form-control" name="name" required="required" />
									<c:forEach
										items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
										var="err">
										<div>
											<span>${err.text}</span>
										</div>
									</c:forEach>
								</div>
								<div class="filterArea col-xs-6 form-group">
									<form:label path="cardDetails[0].expiryMonth">Expiry Month *</form:label>
									<br />
									<form:select path="cardDetails[0].expiryMonth"
										class="sbSelector" name="expiryMonth" required="required">
										<form:option value="1">1</form:option>
										<form:option value="2">2</form:option>
										<form:option value="3">3</form:option>
										<form:option value="4">4</form:option>
										<form:option value="5">5</form:option>
										<form:option value="6">6</form:option>
										<form:option value="7">7</form:option>
										<form:option value="8">8</form:option>
										<form:option value="9">9</form:option>
										<form:option value="10">10</form:option>
										<form:option value="11">11</form:option>
										<form:option value="12">12</form:option>
									</form:select>
								</div>
								<div class="filterArea col-xs-6 form-group">
									<form:label path="cardDetails[0].expiryMonth">Expiry Year *</form:label>
									<br />
									<form:select path="cardDetails[0].expiryYear"
										class="sbSelector" name="expiryYear" required="required">
										<form:option value="1">2016</form:option>
										<form:option value="2">2017</form:option>
										<form:option value="3">2018</form:option>
										<form:option value="4">2019</form:option>
									</form:select>
								</div>
							</div>
								* <small>Required Fields</small>
							<button name="_eventId_submit" type="submit"
								class="btn btn-primary btn-block">Submit</button>
							<button type="button"
								onclick="window.location.href='/FashionStore/Login';"
								class="btn btn-link btn-block">
								<span>Already have an account?</span> Log in
							</button>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	var elem = document.getElementById("LinkRegister");
	elem.className += " active";
</script>
<%@ include file="Common-Footer.jsp"%>