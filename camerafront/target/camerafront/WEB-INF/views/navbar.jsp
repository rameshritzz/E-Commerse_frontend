<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="cr" value="${pageContext.request.contextPath}" />
<title>WELCOME</title>
<style>
body {
	margin: 0;
	padding: 0;
}

a.navbar-brand {
	float: left;
	height: 50px;
	padding: 15px 15px;
	font-size: 18px;
	line-height: 20px;
	text-decoration: none;
	color: orangered;
	font-family: cursive;
	font-weight: 700;
}

nav.main-navigation {
	position: relative;
}

nav.main-navigation ul.nav-list {
	margin: 0;
	padding: 0;
	list-style: none;
	position: relative;
	text-align: right;
}

.nav-list li.nav-list-item {
	display: inline-block;
	line-height: 40px;
	margin-left: 30px;
	margin-top: 15px;
}

a.nav-link {
	text-decoration: none;
	font-size: 18px;
	font-family: sans-serif;
	font-weight: 500;
	cursor: pointer;
	position: relative;
	color: #404040;
}

@
keyframes FadeIn { 0% {
	opacity: 0;
	-webkit-transition-duration: 0.8s;
	transition-duration: 0.8s;
	-webkit-transform: translateY(-10px);
	-ms-transform: translateY(-10px);
	transform: translateY(-10px);
}

100%
{
opacity




:


 


1;
-webkit-transform




:


 


translateY




(0);
-ms-transform




:


 


translateY




(0);
transform




:


 


translateY




(0);
pointer-events




:


 


auto




;
transition




:


 


cubic-bezier




(0
.4
,
0,
0
.2
,
1);
}
}
.nav-list li {
	animation: FadeIn 1s cubic-bezier(0.65, 0.05, 0.36, 1);
	animation-fill-mode: both;
}

.nav-list li:nth-child(1) {
	animation-delay: .3s;
}

.nav-list li:nth-child(2) {
	animation-delay: .6s;
}

.nav-list li:nth-child(3) {
	animation-delay: .9s;
}

.nav-list li:nth-child(4) {
	animation-delay: 1.2s;
}

.nav-list li:nth-child(5) {
	animation-delay: 1.5s;
}

/* Animation */
@
keyframes fadeInUp {from { transform:translate3d(0, 40px, 0)
	
}

to {
	transform: translate3d(0, 0, 0);
	opacity: 1
}

}
@
-webkit-keyframes fadeInUp {from { transform:translate3d(0, 40px, 0)
	
}

to {
	transform: translate3d(0, 0, 0);
	opacity: 1
}

}
.animated {
	animation-duration: 1s;
	animation-fill-mode: both;
	-webkit-animation-duration: 1s;
	-webkit-animation-fill-mode: both
}

.animatedFadeInUp {
	opacity: 0
}

.fadeInUp {
	opacity: 0;
	animation-name: fadeInUp;
	-webkit-animation-name: fadeInUp;
}
</style>
<nav class="main-navigation">
	<div class="navbar-header">
		<a class="navbar-brand" href="#"><img class=" img-fluid"
			height="5" width="110" src="${cr}/r/oimages/logo.PNG" alt=""></a>
	</div>
	<c:choose>
		<c:when test="${sessionScope.userrole == 'User'}">
			<ul class="nav-list">
				<li class="nav-list-item"><a href="${cr}/slider"
					class="nav-link">Home</a></li>
				<li class="nav-list-item"><a href="${cr}/about us"
					class="nav-link">About Us</a></li>
				<li class="nav-list-item"><a href="${cr}/contact us"
					class="nav-link">Contact Us</a></li>
				<li class="nav-list-item"><a href="${cr}/viewproductcart"
					class="nav-link">View Product</a></li>
				<li class="nav-list-item"><a href="${cr}/user/viewcart"
					class="nav-link">Cart</a></li>
				<li class="nav-list-item"><a href="${cr}/logout"
					class="nav-link">Logout</a></li>
			</ul>

		</c:when>
		<c:when test="${sessionScope.userrole == 'Admin'}">
			<ul class="nav-list">
				<li class="nav-list-item"><a href="${cr}/slider"
					class="nav-link">Home</a></li>
				<li class="nav-list-item"><a href="${cr}/about us"
					class="nav-link">About Us</a></li>
				<li class="nav-list-item"><a href="${cr}/contact us"
					class="nav-link">Contact Us</a></li>
				<li class="nav-list-item"><a href="${cr}/admin/category"
					class="nav-link">Add Category</a></li>
				<li class="nav-list-item"><a href="${cr}/admin/seller"
					class="nav-link">Add Seller</a></li>
				<li class="nav-list-item"><a href="${cr}/admin/product"
					class="nav-link">Add Product</a></li>
				<li class="nav-list-item"><a href="${cr}/admin/viewcategory"
					class="nav-link">View Category</a></li>
				<li class="nav-list-item"><a href="${cr}/admin/viewseller"
					class="nav-link">View Seller</a></li>
				<li class="nav-list-item"><a href="${cr}/admin/viewproduct"
					class="nav-link">View Product</a></li>
				<li class="nav-list-item"><a href="${cr}/logout"
					class="nav-link">Logout</a></li>
			</ul>

		</c:when>
		<c:otherwise>
			<ul class="nav-list">
				<li class="nav-list-item"><a href="${cr}/slider"
					class="nav-link">Home</a></li>

				<li class="nav-list-item"><a href="${cr}/register"
					class="nav-link">Register</a></li>
				<li class="nav-list-item"><a href="${cr}/loginpage"
					class="nav-link">Login</a></li>
				<li class="nav-list-item"><a href="${cr}/about us"
					class="nav-link">About Us</a></li>
				<li class="nav-list-item"><a href="${cr}/contact us"
					class="nav-link">Contact Us</a></li>
				<li class="nav-list-item"><a href="${cr}/viewproductcart"
					class="nav-link">View Product</a></li>
			</ul>
		</c:otherwise>
	</c:choose>

</nav>