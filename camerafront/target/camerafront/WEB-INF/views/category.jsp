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
			<strong>${dispmesg}</strong>

		</div>

	</c:if>
	<c:if test="${!editmode}">
		<c:set var="url" value="${cr}/admin/addcategory" />
	</c:if>

	<c:if test="${editmode}">
		<c:set var="url" value="${cr}/admin/updatecategory" />

	</c:if>


	<form:form class="form-horizontal" modelAttribute="categorymodel"
		method="post" action="${url}">

		<c:if test="${editmode}">
			<div class="form-group">
				<label for="username" class="text-info">Category ID:</label><br>
				<form:input type="text" name="username" id="username"
					class="form-control" path="cateid" readonly="true" />
			</div>
		</c:if>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<h2>Category</h2>
				<hr>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-control-feedback">
				<span class="text-danger align-middle"> <!-- Put name validation error messages here -->
				</span>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="username" class="text-info">Name</label>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">

						<form:input type="text" name="username" id="username"
							class="form-control" path="catename" />
						<form:errors path="catename" cssStyle="color:Red"></form:errors>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="form-control-feedback">
					<span class="text-danger align-middle"> <!-- Put e-mail validation error messages here -->
					</span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="password" class="text-info">Description</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">

						<form:textarea type="text" name="description" class="form-control"
							id="description" path="catedescription"></form:textarea>
						<form:errors path="catedescription"></form:errors>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<div class="input-group mb-2 mr-sm-2 mb-sm-0">
					<div class="input-group-addon" style="width: 2.6rem">
					</div>
				</div>
			</div>
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