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
	String start1=request.getParameter("start1");
	String start2=request.getParameter("start2");
	String end1=request.getParameter("end1");
	String end2=request.getParameter("end2");
	String ht=request.getParameter("ht");
%>

	<fieldset>
		<legend>오늘 숙박 정보</legend>
		<h3> 고객님 저희 <%= ht %>  호텔을 이용해 주셔서 감사합니다</h3>
		<h3> 오늘 예약하신 날짜가${start1 } 에서 ${end1 }입니다</h3>
		<h3>문의 내역이 있으시면 <%= ht %>으로 전화주세요.</h3>
	</fieldset>
	
	<fieldset>
		<legend>다른날짜 숙박 정보</legend>
		<h3> 고객님 저희 <%= ht %>  호텔을 이용해 주셔서 감사합니다</h3>
		<h3> 다른날 예약하신 날짜가${start2 } 에서 ${end2 }입니다</h3>
		<h3>문의 내역이 있으시면 <%= ht %>으로 전화주세요.</h3>
	</fieldset>
</body>
</html>