<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cr" value="${pageContext.request.contextPath}" />

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<title>Home</title>
<style>
<!--
body {
	font-family: open sans;
}

.one-column-text {
	padding: 80px 0;
}

.one-column-text h2 {
	font-size: 42px;
	font-weight: 300;
	color: #057d9f;
	line-height: 48px;
	text-align: center;
}

.one-column-text h3 {
	font-size: 24px;
	font-weight: 300;
	color: #057d9f;
	text-align: center;
	line-height: 40px;
}

/*------------------------------------------*/
.container {
	width: 100%;
	padding: 0;
}

.slider {
	font-family: 'Open Sans', sans-serif;
	padding: 50px 120px;
	display: block;
}

.blogShort {
	border-bottom: 1px solid #ddd;
}

.add {
	background: #333;
	padding: 10%;
	height: 300px;
}

.nav-sidebar {
	width: 100%;
	border-right: 8px solid #95adc2;
}

.nav-sidebar a {
	min-height: 80px;
	color: #333;
	backgroud-color: #EFF0F2;
	-webkit-transition: all 0.08s linear;
	-moz-transition: all 0.08s linear;
	-o-transition: all 0.08s linear;
	transition: all 0.08s linear;
}

.nav-sidebar .active a {
	cursor: default;
	background-color: #95adc2;
	color: #fff;
}

.nav-sidebar .active a:hover {
	background-color: #ECEDEE;
}

.nav-sidebar .text-overflow a, .nav-sidebar .text-overflow .media-body {
	white-space: nowrap;
	overflow: hidden;
	-o-text-overflow: ellipsis;
	text-overflow: ellipsis;
}

.btn-blog {
	color: #ffffff;
	background-color: #E50000;
	border-color: #E50000;
	border-radius: 0;
	margin-bottom: 10px;
}

.btn-blog:hover, .btn-blog:focus, .btn-blog:active, .btn-blog.active,
	.open .dropdown-toggle.btn-blog {
	color: white;
	background-color: #0b56a8;
	border-color: #0b56a8;
}

article h2 {
	color: #333333;
	font-family: 'Open Sans', sans-serif;
}

.margin10 {
	margin-bottom: 10px;
	margin-right: 10px;
}

.tabs p {
	letter-spacing: 1px;
	font-weight: 600;
	margin-bottom: 0;
}

.tabs li a {
	padding: 22px 25px;
}

.tabs span {
	font-size: .9em;
}

.text-style h2 {
	font-size: 42px;
	font-weight: 300;
	color: #025167;
	line-height: 48px;
	margin-bottom: 25px;
	margin-top: 0;
	width: 70%;
}

.text-style p {
	font-size: 18px;
	font-weight: 300;
	color: #025167;
	width: 40%;
}

.panel-default {
	width: 350px;
}

.press-quotes {
	padding: 50px 150px;
}

.press-quotes p {
	font-size: 16px;
	font-style: italic;
	color: #057d9f;
	line-height: 24px;
}

.press-logos {
	margin-bottom: 20px;
}

.line {
	padding: 0 150px;
}

.line hr {
	margin: 20px 0;
	border: solid 1px #eee;
}

.steps {
	padding: 0 150px;
	margin-bottom: 30px;
}

.steps h3 {
	font-size: 36px;
	font-weight: 300;
	color: #057d9f;
	text-align: center;
	margin-bottom: 30px;
}

.steps h4 {
	font-size: 20px;
	font-weight: 300;
	color: #444;
	line-height: 24px;
	text-align: center;
}

#opinion-left h3 {
	font-size: 40px;
	font-style: italic;
	color: #525252;
	font-weight: 300;
	text-shadow: 1px 1px 0px rgba(255, 255, 255, 0.5);
	margin-bottom: 20px;
}

#opinion-left {
	padding: 70px 150px;
}

#opinion-left p {
	text-align: right;
	margin: 0;
	font-size: 16px;
	font-style: italic;
	color: #7d7d7d;
	text-shadow: 1px 1px 0px rgba(255, 255, 255, 0.5);
	font-weight: 300;
}

