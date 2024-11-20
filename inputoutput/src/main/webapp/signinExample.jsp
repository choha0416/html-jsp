<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<c:set var="contextPath" value="${pageContext.request.contextPath}"  /> 
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
<link rel = "stylesheet" href ="css/stylex.css" type="text/css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
$(function(){
    // 버튼 클릭 이벤트 핸들러
    $("#checkJson").click(function() {
        var userData = {
            id: $("#id").val(),
            pw: $("#pw").val(),
            name: $("#name").val(),
            age: $("#age").val()
        };
        
        // AJAX 요청 보내기
        $.ajax({
            type: "POST",
            url: "${contextPath}/json3", 
            data: JSON.stringify(userData), // 데이터를 JSON 형태로 변환하여 전송
            success: function(data, textStatus) {
                // 성공 시 처리
                $("#message").text(data.message); // 응답 메시지를 화면에 표시
            },
            error: function(data, textStatus) { 
                alert("에러가 발생했습니다.");
            }
        });    
    });
    $("#checkid").click(function() {      
        // AJAX 요청 보내기
        $.ajax({
            type: "POST",
            url: "${contextPath}/json4", 
            dataType: 'json',  // 서버에서 JSON 응답을 받을 것
            success: function(data,textStatus) {
                // 데이터를 받아서 HTML 테이블에 표시
                var table = '<h2>사용자 목록</h2><table border="1"><tr><th>ID</th><th>PW</th><th>Name</th><th>Age</th></tr>';
                
                // JSON 데이터 반복하여 테이블에 추가
                for (var i in data) {
                    table += '<tr>';
                    table += '<td>' + data[i].id + '</td>';
                    table += '<td>' + data[i].pw + '</td>';
                    table += '<td>' + data[i].name + '</td>';
                    table += '<td>' + data[i].age + '</td>';
                    table += '</tr>';
                }
                
                table += '</table>';
                $('#userTable').html(table);  // 결과를 HTML에 표시
            },
            error: function(data,textStatus) {
                alert("에러가 발생했습니다.");
            }
        });    
    });
});
</script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<div class="container text-center">
  <div class="row">
    <div class="col">
      <div>
		<input type="button" class="btn btn-primary" value="회원가입 폼 열기">
	</div>
    </div>
    <div class="col">
       <div>
        <li><input type="button" id="checkid" value="개인정보 확인"/></li>
    </div>          

    <div id="userTable"></div>
    </div>
    <div class="col">
      Column
    </div>
  </div>
</div>






	
    <div>
        <li>id<input type="text" id="id"></li>
        <li>pw<input type="password" id="pw"></li>
        <li>name<input type="text" id="name"></li>
        <li>age<input type="text" id="age"></li>
        <li><input type="button" id="checkJson" value="회원가입"/></li>
    </div>
    <div>
        <li><input type="button" id="checkid" value="개인정보 확인"/></li>
    </div>          
    <div id="message"></div>

</body>
</html>