<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>This data was retreived from an SQL database:</h1>
	<%
	Class.forName("org.postgresql.Driver");
	String url = "jdbc:postgresql://localhost:5432/gp405";
	String username = "knob";
	String password = "badpassword";
	
	String sql = "SELECT * FROM STUDENT WHERE id=103";
	
	Connection con = DriverManager.getConnection(url, username, password);
	
	Statement st = con.createStatement();
			
	ResultSet rs = st.executeQuery(sql);
	
	rs.next();
	
	%>
	Rollno : <%= rs.getString(1) %><br>
	Name : <%= rs.getString(2) %><br>
	Marks : <%= rs.getString(3) %>
	
</body>
</html>