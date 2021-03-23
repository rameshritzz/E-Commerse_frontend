<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cr" value="${pageContext.request.contextPath}" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<div class="container mb-4">
	<c:if test="${!empty cartlist}">
		<div class="row">
			<div class="col-12">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">Product</th>
								<th scope="col">Available</th>
								<th scope="col" class="text-center">Quantity</th>
								<th scope="col" class="text-right">Price</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${cartlist}" var="c">
								<tr>
									<td><img width="50px"
										src="${cr}/r/images/${c.p.pro_id}.jpg" /></td>
									<td>${c.p.pro_name}</td>
									<c:if test="${c.p.stock > 0}">
										<td>In stock</td>
									</c:if>
									<td><input class="form-control" type="text"
										value="${c.quantity}" /></td>
									<td class="text-right">${c.total}</td>
									<td class="text-right"><button
											class="btn btn-sm btn-danger">
											<i class="fa fa-trash"></i>
										</button></td>
								</tr>
							</c:forEach>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>Sub-Total</td>
								<td class="text-right">${subtot}</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>Shipping</td>
								<td class="text-right">${shipping}</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td><strong>Total</strong></td>
								<td class="text-right"><strong>${total}</strong></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col mb-2">
				<div class="row">
					<div class="col-sm-12  col-md-6">
						<button class="btn btn-block btn-light">Continue Shopping</button>
					</div>
					<div class="col-sm-12 col-md-6 text-right">
						<a href="${cr}/user/viewaddress"><button
								class="btn btn-lg btn-block btn-success text-uppercase">Checkout</button></a>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	<c:if test="${empty  cartlist}">
		<div class="page-wrap d-flex flex-row align-items-center"
			style="margin-top: 10%">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-12 text-center">
						<span class="display-1 d-block">Oops!!Your Cart is Empty</span>
						<div class="mb-4 lead">
							<img
								src="https://www.shaolintigers.co.uk/wp-content/uploads/2014/07/empty-cart.gif">
						</div>
						<a href="${cr}/viewproductcart" class="btn btn-link">View Products</a>
					</div>
				</div>
			</div>
		</div>
	</c:if>
</div>