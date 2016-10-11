<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="Common-Header.jsp"%>
	  <!-- LIGHT SECTION -->
      <section class="lightSection clearfix pageHeader">
        <div class="container">
          <div class="row">
            <div class="col-xs-6">
              <div class="page-title">
                <h2>billing &amp; Shipping address</h2>
              </div>
            </div>
            <div class="col-xs-6">
              <ol class="breadcrumb pull-right">
                <li>
                  <a href="Home">Home</a>
                </li>
                <li class="active">billing &amp; Shipping address</li>
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
                <div class="row progress-wizard" style="border-bottom:0;">

                  <div class="col-xs-4 progress-wizard-step complete">
                    <div class="text-center progress-wizard-stepnum">Billing &amp; Shipping Address</div>
                    <div class="progress"><div class="progress-bar"></div></div>
                    <a href="#" class="progress-wizard-dot"></a>
                  </div>

                  <div class="col-xs-4 progress-wizard-step disabled">
                    <div class="text-center progress-wizard-stepnum">Payment Method</div>
                    <div class="progress"><div class="progress-bar"></div></div>
                    <a href="${flowExecutionUrl}&_eventId=step2" class="progress-wizard-dot"></a>
                  </div>

                  <div class="col-xs-4 progress-wizard-step disabled">
                    <div class="text-center progress-wizard-stepnum">Review</div>
                    <div class="progress"><div class="progress-bar"></div></div>
                    <a href="${flowExecutionUrl}&_eventId=step3" class="progress-wizard-dot"></a>
                  </div>
                </div>
                
                <form:form class="row" method="POST" modelAttribute="user" role="form">
                  <div class="col-xs-12">
                    <div class="page-header">
                      <h4>Billing information</h4>
                    </div>
                  </div>
                  <div class="form-group col-sm-6 col-xs-12">
                    <form:label path="firstName" for="">First Name</form:label>
                    <form:input path="firstName" type="text" class="form-control" id="" />
                  </div>
                  <div class="form-group col-sm-6 col-xs-12">
                    <form:label path="lastName" for="">Last Name</form:label>
                    <form:input path="lastName" type="text" class="form-control" id="" />
                  </div>
                  <div class="form-group col-sm-6 col-xs-12">
                    <form:label path="contactNo" for="">Phone</form:label>
                    <form:input path="contactNo" type="text" class="form-control" id="" />
                  </div>
                  <div class="form-group col-sm-6 col-xs-12">
                    <form:label path="billingAddress.street" for="">Street</form:label>
                    <form:input path="billingAddress.street" type="text" class="form-control" id="" />
                  </div>
                  <div class="form-group col-sm-6 col-xs-12">
                    <form:label path="billingAddress.city" for="">City</form:label>
                    <form:input path="billingAddress.city" type="text" class="form-control" id="" />
                  </div>
                  <div class="form-group col-sm-6 col-xs-12">
                    <form:label path="billingAddress.pin" for="">Zip Code</form:label>
                    <form:input path="billingAddress.pin" type="text" class="form-control" id="" />
                  </div>
                  <div class="col-xs-12">
                    <div class="page-header">
                      <h4>Shipping information</h4>
                    </div>
                  </div>
                  <div class="form-group col-sm-6 col-xs-12">
                    <form:label path="shippingAddress.street" for="">Street</form:label>
                    <form:input path="shippingAddress.street" type="text" class="form-control" id="" />
                  </div>
                  <div class="form-group col-sm-6 col-xs-12">
                    <form:label path="shippingAddress.city" for="">City</form:label>
                    <form:input path="shippingAddress.city" type="text" class="form-control" id="" />
                  </div>
                  <div class="form-group col-sm-6 col-xs-12">
                    <form:label path="shippingAddress.pin" for="">Zip Code</form:label>
                    <form:input path="shippingAddress.pin" type="text" class="form-control" id="" />
                  </div>
                  <div class="col-xs-12">
                    <div class="well well-lg clearfix">
                      <ul class="pager">
                      <li class="previous"><a href="#" class="hideContent">back</a></li>
                        <li class="next"><a href="${flowExecutionUrl}&_eventId=step2">Continue</a></li>
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