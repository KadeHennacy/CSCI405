<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
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
                    <a class="nav-link text-white" href="<%=request.getContextPath()%>/shop">Shop</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="<%=request.getContextPath()%>/about">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="<%=request.getContextPath()%>/login">Login/Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="<%=request.getContextPath()%>/cart">Shopping Cart</a>
                </li>
            </ul>
        </div>
    </nav>
	<h1 class="display-4">Welcome <%=request.getParameter("emailId") %></h1>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>
</html>