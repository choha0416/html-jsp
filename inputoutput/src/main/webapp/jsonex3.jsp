<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
$(function(){
	$("#checkJson").click(function(){
		var jsonStr = '{"name":"박지성", "age":25,"gender":"남자","nickname":"날쌘돌이"}'; 
		var jsonObj = JSON.parse(jsonStr);
		var output ="회원 나이<br>";
		output += "=======<br>";
		output += "이름 :" +jsonObj.name+"<br>";
		output += "나이 :" +jsonObj.age+"<br>";
		output += "성별 :" +jsonObj.gender+"<br>";
		output += "별명 :" +jsonObj.nickname+"<br>";
		$("#output").html(output);
	});
});
</script>
</head>
<body>
	<a id="checkJson" style="cursor:pointer">출력</a><br><br>
	<div id="output"></div>
</body>
</html>