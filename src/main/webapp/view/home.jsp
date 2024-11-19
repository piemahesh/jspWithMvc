<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.servletContext.contextPath}/assets/css/style.css">
</head>
<body>
	<h1 id="heading">it is home page</h1>

	<p>"${pageContext.request.servletContext.contextPath }"</p>
	"${pageContext.request.servletContext.contextPath}"

	<div class="coverImg">
		<img alt="nature image"
			src="${pageContext.request.servletContext.contextPath}/assets/images/bg.jpg">
	</div>

	<form action="/jspTutorial/user" method="post">
		<input name="username" type="text" placeholder="enter name"> <input
			name="password" type="password" placeholder="enter password">
		<input name="age" type="number" min="0" max="100"
			placeholder="enter age">
		<button type="submit">submit</button>
	</form>

	<%
	List<Integer> list = new ArrayList<Integer>();
	list.add(10);
	list.add(15);
	String sName = "santhakumar";
	request.setAttribute("names", list);
	request.setAttribute("sname", sName);
	out.print(request.getServletContext().getContextPath());
	request.getParameter("name");
	for (Integer i : list) {
		out.print(i);
		out.print("<br>");
		out.print(request.getAttribute("sname"));
		out.print("<h1> hello world </h1>");
		out.print("<h1> sadfasdfasd </h1>");
	}
	%>
	<footer>
		<jsp:include page="footer.html"></jsp:include>
	</footer>
	<script type="text/javascript"
		src="${pageContext.request.servletContext.contextPath}/assets/js/script.js"></script>
</body>
</html>