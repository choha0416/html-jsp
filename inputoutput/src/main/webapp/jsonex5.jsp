<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
 <c:set var="contextPath" value="${pageContext.request.contextPath}"  /> 
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
$(function(){
	$("#checkJson").click(function() {
		 var _jsonInfo ='{"name":"박지성","age":"25","gender":"남자","nickname":"날센돌이"}';
		 $.ajax({
		 type:"post",
		 async:false, 
		 url:"${contextPath}/json",
		 data : {jsonInfo: _jsonInfo},
		 success:function (data,textStatus){
		 },
		 error:function(data,textStatus){
		 alert("에러가 발생했습니다.");ㅣ
		},
		 complete:function(data,textStatus){
		 }
		 }); 
	});
});
</script>
</head>
<body>
	<a id="checkJson" style="cursor:pointer">전송</a><br><br>
	<div id="output"></div>
</body>
</html>