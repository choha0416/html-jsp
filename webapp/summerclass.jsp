<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String subj=request.getParameter("subj");
	String uname=request.getParameter("uname");
	String uid=request.getParameter("uid");
	String book=request.getParameter("book");
	String wsheet=request.getParameter("wsheet");
	String group=request.getParameter("group");
	String[] uclasss=request.getParameterValues("uclass");
%>
<body>
	<fieldset>
		<legend>등록 정보</legend>
		<h3>영어회화 : <%= subj %></h3>
		<h3>이름 : <%= uname %></h3>
		<h3>학번 : <%= uid %></h3>
		<%	 for(int i=0;i<uclasss.length;i++) {
		if(uclasss[i]!=null) {%>
			<h3>학과 : <%= uclasss[i]%></h3>
		<%}
	} 
%>
		<h3>교재 : <%= book %></h3>
		<h3>워크시트 : <%= wsheet %></h3>
		<h3>단체주문 : <%= group %></h3>
		

		
		
		

	</fieldset>
</body>
</html>