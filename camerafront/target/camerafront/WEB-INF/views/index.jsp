<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<html>
<body>

	<jsp:include page="navbar.jsp"></jsp:include>

	<c:if test="${indexpage}">
		<jsp:include page="slider.jsp"></jsp:include>
	</c:if>
	<c:if test="${logpage}">
		<jsp:include page="loginpage.jsp"></jsp:include>
	</c:if>
	<c:if test="${contact}">
		<jsp:include page="contact us.jsp"></jsp:include>
	</c:if>
	<c:if test="${about}">
		<jsp:include page="about us.jsp"></jsp:include>
	</c:if>
	<c:if test="${catpage}">
		<jsp:include page="category.jsp"></jsp:include>
	</c:if>
	<c:if test="${selpage}">
		<jsp:include page="seller.jsp"></jsp:include>
	</c:if>
	<c:if test="${regpage}">
		<jsp:include page="register.jsp"></jsp:include>
	</c:if>
	<c:if test="${productpage}">
		<jsp:include page="product.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${viewcatpage}">
		<jsp:include page="viewcategory.jsp"></jsp:include>
	</c:if>
	<c:if test="${viewselpage}">
		<jsp:include page="viewseller.jsp"></jsp:include>
	</c:if>
	<c:if test="${viewproductpage}">
		<jsp:include page="viewproduct.jsp"></jsp:include>
	</c:if>
	<c:if test="${userproductpage}">
		<jsp:include page="productcart.jsp"></jsp:include>
	</c:if>
	<c:if test="${viewonepropage}">
		<jsp:include page="viewoneproduct.jsp"></jsp:include>
	</c:if>
	<c:if test="${cartpage}">
		<jsp:include page="cart.jsp"></jsp:include>
	</c:if>
	<c:if test="${errorpage}">
		<jsp:include page="error.jsp"></jsp:include>
	</c:if>
	<c:if test="${pagenotfound}">
		<jsp:include page="pagenotfound.jsp"></jsp:include>
	</c:if>
	<c:if test="${address}">
		<jsp:include page="address.jsp"></jsp:include>
	</c:if>
	<c:if test="${orderpage}">
		<jsp:include page="viewmyorder.jsp"></jsp:include>
	</c:if>
	
<c:if test="${viewaddress}">
		<jsp:include page="viewaddress.jsp"></jsp:include>
	</c:if>
	<c:if test="${vieworderpage}">
		<jsp:include page="viewoneorder.jsp"></jsp:include>
	</c:if>
</body>
</html>
