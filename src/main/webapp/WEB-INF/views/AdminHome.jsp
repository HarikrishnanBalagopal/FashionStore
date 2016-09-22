<%@ include file="Common-Header.jsp"%>
<section class="lightSection pageHeader">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<div class="page-title">
					<h2>admin home</h2>
				</div>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb pull-right">
					<li><a href="Home">Home</a></li>
					<li class="active">Admin Home</li>
				</ol>
			</div>
		</div>
	</div>
</section>

<section class="mainContent crud form-body">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3>Product Management</h3>
					</div>
					<div id="addProduct" class="panel-body">
						<div class="btn-group-vertical">
							<button type="button" class="btn btn-primary"
								onclick="window.location.href='AddProduct'">Add Product</button>
							<button type="button" class="btn btn-primary"
								onclick="window.location.href='AdminProductList'">View
								and Update Products</button>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3>User Management</h3>
					</div>
					<div id="addUser" class="panel-body">
						<div class="btn-group-vertical">
							<button type="button" class="btn btn-primary">Add User</button>
							<button type="button" class="btn btn-primary">View and
								Update Users</button>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3>Supplier Management</h3>
					</div>
					<div id="addSupplier" class="panel-body">
						<div class="btn-group-vertical">
							<button type="button" class="btn btn-primary"
								onclick="window.location.href='AddSupplier'">Add
								Supplier</button>
							<button type="button" class="btn btn-primary"
								onclick="window.location.href='AdminSupplierList'">View
								and Update Suppliers</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="Common-Footer.jsp"%>