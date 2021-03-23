<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cr" value="${pageContext.request.contextPath}" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<style>
/*
** Style Simple Ecommerce Theme for Bootstrap 4
** Created by T-PHP https://t-php.fr/43-theme-ecommerce-bootstrap-4.html
*/
.bloc_left_price {
	color: #c01508;
	text-align: center;
	font-weight: bold;
	font-size: 150%;
}

.category_block li:hover {
	background-color: #007bff;
}

.category_block li:hover a {
	color: #ffffff;
}

.category_block li a {
	color: #343a40;
}

.add_to_cart_block .price {
	color: #c01508;
	text-align: center;
	font-weight: bold;
	font-size: 200%;
	margin-bottom: 0;
}

.add_to_cart_block .price_discounted {
	color: #343a40;
	text-align: center;
	text-decoration: line-through;
	font-size: 140%;
}

.product_rassurance {
	padding: 10px;
	margin-top: 15px;
	background: #ffffff;
	border: 1px solid #6c757d;
	color: #6c757d;
}

.product_rassurance .list-inline {
	margin-bottom: 0;
	text-transform: uppercase;
	text-align: center;
}

.product_rassurance .list-inline li:hover {
	color: #343a40;
}
</style>
<script>
	$(document).ready(function() {
		var quantity = 1;

		$('.quantity-right-plus').click(function(e) {
			e.preventDefault();
			var quantity = parseInt($('#quantity').val());
			$('#quantity').val(quantity + 1);
		});

		$('.quantity-left-minus').click(function(e) {
			e.preventDefault();
			var quantity = parseInt($('#quantity').val());
			if (quantity > 1) {
				$('#quantity').val(quantity - 1);
			}
		});

	});
</script>

<div class="container" style="margin-top: 5%">
	<div class="row">
		<!-- Image -->
		<div class="col-12 col-lg-4">
			<div class="card mb-3">
				<div class="card-body">
					<img class="img-fluid"
						src="${cr}/r/images/${oneproduct.pro_id}.jpg" />

				</div>
			</div>
		</div>
		<div class="col-12 col-lg-2"></div>
		<!-- Add to cart -->
		<div class="col-12 col-lg-6 add_to_cart_block">
			<div class="card bg-light mb-3">
				<div class="card-body">
					<p class="price">${oneproduct.pro_name}</p>
					<form method="get" action="addtocart">
						<div class="form-group">
							<label>Quantity :</label>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<button type="button"
										class="quantity-left-minus btn btn-danger btn-number"
										data-type="minus" data-field="">
										<i class="fa fa-minus"></i>
									</button>
								</div>
								<input type="hidden" class="form-control" id="proid"
									name="proid" value="${oneproduct.pro_id}"><input
									type="text" class="form-control" id="quantity" name="quantity"
									min="1" max="100" value="1">
								<div class="input-group-append">
									<button type="button"
										class="quantity-right-plus btn btn-success btn-number"
										data-type="plus" data-field="">
										<i class="fa fa-plus"></i>
									</button>
								</div>
							</div>
						</div>
						<input type="submit"
							class="btn btn-success btn-lg btn-block text-uppercase"
							value="addtocart">

					</form>
					<div class="product_rassurance">
						<ul class="list-inline">
							<li class="list-inline-item"><i class="fa fa-truck fa-2x"></i><br />Fast
								delivery</li>
							<li class="list-inline-item"><i
								class="fa fa-credit-card fa-2x"></i><br />Secure payment</li>
							<li class="list-inline-item"><i class="fa fa-phone fa-2x"></i><br />+33
								1 22 54 65 60</li>
						</ul>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<!-- Description -->
		<div class="col-12">
			<div class="card border-light mb-3">
				<div class="card-header bg-primary text-white text-uppercase">
					<i class="fa fa-align-justify"></i> Description
				</div>
				<div class="card-body">
					<p class="card-text">${oneproduct.pro_desp}</p>
				</div>
			</div>
		</div>
	</div>
</div>
