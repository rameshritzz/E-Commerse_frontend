<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cr" value="${pageContext.request.contextPath}" />

<style>
.view-group {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-direction: row;
	flex-direction: row;
	padding-left: 0;
	margin-bottom: 0;
}

.thumbnail {
	margin-bottom: 30px;
	padding: 0px;
	-webkit-border-radius: 0px;
	-moz-border-radius: 0px;
	border-radius: 0px;
}

.item.list-group-item {
	float: none;
	width: 100%;
	background-color: #fff;
	margin-bottom: 30px;
	-ms-flex: 0 0 100%;
	flex: 0 0 100%;
	max-width: 100%;
	padding: 0 1rem;
	border: 0;
}

.item.list-group-item .img-event {
	float: left;
	width: 30%;
}

.item.list-group-item .list-group-image {
	margin-right: 10px;
}

.item.list-group-item .thumbnail {
	margin-bottom: 0px;
	display: inline-block;
}

.item.list-group-item .caption {
	float: left;
	width: 70%;
	margin: 0;
}

.item.list-group-item:before, .item.list-group-item:after {
	display: table;
	content: " ";
}

.item.list-group-item:after {
	clear: both;
}
</style>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<c:if test="${showmess}">
				<div class="alert alert-primary">
					<strong>Success!</strong>${dispmsg}
				</div>
			</c:if>
		</div>
	</div>


	<div id="products" class="row view-group">
		<c:forEach items="${orderitems}" var="p">

			<div class="item col-xs-3 col-lg-3">

				<div class="thumbnail card">
					<div class="img-event">
						<img class="group list-group-image img-fluid"
							src="${cr}/r/images/${p.pro.pro_id}.jpg" alt="" />
					</div>


					<div class="caption card-body">
						<h4 class="group card-title inner list-group-item-heading">
							${p.order_id}</h4>
						<!-- 						<p class="group inner list-group-item-text"> -->
						<%-- 							<strong>Product Description... </strong><small>${p.pro_des}</small> --%>
						<!-- 						</p> -->
						<!-- 						<p class="group inner list-group-item-text"> -->


						<div class="row">

							<div class="col-xs-12 col-md-6">
								<strong>Product Name</strong><small>${p.pro.pro_name}</small>
							</div>
							<div class="col-xs-12 col-md-6">
								<strong>Price</strong><small>${p.total}</small>
							</div>

							<div class="col-xs-12 col-md-3">
								<a class="btn btn-info" href="${cr}/user/viewoneorder?oid=${p.order_id}">View</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>

	</div>
</div>