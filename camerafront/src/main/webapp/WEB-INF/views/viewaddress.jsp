<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cr" value="${pageContext.request.contextPath}" />

<style>
.mystyle {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 5%;
}

.button {
	position: relative;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background: #ffa6ec;
	padding: 1em 2em;
	border: none;
	color: white;
	font-size: 1.2em;
	cursor: pointer;
	outline: none;
	overflow: hidden;
	border-radius: 100px;
}

.button span {
	position: relative;
	pointer-events: none;
}

.button::before { -
	-size: 0;
	content: '';
	position: absolute;
	left: var(- -x);
	top: var(- -y);
	width: var(- -size);
	height: var(- -size);
	background: radial-gradient(circle closest-side, #4405f7, transparent);
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	transition: width .2s ease, height .2s ease;
}

.button:hover::before { -
	-size: 400px;
}
/* FontAwesome for working BootSnippet :> */
@import
	url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css')
	;

.btn-primary:hover, .btn-primary:focus {
	background-color: #108d6f;
	border-color: #108d6f;
	box-shadow: none;
	outline: none;
}

.btn-primary {
	color: #fff;
	background-color: #007b5e;
	border-color: #007b5e;
}

section {
	padding: 60px 0;
}

section .section-title {
	text-align: center;
	color: #007b5e;
	margin-bottom: 50px;
	text-transform: uppercase;
}

#team .card {
	border: none;
	background: #ffa6ec;
}

.image-flip:hover .backside, .image-flip.hover .backside {
	-webkit-transform: rotateY(0deg);
	-moz-transform: rotateY(0deg);
	-o-transform: rotateY(0deg);
	-ms-transform: rotateY(0deg);
	transform: rotateY(0deg);
	border-radius: .25rem;
}

.image-flip:hover .frontside, .image-flip.hover .frontside {
	-webkit-transform: rotateY(180deg);
	-moz-transform: rotateY(180deg);
	-o-transform: rotateY(180deg);
	transform: rotateY(180deg);
}

.mainflip {
	-webkit-transition: 1s;
	-webkit-transform-style: preserve-3d;
	-ms-transition: 1s;
	-moz-transition: 1s;
	-moz-transform: perspective(1000px);
	-moz-transform-style: preserve-3d;
	-ms-transform-style: preserve-3d;
	transition: 1s;
	transform-style: preserve-3d;
	position: relative;
}

.frontside {
	position: relative;
	-webkit-transform: rotateY(0deg);
	-ms-transform: rotateY(0deg);
	z-index: 2;
	margin-bottom: 30px;
}

.backside {
	position: absolute;
	top: 0;
	left: 0;
	-webkit-transform: rotateY(-180deg);
	-moz-transform: rotateY(-180deg);
	-o-transform: rotateY(-180deg);
	-ms-transform: rotateY(-180deg);
	transform: rotateY(-180deg);
	-webkit-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
	-moz-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
	box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
}

.frontside, .backside {
	-webkit-backface-visibility: hidden;
	-moz-backface-visibility: hidden;
	-ms-backface-visibility: hidden;
	backface-visibility: hidden;
	-webkit-transition: 1s;
	-webkit-transform-style: preserve-3d;
	-moz-transition: 1s;
	-moz-transform-style: preserve-3d;
	-o-transition: 1s;
	-o-transform-style: preserve-3d;
	-ms-transition: 1s;
	-ms-transform-style: preserve-3d;
	transition: 1s;
	transform-style: preserve-3d;
}

.frontside .card, .backside .card {
	min-height: 312px;
	min-width: 312px;
	max-width: 312px;
}

.backside .card a {
	color: white !important;
}

.frontside .card .card-title, .backside .card .card-title {
	color: #cf08a4 !important;
}

.frontside .card .card-body img {
	width: 120px;
	height: 120px;
	border-radius: 50%;
}
</style>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<div class="container mystyle">

	<a href="${cr}/user/vaddress"><button class="button">
			<span>Add Address</span>
		</button></a>
</div>

<div class="container">
	<c:if test="${empty  addresslist}">
		<div class="page-wrap d-flex flex-row align-items-center"
			style="margin-top: 10%">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-12 text-center">
						<span class="display-1 d-block">Oops!!NO ADDRESS AVAILABLE</span>
						<div class="mb-4 lead">
							<img
								src="https://www.shaolintigers.co.uk/wp-content/uploads/2014/07/empty-cart.gif">
						</div>

					</div>
				</div>
			</div>
		</div>
	</c:if>
	<c:if test="${!empty  addresslist}">
		<section id="team">
			<div class="row">
				<!-- Team member -->
				<c:forEach items="${addresslist}" var="a">
					<div class="col-md-4">
						<div class="image-flip"
							ontouchstart="this.classList.toggle('hover');">
							<div class="mainflip">
								<div class="frontside">
									<div class="card">
										<div class="card-body text-center">
											<p>
												<img class=" img-fluid" src="${cr}/r/images/home.jpg"
													alt="card image">
											</p>
											<h4 class="card-title">${a.cust_name}</h4>
											<h4 class="card-title">Area:${a.area}</h4>
											<h4 class="card-title">Phone No:${a.phoneno}</h4>

										</div>
									</div>
								</div>
								<div class="backside">
									<div class="card">
										<div class="card-body text-center">
											<h4 class="card-title">${a.cust_name}</h4>
											<h4 class="card-title">${a.addressline1},${a.addressline2}</h4>
											<h4 class="card-title">Area:${a.area}</h4>
											<h4 class="card-title">Pincode:${a.pincode}</h4>
											<a href="${cr}/user/editaddress?arid=${a.address_id}"
												class="btn btn-success btn-lg"><i class="fa fa-edit"></i></a>
											<a href="${cr}/user/deleteaddress?adrid=${a.address_id}"
												class="btn btn-success btn-lg"><i class="fa fa-trash"></i></a>
											<a href="${cr}/user/placeorder?addid=${a.address_id}" class="btn btn-success btn-lg"><i
												class="fa fa-truck"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</section>
		<!-- Team -->
	</c:if>

</div>
