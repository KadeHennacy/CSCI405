<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About</title>
</head>
<body>
	<h1>About</h1>
	<p>This page is available to everyone including unauthenticated people</p>
	<a href="login">Login</a><br>	
	<a href="secure.jsp">Secure</a><br>	
	<a href="/405GP/">Home</a><br>
	<c:if test="${sessionScope.username != null }">
		<form action="logout">
			<input type="submit" value="logout" />
		</form>
	</c:if>
</body>
</html>