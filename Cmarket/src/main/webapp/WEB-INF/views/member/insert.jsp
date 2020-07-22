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
<style>

</style>
<body>

	

	<body>
		<div class="container">
			<div class="row">
				<form action="/member/insert" method="post" id="insertForm">
					<div class="form-group">
						<label class="control-label" for="id">아이디</label>
						<input class="form-control" type="text" id="id" name="id" />
						<button class="idChk" type="button" id="idChk" onclick="fn_idChk();" value="N">중복확인</button>
					</div>
					<div class="form-group">
						<label class="control-label" for="pw">패스워드</label>
						<input class="form-control" type="password" id="pw" name="pw" />
					</div>
					<div class="form-group">
						<label class="control-label" for="name">성명</label>
						<input class="form-control" type="text" id="name" name="name" />
					</div>
					<div class="form-group">
						<label class="control-label" for="hp">휴대전화</label>
						<input class="form-control" type="text" id="hp" name="hp" />
					</div>
					<div class="form-group">
						<label class="control-label" for="addr">주소</label>
						<input class="form-control" type="text" id="addr" name="addr" />
					</div>
					<div class="form-group" hidden>
						<label class="control-label" for="modes">권한</label>
						<input class="form-control" type="text" id="modes" name="modes" value="purchaser"/>
					</div>
				</form>
				<div class="form-group">
					<button class="btn btn-success" type="button" id="submit">회원가입</button>
					<button class="cencle btn btn-danger" type="button">취소</button>
				</div>
			</div>
		</div>
		
		
		
				<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				location.href = "/member/list";
			})
			
			$("#submit").on("click", function(){
				if($("#id").val()==""){
					alert("아이디를 입력해주세요.");
					$("#id").focus();
					return false;
				}
				if($("#pw").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#pw").focus();
					return false;
				}
				if($("#name").val()==""){
					alert("성명을 입력해주세요.");
					$("#name").focus();
					return false;
				}
				if($("#hp").val()==""){
					alert("전화번호를 입력해주세요.");
					$("#hp").focus();
					return false;
				}
				if($("#addr").val()==""){
					alert("주소를 입력해주세요.");
					$("#addr").focus();
					return false;
				}
				var idChkVal = $("#idChk").val();
				if(idChkVal == "N"){
					alert("중복확인 버튼을 눌러주세요.");
				}else if(idChkVal == "Y"){
					$("#insertForm").submit();
				}
			});
		})
		
		function fn_idChk(){
			$.ajax({
				url : "/member/idChk",
				type : "post",
				dataType : "json",
				data : {"id" : $("#id").val()},
				success : function(data){
					if(data == 1){
						alert("중복된 아이디입니다.");
					}else if(data == 0){
						$("#idChk").attr("value", "Y");
						alert("사용가능한 아이디입니다.");
					}
				}
			})
		}
	</script>
</body>
</html>