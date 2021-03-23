<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
@media ( min-width : 768px) {
	.field-label-responsive {
		padding-top: .5rem;
		text-align: right;
	}
}
</style>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title>Bootstrap 4 Register Form</title>

<!-- Stylesheets -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
</head>

<div class="container">
	<form:form class="form-group" modelAttribute="registermodel"
		method="post" action="addregister">
		<h3 class="text-center text-info">Register</h3>
		<c:if test="${showmess}">
			<div class="alert alert-info">
				<strong>${dispmsg}</strong>

			</div>
		</c:if>

		<hr>
</div>

<div class="row">
	<div class="col-md-3 field-label-responsive">
		<label for="name">Name</label>

	</div>

	<div class="col-md-6">
		<div class="form-group">
			<div class="input-group mb-2 mr-sm-2 mb-sm-0">
				<div class="input-group-addon" style="width: 2.6rem">
					<i class="fa fa-user"></i>
				</div>
				<form:input type="text" name="username" class="form-control"
					id="username" placeholder="Enter the Name" path="reg_Name" />
				<form:errors path="reg_Name" cssStyle="color:Red"></form:errors>
			</div>
		</div>
	</div>
	<div class="col-md-3">
		<div class="form-control-feedback">
			<span class="text-danger align-middle"> <!-- Put name validation error messages here -->
			</span>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-md-3 field-label-responsive">
		<label for="email">E-Mail Address</label>


	</div>
	<div class="col-md-6">
		<div class="form-group">
			<div class="input-group mb-2 mr-sm-2 mb-sm-0">
				<div class="input-group-addon" style="width: 2.6rem">
					<i class="fa fa-at"></i>
				</div>
				<form:input type="email" name="email" class="form-control"
					id="email" placeholder="you@example.com" path="reg_Email" />
				<form:errors path="reg_Email" cssStyle="color:Red"></form:errors>
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
		<label for="phone">Phone.No</label>


	</div>
	<div class="col-md-6">
		<div class="form-group has-danger">
			<div class="input-group mb-2 mr-sm-2 mb-sm-0">
				<div class="input-group-addon" style="width: 2.6rem">
					<i class="fa fa-key"></i>
				</div>
				<form:input type="text" name="phno" class="form-control"
					id="password" placeholder="phone number" path="reg_Phno" />
				<form:errors path="reg_Phno" cssStyle="color:Red"></form:errors>
			</div>
		</div>
	</div>
	<div class="col-md-3">
		<div class="form-control-feedback">
			<span class="text-danger align-middle"> <i class="fa fa-close">
			</i>
			</span>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-md-3 field-label-responsive">
		<label for="password">Password</label>


	</div>
	<div class="col-md-6">
		<div class="form-group">
			<div class="input-group mb-2 mr-sm-2 mb-sm-0">
				<div class="input-group-addon" style="width: 2.6rem">
					<i class="fa fa-repeat"></i>
				</div>
				<form:input type="password" name="password" class="form-control"
					id="password" placeholder="Password" path="reg_Pass" />
				<form:errors path="reg_Pass" cssStyle="color:Red"></form:errors>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-md-3"></div>
	<div class="col-md-6">
		<button type="submit" class="btn btn-success" value="register">
			<i class="fa fa-user-plus"></i> Register
		</button>
	</div>

</div>
</form:form>

</html>




