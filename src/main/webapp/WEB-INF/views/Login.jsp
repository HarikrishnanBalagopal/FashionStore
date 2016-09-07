<%@ include file="Common-Header.jsp"%>
<section class="lightSection pageHeader">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<div class="page-title">
					<h2>log in</h2>
				</div>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb pull-right">
					<li><a href="Home">Home</a></li>
					<li class="active">Login</li>
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
						<h3>log in</h3>
					</div>
					<div class="panel-body">
						<form action="" method="POST" role="form">
							<div class="form-group">
								<label for="">Enter Email</label> <input type="email"
									class="form-control" id="">
							</div>
							<div class="form-group">
								<label for="">Password</label> <input type="password"
									class="form-control" id="">
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> Remember Me
								</label>
							</div>
							<button type="submit" class="btn btn-primary btn-block">log
								in</button>
							<button type="button" class="btn btn-link btn-block">Forgot
								Password?</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	var elem = document.getElementById("LinkLogin");
	elem.className += " active";
</script>
<%@ include file="Common-Footer.jsp"%>