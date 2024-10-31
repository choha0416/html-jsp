<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>웹 폼</title>
	<style>
		ul {
			list-style:none;
		}
		li {
			margin:10px;
		}
		li label {
			width:120px;
			float:left;
			text-align:right;
			padding-right:8px;
		}
		input[type="submit"]{
			text-algin:center;
			width:100%;
			height:30px;
			margin-top:15px;
		}
	</style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String user_id=request.getParameter("user_id");
	String user_pw=request.getParameter("user_pw");
	String user_pw2=request.getParameter("user_pw2");
	String user_name=request.getParameter("user_name");
	String mail=request.getParameter("mail");
	String phone=request.getParameter("phone");
	String homep=request.getParameter("homep");
	
	if(user_pw.equals(user_pw2)){%>
	
	<fieldset>
		<legend>로그인 정보</legend>
		<h3>아이디 : <%=user_id %></h3>
		<h3>비밀번호 : <%=user_pw %></h3>
		<h3>비밀번호 확인 : <%=user_pw2 %></h3>
		<h3>이름 : <%=user_name %></h3>
		<h3>메일 : <%=mail %></h3>
		<h3>연락처 : <%=phone %></h3>
		<h3>블로그/홈페이지 : <%=homep %></h3>
	</fieldset>

<%}else{%>
		<h1>비밀번호가 일치하지 않습니다 다시 입력해주세요</h1>
		<h2>회원 가입</h2>
	<form method="post" action="Mission" encType="utf-8">
		<fieldset>
			<legend>로그인 정보</legend>
				<ul>
					<li>
						<label for="user_id">아이디 </label>
						<input type="text" id="user_id" name="user_id">
					</li>
					<li>
						<label for="user_pw">비밀번호 </label>
						<input type="password" id="user_pw" name="user_pw">
					</li>
					<li>
						<label for="user_pw2">비밀번호 확인 </label>
						<input type="password" id="user_pw2" name="user_pw2">
					</li>
				</ul>
		</fieldset>
		<fieldset>
			<legend>개인 정보</legend>
				<ul>
					<li>
						<label for="user_name">이름 </label>
						<input type="text" id="user_name" name="user_name">
					</li>
					<li>
						<label for="mail">메일 주소 </label>
						<input type="email" id="mail" name="mail">
					</li>
					<li>
						<label for="phone">연락처 </label>
						<input type="tel" id="phone" name="phone">
					</li>
					<li>
						<label for="homep">블로그/홈페이지 </label>
						<input type="url" id="homep" name="homep">
					</li>
				</ul>
		</fieldset>
		<input type="submit" value="가입하기">
	</form>
<%}%>
</body>
</html>
