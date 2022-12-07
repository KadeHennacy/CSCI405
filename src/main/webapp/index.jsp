<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Knobs & Knockers</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous"
>
<link rel="stylesheet" href="styles.css">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark text-white bg-secondary shadow pt-3 pb-3">
		<a class="navbar-brand ms-3" href="<%=request.getContextPath()%>/index.jsp" id="logo">Knobs &
			<br>Knockers
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
			aria-expanded="false" aria-label="Toggle navigation"
		>
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse p-3" id="navbarSupportedContent">
			<div class="mx-auto"></div>
			<ul class="navbar-nav">
				<li class="nav-item">
					<form class="d-flex me-3" role="search" action="/points" method="post"
						onsubmit="return submitForm()"
					>
						<c:if test="${codeInvalid != null}">
							<c:out value="${codeInvalid}" />
						</c:if>
						<c:if test='${points != null}'>
							<c:if test="${points > 0}">
								Points = <c:out value="${points}" />
							</c:if>
						</c:if>
						<input class="form-control me-2" type="text" placeholder="Enter Code"
							aria-label="Search" name="code" id="code"
						>
						<button class="btn btn-success" type="submit">Search</button>
					</form>
				</li>

				<li class="nav-item"><a class="nav-link text-white" href="<%=request.getContextPath()%>/">Shop</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="<%=request.getContextPath()%>/about"
				>About</a></li>
				<li class="nav-item"><c:choose>
						<c:when test='${emailId == null}'>
							<a class="nav-link text-white" href="<%=request.getContextPath()%>/login">Login/register</a>
						</c:when>
						<c:when test='${emailId ==
							"admin@knobsandknockers.com"}'>
							<a href="<%=request.getContextPath()%>/account" class="nav-link text-white"><c:out
									value='${emailId}'
								></c:out></a>
							<a href="<%=request.getContextPath()%>/views/admin.jsp" class="nav-link text-white d-inline">Admin
								Page</a>
							<a href="<%=request.getContextPath()%>/logout" class="nav-link text-white d-inline">logout</a>
						</c:when>
						<c:otherwise>
							<a href="<%=request.getContextPath()%>/account" class="nav-link text-white"><c:out
									value='${emailId}'
								></c:out></a>
							<a href="<%=request.getContextPath()%>/logout" class="nav-link text-white">logout</a>
						</c:otherwise>
					</c:choose></li>

				<li class="nav-item"><a class="nav-link text-white"
					href="<%=request.getContextPath()%>/cart"
				>Shopping Cart</a></li>
			</ul>
		</div>
	</nav>

	<div class="container my-5">
		<div class="row">
			<h1 class="display-4 mb-4 text-center">Featured Knobs</h1>
			<div class="col d-flex justify-content-center m-4">
				<div class="card px-5 py-3" style="width: 24rem;">
					<strong class="text-danger mx-auto">Hot new item!</strong>
					<div class="productImg mx-auto">
						<img src="images\crystalKnob.webp" class="card-img-top" alt="...">
					</div>
					<div class="card-body mx-auto">
						<h5 class="card-title multiTruncate">
							<a
								href="<%=request.getContextPath()%>/product?product_id=1&productName=Baldwin%20Crystal%20Passage%20Door%20Knob%20with%20Round%20Rose&price=120.25&priceWas=220&image=crystalKnob.webp"
							>Baldwin Crystal Passage Door Knob with Round Rose</a>
						</h5>
						<p class="card-text mb-0">$120.25</p>
						<p class="text-secondary priceWas mb-0">$220</p>
						<strong class="d-block">FREE SHIPPING</strong> <a class="d-block"
							href="<%=request.getContextPath()%>/product?product_id=1&productName=Baldwin%20Crystal%20Passage%20Door%20Knob%20with%20Round%20Rose&price=120.25&priceWas=220&image=crystalKnob.webp#reviews"
						>Reviews (0)</a> <a href="#" class="btn btn-primary mt-2">Add to cart</a>
					</div>
				</div>
			</div>

			<div class="col d-flex justify-content-center m-4">
				<div class="card px-5 py-3" style="width: 24rem;">
					<strong class="text-success mx-auto">Save 57%</strong>
					<div class="productImg mx-auto">
						<img src="images\mushroomKnob.webp" class="card-img-top" alt="...">
					</div>
					<div class="card-body mx-auto">
						<h5 class="card-title multiTruncate">
							<a
								href="<%=request.getContextPath()%>/product?product_id=2&productName=Omnia%20Mushroom%20Knob%20Copper&price=25&priceWas=39.25&image=mushroomKnob.webp"
							>Omnia Mushroom Knob Copper</a>
						</h5>
						<p class="card-text mb-0">$25</p>
						<p class="text-secondary priceWas mb-0">$39.25</p>
						<strong class="d-block">FREE SHIPPING</strong> <a class="d-block"
							href="<%=request.getContextPath()%>/product?product_id=2&productName=Omnia%20Mushroom%20Knob%20Copper&price=25&priceWas=39.25&image=mushroomKnob.webp#reviews"
						>Reviews (0)</a> <a href="#" class="btn btn-primary mt-2">Add to cart</a>
					</div>
				</div>
			</div>
			<div class="col d-flex justify-content-center m-4">
				<div class="card px-5 py-3" style="width: 24rem;">
					<strong class="text-success mx-auto"></strong>
					<div class="productImg mx-auto">
						<img src="images\silverKnob.jpg" class="card-img-top" alt="...">
					</div>
					<div class="card-body mx-auto">
						<a
							href="<%=request.getContextPath()%>/product?product_id=3&price=39.00&priceWas=60.00&image=silverKnob.jpg&productName=Beax%20Arts%20Door%20Knob"
						><h5 class="card-title multiTruncate">Beax Arts Door Knob</h5></a>
						<p class="card-text mb-0">$39.00</p>
						<p class="text-secondary priceWas mb-0">$60.00</p>
						<strong class="d-block">FREE SHIPPING</strong> <a class="d-block"
							href="<%=request.getContextPath()%>/product?product_id=3&price=39.00&priceWas=60.00&image=silverKnob.jpg&productName=Beax%20Arts%20Door%20Knob#reviews"
						>Reviews (0)</a> <a href="#" class="btn btn-primary mt-2">Add to cart</a>
					</div>
				</div>
			</div>
			<div class="col d-flex justify-content-center m-4">
				<div class="card px-5 py-3" style="width: 24rem;">
					<strong class="text-success mx-auto"></strong>
					<div class="productImg mx-auto">
						<img src="images\mattKnob.webp" class="card-img-top" alt="..."">
					</div>
					<div class="card-body mx-auto">
						<a
							href="<%=request.getContextPath()%>/product?product_id=4&price=27.97&priceWas=55&image=mattKnob.webp&productName=Andover%20Passage%20Door%20Knob%20Set"
						><h5 class="card-title multiTruncate">Andover Passage Door Knob Set</h5></a>
						<p class="card-text mb-0">$27.97</p>
						<p class="text-secondary priceWas mb-0">$55.00</p>
						<strong class="d-block">FREE SHIPPING</strong> <a class="d-block"
							href="<%=request.getContextPath()%>/product?product_id=4&price=27.97&priceWas=55&image=mattKnob.webp&productName=Andover%20Passage%20Door%20Knob%20Set#reviews"
						>Reviews (0)</a> <a href="#" class="btn btn-primary mt-2">Add to cart</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"
	></script>
	<script src="script.js"></script>
</body>

</html>