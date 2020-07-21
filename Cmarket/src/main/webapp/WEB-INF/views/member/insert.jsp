<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<form action="/member/insert" method="post">
		ID: <input name="id" placeholder="아이디를 입력하세요" required><br>
		PW: <input name="pw" placeholder="비밀번호를 입력하세요" type="password" required><br>
		H.P: <input name="hp" placeholder="010-1234-5678" required><br>
		이름: <input name="name" placeholder="홍길동" required><br>
		주소: <input name="addr" placeholder="서울시 강남구 테헤란로7길 7" required><br>
		<input type="submit" value="등록">
		
	</form>

</body>
</html>