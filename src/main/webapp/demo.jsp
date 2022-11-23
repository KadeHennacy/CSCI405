<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<sql:setDataSource var="db" driver="org.postgresql.Driver"
		url="jdbc:postgresql://localhost:5432/gp405" user="knob"
		password="badpassword" />
	<sql:query var="rs" dataSource="${db}">select * from student;</sql:query>
	<c:forEach items="${rs.rows}" var="student">
		<c:out value="${student.name} "></c:out>
		<c:out value="${student.marks}"></c:out><br/>
	</c:forEach>
</body>
</html>