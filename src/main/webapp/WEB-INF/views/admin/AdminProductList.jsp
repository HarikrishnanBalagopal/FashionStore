<!-- MAIN CONTENT SECTION -->
<section class="adminHome mainContent clearfix productsContent">
	<div data-ng-app="storeApp" class="container">
		<div class="row">
			<div class="col-md-3 col-sm-4 col-xs-12 sideBar">
				<div class="panel panel-default">
					<div class="panel-heading">Product categories</div>
					<div class="panel-body">
						<div
							class="collapse navbar-collapse navbar-ex1-collapse navbar-side-collapse">
							<ul class="nav navbar-nav side-nav">
								<li><a href="javascript:;" data-toggle="collapse"
									data-target="#men">Men <i class="fa fa-plus"></i></a>
									<ul id="men" class="collapse collapseItem">
										<c:forEach items="${maleCategoryList}" var="maleCategory">
											<li><a
												href="/FashionStore/AdminProductList?category=${maleCategory.id}"><i
													class="fa fa-caret-right" aria-hidden="true"></i>${maleCategory.name}</a></li>
										</c:forEach>
									</ul></li>
								<li><a href="javascript:;" data-toggle="collapse"
									data-target="#women">Women <i class="fa fa-plus"></i></a>
									<ul id="women" class="collapse collapseItem">
										<c:forEach items="${femaleCategoryList}" var="femaleCategory">
											<li><a
												href="/FashionStore/AdminProductList?category=${femaleCategory.id}"><i
													class="fa fa-caret-right" aria-hidden="true"></i>${femaleCategory.name}</a></li>
										</c:forEach>
									</ul></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="panel panel-default priceRange">
					<div class="panel-heading">Filter by Price</div>
					<div class="panel-body clearfix">
						<div class="price-slider-inner">
							<span class="amount-wrapper"> Price: <input type="text"
								id="price-amount-1" readonly> <strong>-</strong> <input
								type="text" id="price-amount-2" readonly>
							</span>
							<div id="price-range"></div>
						</div>
						<input class="btn btn-default" type="submit" value="Filter">
						<!-- <span class="priceLabel">Price: <strong>$12 - $30</strong></span> -->
					</div>
				</div>
				<div class="panel panel-default filterNormal">
					<div class="panel-heading">filter by Color</div>
					<div class="panel-body">
						<ul class="list-unstyled">
							<li><a href="#">Black<span>(15)</span></a></li>
							<li><a href="#">White<span>(10)</span></a></li>
							<li><a href="#">Red<span>(7)</span></a></li>
							<li><a href="#">Blue<span>(12)</span></a></li>
							<li><a href="#">Orange<span>(12)</span></a></li>
						</ul>
					</div>
				</div>
				<div class="panel panel-default filterNormal">
					<div class="panel-heading">filter by Size</div>
					<div class="panel-body">
						<ul class="list-unstyled clearfix">
							<li><a href="#">Small<span>(15)</span></a></li>
							<li><a href="#">Medium<span>(10)</span></a></li>
							<li><a href="#">Large<span>(7)</span></a></li>
							<li><a href="#">Extra Large<span>(12)</span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div data-ng-controller="productCtrl" class="col-md-9 col-sm-8 col-xs-12">
				<div class="row filterArea">
					<div class="col-xs-3">
						<select name="sortOrder" id="sortOrder"
							class="sbSelector select-drop">
							<option value="0">Sort by name</option>
							<option value="1">Sort by price</option>
							<option value="2">Sort by quantity</option>
							<option value="3">Sort by category id</option>
							<option value="4">Sort by supplier id</option>
							<option value="5">Sort by id</option>
						</select>
					</div>
					<div class="col-xs-3">
						<input id="custSearchBar" ng-model="searchText" placeholder="Search..."
							autofocus="autofocus" type="search" />
					</div>
					<div class="col-xs-6">
						<div class="btn-group pull-right" role="group">
							<button type="button" class="btn btn-default"
								onclick="window.location.href='ProductGrid'">
								<i class="fa fa-th" aria-hidden="true"></i><span>Grid</span>
							</button>
							<button type="button" class="btn btn-default active"
								onclick="window.location.href='ProductList'">
								<i class="fa fa-th-list" aria-hidden="true"></i><span>List</span>
							</button>
						</div>
					</div>
				</div>
				<div class="row productListSingle">
					<div data-ng-repeat="p in products | searchFilter:searchText">
						<div data-admin-product-list-element data-product="p"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
	var e = document.querySelector("#sortOrder");
	e.value = ${sortOrder};
	e.addEventListener("change", function() {
		window.location.href = "/FashionStore/AdminProductList?" + ${categoryQuery} "sort=" + this.value;
	});
var app = angular.module('storeApp', []);
app.controller('productCtrl', function($scope) {
	    $scope.products = [
	   					<c:forEach items="${productList}" var="product">
	   					{id:"${product.id}", name:"${product.name}", description:"${product.description}", price:${product.price}, quantity:${product.quantity}, category_name:"${product.category.name}", supplier_name:"${product.supplier.name}"},
	   					</c:forEach>
	    ];
	});
app.filter('searchFilter', function() {
		  return function(productList, searchText) {
			    if(!searchText) {
			      return productList;
			    }
			    return productList.filter(function(el) {
			      return el.name.indexOf(searchText)>-1;
			    });
			  }
			});
app.directive('adminProductListElement',
	function(){
		return {
				restrict: 'A',
				scope:{product: '='},
				replace: true,
				templateUrl: 'resources/templates/AdminProductListTemplate.html'
			   };});
</script>