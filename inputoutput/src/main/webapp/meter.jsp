<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
	<style>
	@import url('https://fontsgoogleapis.com/css2?family=Noto+Serif+KR&display=swap');
		body {
			background-color:#ffe;
		}
		ul li {
			font-family:'Noto serif KR', serif;
			list-style:none;
			margin:15px 0;
			font-size:14px;
		}
	</style>
	<%
	request.setCharacterEncoding("utf-8");
	String user_top=request.getParameter("top");
	String user_pants=request.getParameter("pants");
	String user_shoes=request.getParameter("shoes");
	%>
</head>
<body>
	<form>
		<fieldset id="subject">
			<legend>쇼핑몰 판매량</legend>
			<ul>
				<li>
					<label>상의 </label>
					<meter value=<%=user_top %>></meter>
				</li>
				<li>
					<label>하의 </label>
					<meter min="0" max="100" value=<%=user_pants %>></meter>
				</li>
				<li>
					<label>신발 </label>
					<meter min="0" max="600" low="0" high="500" value=<%=user_shoes %>></meter>
				</li>
			</ul>
		</fieldset>
	</form>
</body>
</html>