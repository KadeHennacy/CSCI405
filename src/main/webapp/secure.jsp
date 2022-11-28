<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Videos</title>
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
	%>


	<h1>Secure welcome page</h1>
	Welcome ${username}
	<br />
	<a href="login">Login</a>
	<br>
	<a href="public.jsp">Public</a>
	<br>
	<a href="/405GP/">Home</a>
	<br>
	<c:if test="${sessionScope.username != null }">
		<form action="logout">
			<input type="submit" value="logout" />
		</form>
	</c:if> 
</body>
</html>