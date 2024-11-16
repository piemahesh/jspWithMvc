<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="${pageContext.servletContext.contextPath}/assets/css/style.css"
	rel="stylesheet">
</head>
<title>Insert title here</title>
</head>
<body>
	<table  border="1" style="border-collapse: collapse; width: 100%; max-width: 700px;margin: auto;">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Age</th>
			</tr>
		</thead>
		<tbody>
			<%
			ResultSet rs = (ResultSet) request.getAttribute("resultSet");
			if (rs != null) {
				try {
					while (rs.next()) {
				out.print("<tr>");
				out.print("<td>" + rs.getInt("id") + "</td>");
				out.print("<td>" + rs.getString("username") + "</td>");
				out.print("<td>" + rs.getString("password") + "</td>");
				out.print("<td>" + rs.getString("age") + "</td>");
				out.print("</tr>");
					}
				} catch (Exception e) {
					out.print("<tr><td colspan='3' style='color: red;'>Error processing data</td></tr>");
				}
			} else {
				out.print("<tr><td colspan='3'>No data available</td></tr>");
			}
			%>
		</tbody>
	</table>

</body>
</html>