<%@ include file="Common-Header.jsp"%>
<!-- LIGHT SECTION -->
<section class="lightSection clearfix pageHeader">
	<div class="container">
		<div class="row">
			<div class="col-xs-6">
				<div class="page-title">
					<h2>Product Grid View</h2>
				</div>
			</div>
			<div class="col-xs-6">
				<ol class="breadcrumb pull-right">
					<li><a href="Home">Home</a></li>
					<li class="active">Product Grid</li>
				</ol>
			</div>
		</div>
	</div>
</section>

<!-- MAIN CONTENT SECTION -->
<div data-ng-app="storeApp" data-ng-controller="productCtrl">
<section class="mainContent clearfix productsContent">
	<div class="container">
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
												href="/FashionStore/ProductGrid?category=${maleCategory.id}"><i
													class="fa fa-caret-right" aria-hidden="true"></i>${maleCategory.name}</a></li>
										</c:forEach>
									</ul></li>
								<li><a href="javascript:;" data-toggle="collapse"
									data-target="#women">Women <i class="fa fa-plus"></i></a>
									<ul id="women" class="collapse collapseItem">
										<c:forEach items="${femaleCategoryList}" var="femaleCategory">
											<li><a
												href="/FashionStore/ProductGrid?category=${femaleCategory.id}"><i
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
			<div class="col-md-9 col-sm-8 col-xs-12">
				<div class="row filterArea">
					<div class="col-xs-3">
						<select name="sortOrder" id="sortOrder"
							class="sbSelector select-drop">
							<option value="0">Sort by name</option>
							<option value="1">Sort by price</option>
							<option value="2">Sort by quantity</option>
						</select>
					</div>
					<div class="col-xs-3">
						<input id="custSearchBar" data-ng-model="searchText"
							placeholder="Search..." autofocus="autofocus" type="search" />
					</div>
					<div class="col-xs-6">
						<div class="btn-group pull-right" role="group">
							<button type="button" class="btn btn-default active"
								onclick="window.location.href='ProductGrid'">
								<i class="fa fa-th" aria-hidden="true"></i><span>Grid</span>
							</button>
							<button type="button" class="btn btn-default"
								onclick="window.location.href='ProductList'">
								<i class="fa fa-th-list" aria-hidden="true"></i><span>List</span>
							</button>
						</div>
					</div>
				</div>
				<div class="row">
					<div data-ng-repeat="p in products | searchFilter:searchText">
						<div data-product-grid-element data-product="p" data-change="quickView(id)"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- PRODUCT QUICK VIEW MODAL -->
    <div id="productModal" class="modal fade quick-view" tabindex="-1" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-body">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <div class="media">
              <div class="media-left">
                <img class="media-object" data-ng-src="resources/images/products/{{currProduct.id}}.jpg" alt="Image">
              </div>
              <div class="media-body">
                <h2>{{currProduct.name}}</h2>
                <h3>$ {{currProduct.price}}</h3>
                <p>{{currProduct.description}}</p>
                <span class="quick-drop">
                  <select name="guest_id3" id="guest_id3" class="select-drop sbSelector">
                    <option value="0">Size</option>
                    <option value="1">Size 1</option>
                    <option value="2">Size 2</option>
                    <option value="3">Size 3</option>            
                  </select>
                </span>
                <span class="quick-drop resizeWidth">
                  <select name="guest_id4" id="guest_id4" class="select-drop sbSelector">
                    <option value="0">Qty</option>
                    <option value="1">Qty 1</option>
                    <option value="2">Qty 2</option>
                    <option value="3">Qty 3</option>            
                  </select>
                </span>
                <div class="btn-area">
                  <a href="AddToCart?id={{currProduct.id}}" class="btn btn-primary btn-block">Add to cart <i class="fa fa-angle-right" aria-hidden="true"></i></a> 
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
<script>
var elem = document.getElementById("LinkProduct");
elem.className += " active";
	var e = document.querySelector("#sortOrder");
	e.value = ${sortOrder};
	e.addEventListener("change", function() {
		window.location.href = "/FashionStore/ProductGrid?" + ${categoryQuery} "sort=" + this.value;
	});
var app = angular.module('storeApp', []);
app.controller('productCtrl', function($scope) {
	    $scope.products = [
	   					<c:forEach items="${productList}" var="product">
	   					{id:"${product.id}", name:"${product.name}", description:"${product.description}", price:${product.price}, quantity:${product.quantity}},
	   					</c:forEach>
	    ];
	    $scope.quickView = function(id)
	    {
	    	for(var i = 0; i < $scope.products.length; i++)
	    	{
	    		var p = $scope.products[i];
	    		if(p.id == id)
	    		{
	    			$scope.currProduct = p;
	    			break;
	    		}
	    	}
	    };
	    $scope.currProduct = $scope.products[0];
	});
app.filter('searchFilter', function() {
		  return function(productList, searchText) {
			    if(!searchText) {
			      return productList;
			    }
			    searchText = searchText.toLowerCase();
			    return productList.filter(function(el) {
			    	var str = el.name.toLowerCase();
			      return str.indexOf(searchText)>-1;
			    });
			  }
			});
app.directive('productGridElement',
	function(){
		return {
				restrict: 'A',
				scope:{product: '=', change: '&'},
				replace: true,
				templateUrl: 'resources/templates/ProductGridTemplate.html'
			   };});
</script>
<%@ include file="Common-Footer.jsp"%>