<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Loginpage</title>
<body>
	<div id="login">
		<h3 class="text-center text-white pt-5">Login form</h3>
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">
						<c:if test="${showmess}">
							<div class="alert alert-info">
								<strong>"${dispmsg}"</strong>

							</div>

						</c:if>
						<form id="login-form" class="form" action="perform_login"
							method="post">
							<h3 class="text-center text-info">Login</h3>
							<div class="form-group">
								<label for="username" class="text-info">Email Id:</label><br>
								<input type="text" name="user_name" id="user_name"
									class="form-control">
							</div>
							<div class="form-group">
								<label for="password" class="text-info">Password:</label><br>
								<input type="password" name="user_password" id="user_password"
									class="form-control">
							</div>
							<div class="form-group">
								<label for="remember-me" class="text-info"><span>Remember
										me</span> <span><input id="remember-me" name="remember-me"
										type="checkbox"></span></label><br> <input type="submit"
									name="submit" class="btn btn-info btn-md" value="submit">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
