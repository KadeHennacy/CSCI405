<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Knobs & Knockers</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark text-white bg-secondary shadow pt-3 pb-3">
        <a class="navbar-brand ms-3" href="<%=request.getContextPath()%>/index.jsp" id="logo">Knobs & <br>Knockers</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse p-3" id="navbarSupportedContent">
            <div class="mx-auto">

            </div>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <form class="d-flex me-3" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search Products"
                            aria-label="Search">
                        <button class="btn btn-success" type="submit">Search</button>
                    </form>
                </li>

                <li class="nav-item">
                    <a class="nav-link text-white" href="<%=request.getContextPath()%>/">Shop</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="<%=request.getContextPath()%>/about">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="<%=request.getContextPath()%>/login">
                    <% if(request.getSession().getAttribute("isLoggedIn") == null || request.getSession().getAttribute("emailId") == null){ %>
                    Login/Register
                    <%} else{ %>
                    <%=("Welcome " + request.getSession().getAttribute("emailId")) %>
                     <a class="d-inline" href="<%=request.getContextPath()%>/logout">(logout)</a>
                    <%} %>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="<%=request.getContextPath()%>/cart">Shopping Cart</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container my-5">
        <div class="row">
            <h1 class="display-4 mb-4 text-center">Featured Knobs</h1>
            <div class="col d-flex justify-content-center m-4">
                <div class="card px-5 py-3" style="width: 24rem;">
                    <strong class="text-danger mx-auto">Hot new item!</strong>
                    <div class="productImg mx-auto"><img src="images\crystalKnob.webp" class="card-img-top" alt="...""></div>
                    <div class="card-body mx-auto">
                        <h5 class="card-title multiTruncate">Baldwin Crystal Passage Door Knob with Round Rose</h5>
                        <p class="card-text mb-0">$120.25</p>
                        <p class="text-secondary priceWas mb-0">$220</p>
                        <strong class="d-block">FREE SHIPPING</strong>
                        <a class="d-block" href="">Reviews (0)</a>
                        <a href="#" class="btn btn-primary mt-2">Add to cart</a>
                    </div>
                </div>
            </div>
            <div class="col d-flex justify-content-center m-4">
                <div class="card px-5 py-3" style="width: 24rem;">
                    <strong class="text-success mx-auto">Save 57%</strong>
                    <div class="productImg mx-auto"><img src="images\mushroomKnob.webp" class="card-img-top" alt="...""></div>
                    <div class="card-body mx-auto">
                        <h5 class="card-title multiTruncate">Omnia Mushroom Knob Copper</h5>
                        <p class="card-text mb-0">$25</p>
                        <p class="text-secondary priceWas mb-0">$39.25</p>
                        <strong class="d-block">FREE SHIPPING</strong>
                        <a class="d-block" href="">Reviews (0)</a>
                        <a href="#" class="btn btn-primary mt-2">Add to cart</a>
                    </div>
                </div>
            </div>
            <div class="col d-flex justify-content-center m-4">
                <div class="card px-5 py-3" style="width: 24rem;">
                    <strong class="text-success mx-auto"></strong>
                    <div class="productImg mx-auto"><img src="images\silverKnob.jpg" class="card-img-top" alt="...""></div>
                    <div class="card-body mx-auto">
                        <h5 class="card-title multiTruncate">Beax Arts Door Knob</h5>
                        <p class="card-text mb-0">$39.00</p>
                        <p class="text-secondary priceWas mb-0">$60.00</p>
                        <strong class="d-block">FREE SHIPPING</strong>
                        <a class="d-block" href="">Reviews (0)</a>
                        <a href="#" class="btn btn-primary mt-2">Add to cart</a>
                    </div>
                </div>
            </div>
            <div class="col d-flex justify-content-center m-4">
                <div class="card px-5 py-3" style="width: 24rem;">
                    <strong class="text-success mx-auto"></strong>
                    <div class="productImg mx-auto"><img src="images\mattKnob.webp" class="card-img-top" alt="...""></div>
                    <div class="card-body mx-auto">
                        <h5 class="card-title multiTruncate">Andover Passage Door Knob Set</h5>
                        <p class="card-text mb-0">$27.97</p>
                        <p class="text-secondary priceWas mb-0">$55.00</p>
                        <strong class="d-block">FREE SHIPPING</strong>
                        <a class="d-block" href="">Reviews (0)</a>
                        <a href="#" class="btn btn-primary mt-2">Add to cart</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- <div class="row">
            <h1 class="display-4 my-4 text-center">Bestselling Knockers</h1>
        </div> -->
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>

</html>