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
		<c:set var="url" value="${cr}/user/address" />
	</c:if>

	<c:if test="${editmode}">
		<c:set var="url" value="${cr}/user/updateaddress" />

	</c:if>


	<form:form class="form-horizontal" modelAttribute="addressmodel"
		method="post" action="${url}">

		<c:if test="${editmode}">
			<div class="form-group">
				<label for="username" class="text-info">Address ID:</label><br>
				<form:input type="text" name="username" id="username"
					class="form-control" path="address_id" readonly="true" />
			</div>
		</c:if>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<h2>Add Address</h2>
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
				<label for="username" class="text-info">Customer Name</label>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">

						<form:input type="text" name="username" id="username"
							class="form-control" path="cust_name" />
						<form:errors path="cust_name" cssStyle="color:Red"></form:errors>
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
				<label for="password" class="text-info">Address line 1</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">

						<form:textarea type="text" name="address line 1"
							class="form-control" id="address line 1" path="addressline1"></form:textarea>
						<form:errors path="addressline1"></form:errors>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="password" class="text-info">Address line 2</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">

						<form:textarea type="text" name="address line 1"
							class="form-control" id="address line 2" path="addressline2"></form:textarea>
						<form:errors path="addressline2"></form:errors>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="password" class="text-info">Area</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">

						<form:textarea type="text" name="area"
							class="form-control" id="area" path="area"></form:textarea>
						<form:errors path="area"></form:errors>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="password" class="text-info">pincode</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">

						<form:textarea type="text" name="pincode"
							class="form-control" id="pincode" path="pincode"></form:textarea>
						<form:errors path="pincode"></form:errors>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="password" class="text-info">Phone no</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">

						<form:textarea type="text" name="phone no" class="form-control"
							id="phone no" path="phoneno"></form:textarea>
						<form:errors path="phoneno"></form:errors>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<div class="input-group mb-2 mr-sm-2 mb-sm-0">
					<div class="input-group-addon" style="width: 2.6rem"></div>
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