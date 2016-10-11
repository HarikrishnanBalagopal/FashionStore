<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="Common-Header.jsp"%>
<!-- LIGHT SECTION -->
<section class="lightSection clearfix pageHeader">
	<div class="container">
		<div class="row">
			<div class="col-xs-6">
				<div class="page-title">
					<h2>payment method</h2>
				</div>
			</div>
			<div class="col-xs-6">
				<ol class="breadcrumb pull-right">
					<li><a href="Home">Home</a></li>
					<li class="active">payment method</li>
				</ol>
			</div>
		</div>
	</div>
</section>

<!-- MAIN CONTENT SECTION -->
<section class="mainContent clearfix stepsWrapper">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="innerWrapper clearfix stepsPage">
					<div class="row progress-wizard" style="border-bottom: 0;">

						<div class="col-xs-4 progress-wizard-step complete fullBar">
							<div class="text-center progress-wizard-stepnum">Billing
								&amp; Shipping Address</div>
							<div class="progress">
								<div class="progress-bar"></div>
							</div>
							<a href="${flowExecutionUrl}&_eventId=step1"
								class="progress-wizard-dot"></a>
						</div>

						<div class="col-xs-4 progress-wizard-step active">
							<div class="text-center progress-wizard-stepnum">Payment
								Method</div>
							<div class="progress">
								<div class="progress-bar"></div>
							</div>
							<a href="#" class="progress-wizard-dot"></a>
						</div>

						<div class="col-xs-4 progress-wizard-step disabled">
							<div class="text-center progress-wizard-stepnum">Review</div>
							<div class="progress">
								<div class="progress-bar"></div>
							</div>
							<a href="${flowExecutionUrl}&_eventId=step3"
								class="progress-wizard-dot"></a>
						</div>
					</div>

					<form:form class="row" method="POST" modelAttribute="user"
						role="form">
						<div class="col-xs-12">
							<div class="page-header">
								<h4>Payment Information</h4>
							</div>
						</div>
						<div class="form-group col-sm-4 col-xs-12">
							<label for="">Payment By</label> <span class="step-drop">
								<select name="guiest_id3" id="guiest_id3" class="select-drop">
									<option value="0">Credit Card</option>
									<option value="1">Credit Card 1</option>
									<option value="2">Credit Card 2</option>
									<option value="3">Credit Card 3</option>
							</select>
							</span>
						</div>
						<div class="form-group col-sm-4 col-xs-12">
							<label for="">Card type</label> <span class="step-drop"> <select
								name="guiest_id3" id="guiest_id3" class="select-drop">
									<option value="0">Visa Card</option>
									<option value="1">Visa Card 1</option>
									<option value="2">Visa Card 2</option>
									<option value="3">Visa Card 3</option>
							</select>
							</span>
						</div>
						<div class="form-group col-sm-4 col-xs-12">
							<form:label path="cardDetails[0].cardNumber">Card Number *</form:label>
							<form:input path="cardDetails[0].cardNumber" type="text"
								class="form-control" name="cardNumber" />
						</div>
						<div class="form-group col-sm-4 col-xs-12">
							<form:label path="cardDetails[0].expiryMonth">Expiry Month *</form:label>
							<form:input path="cardDetails[0].expiryMonth" type="text"
								class="form-control" name="expiryMonth" />
						</div>
						<div class="form-group col-sm-4 col-xs-12">
							<form:label path="cardDetails[0].expiryYear">Expiry Year *</form:label>
							<form:input path="cardDetails[0].expiryYear" type="text"
								class="form-control" name="expiryYear" />
						</div>
						<div class="form-group col-sm-4 col-xs-12">
							<form:label path="cardDetails[0].cvv">CVV *</form:label>
							<form:input path="cardDetails[0].cvv" type="text"
								class="form-control" name="cvv" />
						</div>
						<div class="col-xs-12">
							<div class="well well-lg clearfix">
								<ul class="pager">
									<li class="previous"><a
										href="${flowExecutionUrl}&_eventId=step1">back</a></li>
									<li class="next"><a
										href="${flowExecutionUrl}&_eventId=step3">Continue</a></li>
								</ul>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="Common-Footer.jsp"%>