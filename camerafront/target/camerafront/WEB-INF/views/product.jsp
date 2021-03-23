<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="cr" value="${pageContext.request.contextPath}" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<style>
@media ( min-width : 768px) {
	.field-label-responsive {
		padding-top: .5rem;
		text-align: right;
	}
}
</style>
<div class="container">
	<c:if test="${showmess}">
		<div class="alert alert-info">
			<strong>"${dispmsg}"</strong>
		</div>
	</c:if>

	<c:if test="${!editmode}">
		<c:set var="url" value="${cr}/admin/addproduct" />
	</c:if>

	<c:if test="${editmode}">
		<c:set var="url" value="${cr}/admin/updateproduct" />
	</c:if>

	<form:form enctype="multipart/form-data" class="form-horizontal"
		modelAttribute="productmodel" method="post" action="${url}">





		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<h2>Product</h2>
				<hr>
			</div>
		</div>

		<c:if test="${editmode}">
			<div class="group">
				<label for="username" class="text-info">Product Id</label>
				<form:input type="text" name="username" id="username"
					class="form-control" path="pro_id" readonly="true" />
			</div>
		</c:if>



		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="username" class="text-info">Name</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">
						<form:input type="text" name="username" id="username"
							class="form-control" path="pro_name" />
						<form:errors path="pro_name" cssStyle="color:Red"></form:errors>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="user" class="text-info">Category</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">
						<form:select id="user" class="form-control" type="text"
							path="pro_cate.cateid">
							<c:forEach items="${catlist}" var="q">
								<form:option value="${q.cateid}" cssStyle="color:Black">${q.catename}</form:option>
							</c:forEach>
						</form:select>
					</div>
				</div>
			</div>
		</div>



		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="password" class="text-info">Seller</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">
						<form:select id="user" class="form-control" type="text"
							path="pro_sell.sellerid">
							<c:forEach items="${sellist}" var="p">
								<form:option value="${p.sellerid}" cssStyle="color:Black">${p.sellername}</form:option>
							</c:forEach>
						</form:select>
					</div>
				</div>
			</div>
		</div>



		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="user" class="text-info">Description</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">
						<form:textarea id="user" type="text" class="form-control"
							path="pro_desp" />
					</div>
				</div>
			</div>
		</div>




		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="user" class="text-info">Stock</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">
						<form:input id="user" type="text" class="form-control"
							path="stock" />
					</div>
				</div>
			</div>
		</div>





		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="user" class="text-info">Price</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">
						<form:input id="user" type="text" class="form-control"
							path="price" />
					</div>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="text" class="text-info">Image:</label><br>
			<form:input type="file" name="fileToUpload" id="fileToUpload"
				class="form-control" path="pimage" />

		</div>


		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<input type="submit" name="submit" class="btn btn-success"
					value="Add"> <i class="fa fa-user-plus"></i> ADD
			</div>
		</div>

	</form:form>

</div>