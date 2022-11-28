<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<form action="login" method="post">
		Username: <input type="text" name="username" /><br> Password: <input
			type="password" name="password" /> <input type="submit" />
	</form>
	
	<c:out value="${msg}"></c:out><br>
	
	<a href="public.jsp">Public</a>
	<br>
	<a href="secure.jsp">Secure</a>
	<br>
	<a href="/405GP/">Home</a>
	<br>
</body>
</html>