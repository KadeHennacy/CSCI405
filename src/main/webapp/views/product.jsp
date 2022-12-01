<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Welcome</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous"
>
<link rel="stylesheet" href="../styles.css">
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
					<form class="d-flex me-3" role="search">
						<input class="form-control me-2" type="search" placeholder="Search Products"
							aria-label="Search"
						>
						<button class="btn btn-success" type="submit">Search</button>
					</form>
				</li>

				<li class="nav-item"><a class="nav-link text-white"
					href="<%=request.getContextPath()%>/shop"
				>Shop</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="<%=request.getContextPath()%>/about"
				>About</a></li>
				<li class="nav-item"><c:choose>
						<c:when test='${emailId == null}'>
							<a class="nav-link text-white" href="<%=request.getContextPath()%>/login">Login/register</a>
						</c:when>
						<c:when test='${emailId ==
							"admin@knobsandknockers.com"}'>
							<a href="<%=request.getContextPath()%>/account" class="nav-link text-white"> <c:out
									value='${emailId}'
								></c:out>
							</a>
							<a href="<%=request.getContextPath()%>/views/admin.jsp" class="nav-link text-white d-inline">Admin
								Page</a>
							<a href="<%=request.getContextPath()%>/logout" class="nav-link text-white d-inline">logout</a>
						</c:when>
						<c:otherwise>
							<a href="<%=request.getContextPath()%>/account" class="nav-link text-white"> <c:out
									value='${emailId}'
								></c:out>
							</a>
							<a href="<%=request.getContextPath()%>/logout" class="nav-link text-white">logout</a>
						</c:otherwise>
					</c:choose></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="<%=request.getContextPath()%>/cart"
				>Shopping Cart</a></li>
			</ul>
		</div>
	</nav>
	<div class="col d-flex justify-content-center m-4">
		<div class="card px-5 py-3" style="width: 24rem;">
			<strong class="text-danger mx-auto">Hot new item!</strong>
			<div class="productImg mx-auto">
				<img src="<c:url value=" images/${param.image}" />" class="card-img-top"
					alt="
                                <c:url value="images/${param.image}" />"
				/>
			</div>
			<div class="card-body mx-auto">
				<h5 class="card-title multiTruncate">
					<c:out value="${param.productName}" />
				</h5>
				<p class="card-text mb-0">
					$
					<c:out value="${param.price}" />
				</p>
				<p class="text-secondary priceWas mb-0">
					$
					<c:out value="${param.priceWas}" />
				</p>
				<strong class="d-block">FREE SHIPPING</strong> <a class="d-block"
					href="<%=request.getContextPath()%>#reviews"
				>Reviews (0)</a> <a href="#" class="btn btn-primary mt-2">Add to cart</a>
			</div>
		</div>
	</div>
	<sql:setDataSource var="db" driver="org.postgresql.Driver"
		url="jdbc:postgresql://localhost:5432/gp405" user="knob" password="badpassword"
	/>
	<sql:query dataSource="${db}" var="rs">
                        SELECT * FROM review WHERE product_id =
                        <c:out value="${param.product_id}" />;
                    </sql:query>
	<div class="container my-5 py-5">
		<div class="row d-flex justify-content-center">
			<div class="col-md-12 col-lg-10">
				<div class="card text-dark">
					<div class="card-body p-4">
						<h4 class="mb-0">Reviews</h4>
						<br>
						<div class="d-flex flex-start">
							<div>
								<h6 class="fw-bold mb-1">${rs.rows[0].email_id}</h6>
								<c:forEach begin="1" end="${rs.rows[0].stars}" var="val">
									<c:out value="☆" />
								</c:forEach>
								<div class="d-flex align-items-center mb-3">
									<a href="#!" class="link-muted"><i class="fas fa-pencil-alt ms-2"></i></a> <a href="#!"
										class="link-muted"
									><i class="fas fa-redo-alt ms-2"></i></a> <a href="#!" class="link-muted"><i
										class="fas fa-heart ms-2"
									></i></a>
								</div>
								<p class="mb-0">${rs.rows[0].review_text}</p>
							</div>
						</div>
					</div>



					<hr class="my-0" />

					<c:forEach var="row" items="${rs.rows}">
						<c:choose>
							<c:when test="${row.review_id == rs.rows[0].review_id}">
							</c:when>
							<c:otherwise>
								<div class="card-body p-4">
									<div class="d-flex flex-start">
										<div>
											<h6 class="fw-bold mb-1">${row.email_id}</h6>
											<c:forEach begin="1" end="${row.stars}" var="val">
												<c:out value="☆" />
											</c:forEach>
											<div class="d-flex align-items-center mb-3"></div>
											<p class="mb-0">${row.review_text}</p>
										</div>
									</div>
								</div>
								<hr class="my-0" />
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<div class="card-body p-4">

						<c:choose>
							<c:when test='${emailId == null}'>
								<a class="btn btn-primary" href="<%=request.getContextPath()%>/login">Login/register</a>
							</c:when>
							<c:otherwise>
								<!-- 								Directing the form to a blank iframe prevents page refresh -->
								<iframe name="dummy" style="display: none;"></iframe>
								<form action="/product?<%=request.getQueryString()%>" method="post" id="reviewForm"
									id="reviewForm"
								>
									<div class="form-group mb-2">
										<label for="reviewText" class="fw-bold mb-2">Leave a review</label>
										<textarea name="reviewText" form="reviewForm" class="form-control" id="reviewText"
											rows="3" required
										></textarea>
									</div>
									<div class="form-group mb-2">
										<!--Code for star rating input is from https://stackoverflow.com/questions/8118266/integrating-css-star-rating-into-an-html-form -->
										<div class="rating">
											<input id="star5" name="star" type="radio" value="5" class="radio-btn hide" required />
											<label for="star5">☆</label> <input id="star4" name="star" type="radio" value="4"
												class="radio-btn hide" required
											/> <label for="star4">☆</label> <input id="star3" name="star" type="radio" value="3"
												class="radio-btn hide" required
											/> <label for="star3">☆</label> <input id="star2" name="star" type="radio" value="2"
												class="radio-btn hide" required
											/> <label for="star2">☆</label> <input id="star1" name="star" type="radio" value="1"
												class="radio-btn hide" required
											/> <label for="star1">☆</label>
											<div class="clear"></div>
											<script>
												
											</script>
										</div>
									</div>
									<!-- 									add additional metadata to the request -->
									<input type="hidden" value="${emailId}" name="email_id" /> <input type="hidden"
										value="${param.product_id}" name="product_id"
									/>
									<button type="submit" id="submitReview" class="btn btn-primary d-block"
										onclick="return checkStars()"
									>Submit</button>
								</form>
							</c:otherwise>
						</c:choose>
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