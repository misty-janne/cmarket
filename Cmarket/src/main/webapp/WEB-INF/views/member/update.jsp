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
			<h1>회원정보 수정</h1>
		</div><!-- /.row-text-center -->

		<div class="row">
			<form action="/member/update" method="post">
				<div class="form-group">
					<label for="id">아이디</label>
					<input name="id" id="id" value="${dto.id }" class="form-control" readonly>
				</div>
				<div class="form-group">
					<label for="pw">비밀번호</label>
					<input name="pw" id="pw" type="password" class="form-control" required>
				</div>
				<div class="form-group">
					<label for="hp">휴대전화</label>
					<input name="hp" id="hp" value="${dto.hp }" class="form-control" required>
				</div>
				<div class="form-group">
					<label for="name">이름</label>
					<input name="name" id="name" value="${dto.name }" class="form-control" required>
				</div>
				<div class="form-group">
					<label for="addr">주소</label>
					<input name="addr" id="addr" value="${dto.addr }" class="form-control" required>
				</div>
				<!-- 분류 수정권한 admin 부여 -->
				<c:if test="${login.modes.equals('admin')|| login.modes.equals('ceo')}">
				<div class="form-group">
					<label for="modes">분류</label>
					<select name="modes" class="form-control">
						<option value="${dto.modes }" selected>${dto.modes }</option>
						<option value="purchaser">purchaser</option>
						<option value="marketer">marketer</option>
						<option value="ceo">ceo</option>
					</select>
				</div>
				</c:if>
			</form><!-- /update -->
			
			<div class="form-group">
				<button class="btn btn-primary" id="update_btn">수정</button>
				<button class="btn btn-info" id="list_btn">목록</button>
			</div><!-- /button -->			
		</div><!-- /.row -->
	</div><!-- /.container -->

	<script type="text/javascript">
		$(document).ready(function(){
			$("#update_btn").click(function(event){
				event.preventDefault();
				$("form").submit();
			});
			$("#list_btn").click(function(event){
				event.preventDefault();				
				location.assign("/member/list");
			});
			
		});
	</script>


</body>
</html>