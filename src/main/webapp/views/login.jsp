<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<html>
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			<title>Login</title>
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
			<link rel="stylesheet" href="<%=request.getContextPath()%>/styles.css">
		
			<!-- copied from https://www.geeksforgeeks.org/servlet-login-form/ -->
		
			<script type="text/javascript">
				function ValidateEmail(emailId) {
					var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
					if (emailId.value.match(mailformat)) {
						document.getElementById('password').focus();
						return true;
					}
					else {
						alert("You have entered an invalid email address!");
						document.getElementById('emailId').focus();
						return false;
					}
				}
			</script>
		
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
		
			<!-- We should have a servlet in order to process the form in
				server side and proceed further -->
			<form action="login" method="post" onsubmit="ValidateEmail(document.getElementById('emailId'))">
				<div class="container bg-light my-4 p-4 rounded">
					<label class="form-label" for="username"><b>Email</b></label>
					<input class="form-control" type="text" placeholder="Please enter your email" name="emailId" id="emailId"
						required>
		
					<label class="form-label" for="password"><b>Password</b></label>
					<input class="form-control mb-3" type="password" placeholder="Please enter Password" name="password"
						id="password" required>
		
					<button type="submit" class="btn btn-primary mb-3">Login</button>
					<div class="form-check mb-3">
						<input class="form-check-input" type="checkbox" checked="checked" name="rememberme" id="rememberme">
						<label for="rememberme" class="form-check-label">Remember me</label>
					</div>
					<button type="button" class="btn btn-secondary me-3"
						onclick="location.href=<%=request.getContextPath()%>">Cancel</button><a
						href="<%=request.getContextPath()%>/forgotpassword.jsp">Forgot password?</a>
				</div>
			</form>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
				crossorigin="anonymous"></script>
		</body>
		
		</html>