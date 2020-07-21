<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
  <div class="container">
    <h1>제품 상세정보</h1>


    <div class="row">
      <div class="form-group">
        <label for="title">제목</label>
        <input readonly value="${bDto.title}" class="form-control">
      </div>
      <div class="form-group">
        <label for="writer">작성자</label>
        <input readonly value="${bDto.writer}" class="form-control">
      </div>
      <div class="form-group">
        <label for="category">카테고리</label>
        <input readonly value="${bDto.category}" class="form-control">
      </div>
      <div class="form-group">
        <label for="content">내용</label>
        <input readonly value="${bDto.content}" class="form-control">
      </div>
      <div class="form-group">
        <label for="price">가격</label>
        <input readonly value="${bDto.price}" class="form-control">
      </div>
      <div class="form-group">
        <label for="stock">재고</label>
        <input readonly value="${bDto.stock}" class="form-control">
      </div>
      <!-- <div class="form-group">
        <label>첨부파일</label>
        <ul class="uploadedList clearfix">

        </ul>
      </div> -->

    </div>


    <div class="form-group text-right">
      <button id="board_insertBtn" class="btn btn-primary">제품 구매</button>
      <button id="board_likesBtn" class="btn btn-primary">찜하기</button>
      <button id="board_replyBtn" class="btn btn-primary">댓글</button>
      <button id="board_updateBtn" class="btn btn-primary">수정(판매자이상전용버튼_ 권한 부여 필요)</button>
      <button id="board_deleteBtn" class="btn btn-primary">삭제(판매자이상전용버튼_ 권한 부여 필요)</button>
      <button id="board_listBtn" class="btn btn-primary">제품목록</button>
    </div>
  </div>
  <script type="text/javascript">
      $(document).ready(function() {
        $("#board_updateBtn").click(function() {
          location.assign("/board/update/${bDto.bno}");
        });
        $("#board_deleteBtn").click(function() {
          location.assign("/board/delete/${bDto.bno}");
        });
        $("#board_listBtn").click(function() {
          location.assign("/board/list");
        });
      });
    </script>
</body>
</html>