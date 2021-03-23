<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cr" value="${pageContext.request.contextPath}" />

<div class="page-wrap d-flex flex-row align-items-center" style="margin-top: 10%">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-12 text-center">
				<span class="display-1 d-block">403</span>
				<div class="mb-4 lead">You Don't have Access to this Page.</div>
				<a href="${cr}/slider" class="btn btn-link">Back
					to Home</a>
			</div>
		</div>
	</div>
</div>