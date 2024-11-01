<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
	String subject=request.getParameter("subject");
	String[] mailings=request.getParameterValues("mailing");

	
%>
<body>
	<fieldset>
		<legend>등록 정보</legend>
		<h3>신청 과목 : <%= subject %></h3>
		
		
<%	 for(int i=0;i<mailings.length;i++) {
		if(mailings[i]!=null) {%>
			<h3>신청 주제 : <%= mailings[i]%></h3>
		<%}
	} 
%>
		
		
		

	</fieldset>
</body>
</html>


