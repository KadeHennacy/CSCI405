<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Knobs And Knockers</title>
</head>
<body>

	<h1>Knobs and Knockers</h1>
	<a href="login">Login</a><br>	
	<a href="public.jsp">Public</a><br>	
	<a href="secure.jsp">Secure</a><br>	
	<c:if test="${sessionScope.username != null }">
		<form action="logout">
			<input type="submit" value="logout" />
		</form>
	</c:if>
</body>
</html>