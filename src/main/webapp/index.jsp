<%@ include file="WEB-INF/views/Common-Header.jsp"%>
<!-- Carousel
    ================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner" role="listbox"
		style="width: 100%; height: 500px !important;">
		<div class="item active">
			<img class="first-slide" src="resources/images/shoe1.png"
				alt="First slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>Example headline.</h1>
					<p>
						Note: If you're viewing this page via a
						<code>file://</code>
						URL, the "next" and "previous" Glyphicon buttons on the left and
						right might not load/display properly due to web browser security
						rules.
					</p>
					<p>
						<a class="btn btn-lg btn-primary" href="#" role="button">Sign
							up today</a>
					</p>
				</div>
			</div>
		</div>
		<div class="item">
			<img class="second-slide" src="resources/images/shoe2.png"
				alt="Second slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>Another example headline.</h1>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.
						Donec id elit non mi porta gravida at eget metus. Nullam id dolor
						id nibh ultricies vehicula ut id elit.</p>
					<p>
						<a class="btn btn-lg btn-primary" href="#" role="button">Learn
							more</a>
					</p>
				</div>
			</div>
		</div>
		<div class="item">
			<img class="third-slide" src="resources/images/shoe3.png"
				alt="Third slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>One more for good measure.</h1>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.
						Donec id elit non mi porta gravida at eget metus. Nullam id dolor
						id nibh ultricies vehicula ut id elit.</p>
					<p>
						<a class="btn btn-lg btn-primary" href="#" role="button">Browse
							gallery</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<a class="left carousel-control" href="#myCarousel" role="button"
		data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
		aria-hidden="true"></span> <span class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#myCarousel" role="button"
		data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
		aria-hidden="true"></span> <span class="sr-only">Next</span>
	</a>
</div>
<!-- /.carousel -->

<!-- MAIN CONTENT SECTION -->
<section class="mainContent">
	<div class="container">
		<div class="row featuredCollection">
			<div class="col-xs-12">
				<div class="page-header">
					<h4>Featured Collection</h4>
				</div>
			</div>
			<div class="col-sm-4 col-xs-12">
				<div class="thumbnail"
					onclick="location.href='SingleProduct';">
					<div class="imageWrapper">
						<img src="resources/images/home/featured-collection/featured-collection-01.jpg"
							alt="feature-collection-image">
						<div class="masking">
							<a href="ProductGrid" class="btn viewBtn">View
								Products</a>
						</div>
					</div>
					<div class="caption">
						<h4>Shoes</h4>
					</div>
				</div>
			</div>
			<div class="col-sm-4 col-xs-12">
				<div class="thumbnail"
					onclick="location.href='SingleProduct';">
					<div class="imageWrapper">
						<img src="resources/images/home/featured-collection/featured-collection-02.jpg"
							alt="feature-collection-image">
						<div class="masking">
							<a href="ProductGrid" class="btn viewBtn">View
								Products</a>
						</div>
					</div>
					<div class="caption">
						<h4>Bags</h4>
					</div>
				</div>
			</div>
			<div class="col-sm-4 col-xs-12">
				<div class="thumbnail"
					onclick="location.href='SingleProduct';">
					<div class="imageWrapper">
						<img src="resources/images/home/featured-collection/featured-collection-03.jpg"
							alt="feature-collection-image">
						<div class="masking">
							<a href="ProductGrid" class="btn viewBtn">View
								Products</a>
						</div>
					</div>
					<div class="caption">
						<h4>Glasses</h4>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	var elem = document.getElementById("LinkHome");
	elem.className += " active";
</script>
<%@ include file="WEB-INF/views/Common-Footer.jsp"%>