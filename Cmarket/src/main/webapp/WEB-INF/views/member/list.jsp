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
	<div class="container">
		<div class="row text-center">
			<h1>회원 목록</h1>
		</div><!-- /.row-text-center -->
		
		<div class="row">
			<table class="table">
				<thead>
					<tr>
						<th class="th-center">아이디</th>
						<th class="th-center">이름</th>
						<th class="th-center">권한</th>
						<th class="th-center">탈퇴</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${list }" var="dto">
						<tr>
							<td>
								<a href="/member/read/${dto.id }">${dto.id }</a>
							</td>
							<td>${dto.name }</td>
							<td>${dto.modes }</td>
							<td><button onclick="location.href='/member/delete/${dto.id}'">탈퇴</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div><!-- /.row (table) -->
		
	</div><!-- /.container -->


</body>
</html>