<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>All users</h1>
	<a href="${pageContext.servletContext.contextPath}/view/home.jsp">home</a>
	<jsp:include page="userTable.jsp"></jsp:include>
</body>
</html>