#opinion-right h3 {
	font-size: 40px;
	font-style: italic;
	color: #525252;
	font-weight: 300;
	text-shadow: 1px 1px 0px rgba(255, 255, 255, 0.5);
	margin-bottom: 20px;
}

#opinion-right {
	padding: 70px 150px;
	margin-top: 100px;
}

#opinion-right p {
	text-align: right;
	margin: 0;
	font-size: 16px;
	font-style: italic;
	color: #7d7d7d;
	text-shadow: 1px 1px 0px rgba(255, 255, 255, 0.5);
	font-weight: 300;
}

.features-home-left {
	margin: 40px 150px;
}

.features-home-left h3 {
	font-weight: 700;
	font-size: 32px;
}

.features-home-left h4 {
	font-weight: 300;
	font-size: 22px;
	margin-bottom: 30px;
}

.features-home-left p {
	font-weight: 300;
}

.features-home-right {
	margin: 40px 150px;
}

.features-home-right h3 {
	font-weight: 700;
	font-size: 32px;
	text-align: right;
}

.features-home-right h4 {
	font-weight: 300;
	font-size: 22px;
	margin-bottom: 30px;
	text-align: right;
}

.features-home-right p {
	font-weight: 300;
	text-align: right;
}

.features-home-right img {
	float: right;
}

.panel-heading h3 {
	font-weight: 300;
}

.form-group img {
	min-width: 50px;
	max-width: 50px;
}

.text-style a {
	color: #2e82bc;
}

.slider {
	height: 600px;
}
-->
</style>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800'
	rel='stylesheet' type='text/css'>

<div class="container">

	<div id="tabs-home" class="row slider"
		style="background: url(http://legalprom.cl/wp-content/uploads/2014/05/main-bg.jpg) no-repeat center fixed;">
		<div class="col-sm-3">
			<nav class="nav-sidebar">
				<ul class="nav tabs">
					<li class="active"><a href="#tab1" data-toggle="tab"><p>WELCOME
								CANON</p> <span> </span></a></li>
					<li class=""><a href="#tab2" data-toggle="tab"><p>DSLR</p>
							<span> product</span></a></li>
					<li class=""><a href="#tab3" data-toggle="tab"><p>LENS</p>
							<span>product</span></a></li>
					<li class=""><a href="#tab4" data-toggle="tab"><p>TRIPOID</p>
							<span>product</span></a></li>
				</ul>
			</nav>
		</div>
		<!-- tab content -->
		<div id="wea" class="col-sm-9 tab-content">

			<div class="tab-pane active text-style fade in active" id="tab1">
				<h2>CANON Product</h2>

				<p>Our new mirrorless cameras are easy to carry and distil the
					best of Canon compacts and DSLRs into a compact body with
					interchangeable lenses.</p>
				<p>Canon EOS RP. A small, lightweight and intuitive full-frame
					mirrorless camera designed for travel and everyday photography. ...</p>
				<div class="panel panel-default">
					<div class="panel-heading"></div>
				</div>
			</div>

			<div class="tab-pane text-style fade" id="tab2">
				<h2>DSLR Product</h2>
				<p>EOS R. ...</p>
				<p>EOS M50. ...</p>

				<p>EOS M100. ...</p>
				<p>EOS M6....</p>

				<p>
					<strong>price $129.990</strong>
				</p>

			</div>

			<div class="tab-pane text-style fade" id="tab3">
				<h2>LENS product</h2>
				<p>Canon EF 50mm f/1.8 II Camera Lens.</p>
				<p>Canon EF-S 10-18mm f/4.5-5.6 IS STM.</p>
				<p>Canon EF 50mm f/1.4 USM.</p>
				<p>Canon EF-S 24mm f/2.8 STM Lens.</p>

			</div>

			<div class="tab-pane text-style fade" id="tab4">
				<h2>TRIPOID</h2>
				<p>Miles de clientes han confiado en LegalProm. Muchos huyendo
					de malos servicios, perdidas de tiempo y dinero.</p>
			</div>
		</div>

	</div>




</div>

</div>

















