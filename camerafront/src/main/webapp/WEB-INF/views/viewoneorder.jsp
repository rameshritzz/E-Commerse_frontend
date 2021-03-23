<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cr" value="${pageContext.request.contextPath}" />
<style>
#inventory-invoice {
	padding: 30px;
}

#inventory-invoice a {
	text-decoration: none ! important;
}

#my_centered_buttons {
	display: flex;
	justify-content: center;
	color: #DAF7A6;
}

.invoice {
	position: relative;
	background-color: #FFF;
	min-height: 680px;
	padding: 15px
}

.invoice header {
	padding: 10px 0;
	margin-bottom: 20px;
	border-bottom: 1px solid #3989c6
}

.invoice .company-details {
	text-align: right
}

.invoice .company-details .name {
	margin-top: 5%;
	margin-bottom: 0
}

.invoice .contacts {
	margin-bottom: 20px
}

.invoice .invoice-to {
	text-align: left
}

.invoice .invoice-to .to {
	margin-top: 0;
	margin-bottom: 0
}

.invoice .invoice-details {
	text-align: right
}

.invoice .invoice-details .invoice-id {
	margin-top: 0;
	color: #3989c6
}

.invoice main {
	padding-bottom: 50px
}

.invoice main .thanks {
	margin-top: -100px;
	font-size: 2em;
	margin-bottom: 50px
}

.invoice main .notices {
	padding-left: 6px;
	border-left: 6px solid #3989c6
}

.invoice main .notices .notice {
	font-size: 1.2em
}

.invoice table {
	width: 100%;
	border-collapse: collapse;
	border-spacing: 0;
	margin-bottom: 20px
}

.button {
	position: relative;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background: #DAF7A6;
	padding: 1em 2em;
	border: none;
	color: #3989c6;
	font-size: 1.2em;
	cursor: pointer;
	outline: none;
	overflow: hidden;
	border-radius: 100px;
	margin-left: 800px;
}

.invoice table td, .invoice table th {
	padding: 15px;
	background: #eee;
	border-bottom: 1px solid #fff
}

.invoice table th {
	white-space: nowrap;
	font-weight: 400;
	font-size: 16px;
	border: 1px solid #fff;
}

.invoice table td {
	border: 1px solid #fff;
}

.invoice table td h3 {
	margin: 0;
	font-weight: 400;
	color: #3989c6;
	font-size: 1.2em
}

.invoice table .tax, .invoice table .total, .invoice table .unit {
	text-align: right;
	font-size: 1.2em
}

.invoice table .no {
	color: #fffff;
	font-size: 1.6em;
	font-weight: 600;
	background: #DAF7A6;
	font-style: bold;
}

.invoice table .unit {
	background: #ddd
}

.invoice table .total {
	background: #17a2b8;
	color: #fff
}

.invoice table tfoot td {
	background: 0 0;
	border-bottom: none;
	white-space: nowrap;
	text-align: right;
	padding: 10px 20px;
	font-size: 1.2em;
	border-top: 1px solid #aaa
}

.invoice table tfoot tr:first-child td {
	border-top: none
}

.invoice table tfoot tr:last-child td {
	color: #3989c6;
	font-size: 1.4em;
	border-top: 1px solid #3989c6
}

.invoice table tfoot tr td:first-child {
	border: none
}

.invoice footer {
	width: 100%;
	text-align: center;
	color: #777;
	border-top: 1px solid #aaa;
	padding: 8px 0
}

@media print {
	.invoice {
		font-size: 11px !important;
		overflow: hidden !important
	}
	.invoice footer {
		position: absolute;
		bottom: 10px;
		page-break-after: always
	}
	.invoice>div:last-child {
		page-break-before: always
	}
}
</style>
<div id="inventory-invoice">

	<div class="invoice overflow-auto">
		<div style="min-width: 600px">
			<header>
				<div class="row">
					<div class="col">
						<a target="_blank" href="#">
							<h1>
								<img src="${cr}/r/oimages/logo.PNG">
							</h1>
						</a>
					</div>
					<div class="col company-details">
						<h2 class="name">
							<a target="_blank" href="#">${oneorder.pro.pro_sell.sellername}
							</a>
						</h2>
					</div>
				</div>
			</header>
			<main>
			<div class="row contacts">
				<div class="col invoice-to">
					<div class="text-gray-light">INVOICE TO:</div>
					<h2 class="to">${oneorder.add.cust_name}</h2>
					<div class="address">${oneorder.add.addressline1},${oneorder.add.addressline2}</div>
					<div class="area">${oneorder.add.area}</div>
				</div>
				<div class="col invoice-details">
					<h1 class="invoice-id">INVOICENo: ${oneorder.order_id}</h1>
					<div class="date">Order Date:${oneorder.date}</div>

				</div>
			</div>
			<table border="0" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th class="text-center"><h5>SR NO.</h5></th>
						<th class="text-center"><h5>PRODUCT IMAGE</h5></th>
						<th class="text-center" colspan="2"><h5>PRODUCT NAME</h5></th>
						<th class="text-center"><h5>PRICE</h5></th>
						<th class="text-center"><h5>SHIPPING</h5></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">01</td>
						<td class="text-center"><img width="50px"
							class="group list-group-image img-fluid"
							src="${cr}/r/images/${oneorder.pro.pro_id}.jpg" alt="" /></td>
						<td class="text-center" colspan="2">${oneorder.pro.pro_name}
						</td>
						<td class="text-center">${oneorder.total}</td>
						<td class="text-center">${shipping}</td>
					</tr>

				</tbody>
				<tfoot>
					<tr>
						<td class="text-center no" colspan="4">GRAND TOTAL</td>
						<td class="text-center no" colspan="2">${total}</td>
					</tr>
				</tfoot>
			</table>


			<div></div>
		</div>

	</div>
	<a href="${cr}/user/viewmyorders"><button class="button">
			<span><h4>View Orders</h4></span>
		</button></a>
</div>

</div>