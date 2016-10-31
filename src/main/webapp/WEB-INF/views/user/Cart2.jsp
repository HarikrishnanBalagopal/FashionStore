<%@ include file="Common-Header.jsp"%>
<!-- LIGHT SECTION -->
<section class="lightSection clearfix pageHeaderImage">
	<div class="container">
		<div class="tableBlock">
			<div class="row tableInner">
				<div class="col-xs-12">
					<div class="page-title">
						<h2>cart</h2>
						<ol class="breadcrumb">
							<li><a href="Home">Home</a></li>
							<li class="active">cart</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- MAIN CONTENT SECTION -->
<section class="mainContent clearfix cartListWrapper">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div data-ng-app="storeApp" data-ng-controller="productCtrl"
					class="cartListInner">
					<form action="#">
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th></th>
										<th>Product Name</th>
										<th>Price</th>
										<th>Quantity</th>
										<th>Sub Total</th>
									</tr>
								</thead>
								<tbody>
									<tr data-ng-repeat="order in orders">
										<td>
											<button type="button"
												data-ng-click="removeOrder(order.orderID);"
												class="close" data-dismiss="alert" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button> <span class="cartImage"><img
												src="resources/images/products/{{order.productID}}.jpg"
												alt="image"></span>
										</td>
										<td>{{order.name}}</td>
										<td>{{order.price}}</td>
										<td><span data-ng-show="rowid != order.orderID">{{order.quantity}}</span>
											<input data-ng-show="rowid == order.orderID" data-ng-model="order.quantity"
											type="text" class="tableInput" /> <i
											data-ng-click="toggleInputField(order.orderID, order.quantity)"
											class="fa {{rowid == order.orderID ? 'fa-check' : 'fa-pencil'}}"></i>
										</td>
										<td>{{order.price * order.quantity}}</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class=" totalAmountArea">
							<div class="row">
								<div class="col-sm-4 col-sm-offset-8 col-xs-12">
									<ul class="list-unstyled">
										<li>Grand Total <span class="grandTotal">{{calc()}}</span></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="checkBtnArea">
							<a href="CheckOut.obj" class="btn btn-primary btn-block">checkout<i
								class="fa fa-arrow-circle-right" aria-hidden="true"></i></a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
	var app = angular.module('storeApp', [], function($httpProvider) {
		  $httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded;charset=utf-8';

		  var param = function(obj) {
		    var query = '', name, value, fullSubName, subName, subValue, innerObj, i;

		    for(name in obj) {
		      value = obj[name];

		      if(value instanceof Array) {
		        for(i=0; i<value.length; ++i) {
		          subValue = value[i];
		          fullSubName = name + '[' + i + ']';
		          innerObj = {};
		          innerObj[fullSubName] = subValue;
		          query += param(innerObj) + '&';
		        }
		      }
		      else if(value instanceof Object) {
		        for(subName in value) {
		          subValue = value[subName];
		          fullSubName = name + '[' + subName + ']';
		          innerObj = {};
		          innerObj[fullSubName] = subValue;
		          query += param(innerObj) + '&';
		        }
		      }
		      else if(value !== undefined && value !== null)
		        query += encodeURIComponent(name) + '=' + encodeURIComponent(value) + '&';
		    }

		    return query.length ? query.substr(0, query.length - 1) : query;
		  };

		  // Override $http service's default transformRequest
		  $httpProvider.defaults.transformRequest = [function(data) {
		    return angular.isObject(data) && String(data) !== '[object File]' ? param(data) : data;
		  }];
		});
	app.controller('productCtrl', function($scope, $http) {
		$scope.orders = [];
		$http.get("cartRest").then(function(response){$scope.orders = response.data;});
		$scope.calc = function()
		{
			var t = 0;
			for (var i = 0; i < $scope.orders.length; i++)
			{
				var o = $scope.orders[i];
				t += o.price * o.quantity;
			}
			return t;
		};
		$scope.rowid = -1;
	    $scope.toggleInputField = function(d, q)
	    {
	    	if($scope.rowid == d)
	      	{
	      		$scope.rowid = -1;
		    	$http.post("cartRestUpdate", {${_csrf.parameterName}:"${_csrf.token}", id:d, quantity:q})
		    	.then(function(response){$scope.orders = response.data;});
	      	}
	      	else
	      	{
	      		$scope.rowid = d;
	      	}
	    };
	    $scope.removeOrder = function(d)
	    {
	    	for(var i = 0; i < $scope.orders.length; i++)
	    	{
	    		if($scope.orders[i].orderID == d)
	    		{
	    			$scope.orders.splice(i, 1);
	    			break;
	    		}
	    	}
	    	$http.post("cartRestRemove", {${_csrf.parameterName}:"${_csrf.token}", id:d});
	   	};
	});
</script>
<%@ include file="Common-Footer.jsp"%>