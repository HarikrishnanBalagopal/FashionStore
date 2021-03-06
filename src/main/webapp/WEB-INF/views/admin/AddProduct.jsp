<section class="adminHome mainContent logIn">
	<div class="container">
		<div class="row">
			<div
				class="col-md-10 col-md-offset-1 col-sm-8 col-sm-offset-2 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3>product details</h3>
					</div>
					<div class="stepsPage panel-body">
						<form:form action="AddProductAttempt" method="POST"
							modelAttribute="product" enctype="multipart/form-data"
							role="form">
							<div class="col-md-6 col-xs-12 form-group">
								<form:label path="id">Product ID *</form:label>
								<form:input path="id" type="text" class="form-control"
									autofocus="autofocus" required="required" />
							</div>
							<div class="col-md-6 col-xs-12 form-group">
								<form:label path="name">Product Name *</form:label>
								<form:input path="name" type="text" class="form-control"
									required="required" />
							</div>
							<div class="col-xs-2 form-group">
								<form:label path="category.id">Category *</form:label>
								<form:radiobuttons path="category.id" items="${categoryList}"
									required="required" />
							</div>
							<div class="col-md-10 col-xs-12 form-group">
								<form:label path="description">Description</form:label>
								<form:textarea path="description" class="form-control" />
							</div>
							<div class="col-md-5 col-xs-12 form-group">
								<form:label path="price">Price *</form:label>
								<form:input path="price" type="text" class="form-control"
									required="" />
							</div>
							<div class="col-md-5 col-xs-12 form-group">
								<form:label path="quantity">Quantity *</form:label>
								<form:input path="quantity" type="text" class="form-control"
									required="required" />
							</div>
							<div class="col-xs-5 filterArea form-group">
								<form:label path="supplier.id">Supplier *</form:label>
								<form:select class="sbSelector" path="supplier.id"
									items="${supplierList}" />
							</div>
							<div class="col-xs-5 form-group">
								<form:label path="image">Image</form:label>
								<form:input type="file" path="image" />
							</div>
							* <small>Required Fields</small>

							<input type="submit" value="Add Product"
								class="btn btn-primary btn-block" />
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>