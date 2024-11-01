<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
<%
	request.setCharacterEncoding("utf-8");
	String color=request.getParameter("color");
%>
	div {
		
		background-color: ${color};
	}
</style>

</head>
<body>
<div>
	<fieldset>
		<legend>색상 정보</legend>
		<h3>선택한 색상 : <%= color %></h3>
	</fieldset>
</div>
</body>
</html>