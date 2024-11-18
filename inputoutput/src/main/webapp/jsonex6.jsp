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
		 $.ajax({
		 type:"post",
		 async:false, 
		 url:"${contextPath}/json2",		 
		 success:function (data,textStatus){
			 var jsonInfo = JSON.parse(data);
			 var memberInfo = "회원 정보<br>";
			 memberInfo += "========<br>";
			 for(var i in jsonInfo.members) {
				 memberInfo += "이름: "+jsonInfo.members[i].name+"<br>";
				 memberInfo += "나이: "+jsonInfo.members[i].age+"<br>";
				 memberInfo += "성별: "+jsonInfo.members[i].gender+"<br>";
				 memberInfo += "별명: "+jsonInfo.members[i].nickname+"<br><br><br>";
			 }
			 var booksInfo = "<br><br><br>도서 정보<br>";
			 booksInfo += "========<br>";
			 for(var i in jsonInfo.books) {
				 booksInfo += "제목: "+jsonInfo.books[i].title+"<br>";
				 booksInfo += "저자: "+jsonInfo.books[i].writer+"<br>";
				 booksInfo += "가격: "+jsonInfo.books[i].price+"<br>";
				 booksInfo += "장르: "+jsonInfo.books[i].genre+"<br>";
				 imageURL = jsonInfo.books[i].image;
				 booksInfo +="<img src="+imageURL+" />"+"<br><br><br>";
			 }
			 $("#output").html(memberInfo+"<br>"+booksInfo);
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
	<a id="checkJson" style="cursor:pointer">데이터 수신하기</a><br><br>
	<div id="output"></div>
</body>
</html>