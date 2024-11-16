<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="${pageContext.servletContext.contextPath}/assets/css/style.css"
	rel="stylesheet">
</head>
<body>
	<h1>user form</h1>
	<c:out value="hello world"></c:out>
	<%="<br>"%>
	<c:set scope="application" var="data" value="${4*4000} "></c:set>
	<c:out value="data"></c:out>
	<%!String name = "djflksa";%>
	<%
	out.print(name);
	%>
	<a href="/jspTutorial/view/home.jsp">home</a>
	<jsp:include page="/view/footer.html"></jsp:include>

</body>
</html>