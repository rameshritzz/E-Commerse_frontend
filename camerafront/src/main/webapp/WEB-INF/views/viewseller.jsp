<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cr" value="${pageContext.request.contextPath}" />

<style>
.event-list {
	margin-top: 3%;
	list-style: none;
	font-family: 'Lato', sans-serif;
	/* 	margin: 0px; */
	padding: 0px;
}

.event-list>li {
	background-color: rgb(255, 255, 255);
	box-shadow: 0px 0px 5px rgb(51, 51, 51);
	box-shadow: 0px 0px 5px rgba(51, 51, 51, 0.7);
	padding: 0px;
	margin: 0px 0px 20px;
	width: 100%
}

.event-list>li>.info {
	padding-top: 5px;
	text-align: center;
}

.event-list>li>.info>.title {
	font-size: 17pt;
	font-weight: 700;
	margin: 0px;
}

.event-list>li>.info>.desc {
	font-size: 13pt;
	font-weight: 300;
	margin: 0px;
}

.event-list>li>.info>ul {
	display: table;
	list-style: none;
	margin: 10px 0px 0px;
	padding: 0px;
	width: 100%;
	text-align: center;
}

.event-list>li>.info>ul>li {
	display: table-cell;
	cursor: pointer;
	color: rgb(30, 30, 30);
	font-size: 11pt;
	font-weight: 300;
	padding: 3px 0px;
}

.event-list>li>.info>ul>li>a {
	display: block;
	width: 100%;
	color: rgb(30, 30, 30);
	text-decoration: none;
}

.event-list>li>.social>ul>li {
	padding: 0px;
}

.event-list>li>.social>ul>li>a {
	padding: 3px 0px;
}

.event-list>li>.info>ul>li:hover, .event-list>li>.social>ul>li:hover {
	color: rgb(30, 30, 30);
	background-color: rgb(200, 200, 200);
}

@media ( min-width : 768px) {
	.event-list>li {
		position: relative;
		display: block;
		width: 100%;
/* 		height: 120px; */
		padding: 0px;
	}
	.event-list>li>.info {
		background-color: rgb(245, 245, 245);
		overflow: hidden;
	}
	.event-list>li>.info {
		position: relative;
		height: 120px;
		text-align: left;
		padding-right: 40px;
	}
	.event-list>li>.info>.title, .event-list>li>.info>.desc {
		padding: 0px 10px;
	}
	.event-list>li>.info>ul {
		position: absolute;
		left: 0px;
		bottom: 0px;
	}
}
</style>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<c:if test="${showmess}">
				<div class="alert alert-primary">
					<strong>Success!</strong>${dispmsg}
				</div>
			</c:if>
			<ul class="event-list">
				<c:forEach items="${sellerlist}" var="f">
					<li>
						<div class="info">
							<h2 class="title">${f.sellername}</h2>
							<p class="desc">${f.sellerlocation}</p>
							<ul>
								<li style="width: 50%;"><a href="${cr}/admin/editseller?selid=${f.sellerid}"><span
										class="fa fa-edit"></span> Edit</a></li>
								<li style="width: 50%;"><a
									href="${cr}/admin/deleteseller?selid=${f.sellerid}"><span
										class="fa fa-trash"></span> Delete</a></li>
							</ul>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
		</div>
		</div>
