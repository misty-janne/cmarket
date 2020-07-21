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
    <div class="row text-center">
      <h1>글 수정</h1>
    </div>
    <div class="row">

      <form action="/board/update" method="post">
        <input type="hidden" name="bno" value="${bDto.bno }">

        <div class="form-group">
          <label for="title">제목</label>
          <input value="${bDto.title}" name="title" id="title" class="form-control">
        </div>

        <div class="form-group">
          <label for="writer">작성자</label>
          <input value="${bDto.writer}" name="writer" id="writer" class="form-control" readonly>
        </div>

        <div class="form-group">
          <label for="category">카테고리</label>
          <input value="${bDto.category}" name="category" id="category" class="form-control">
        </div>

        <div class="form-group">
          <label for="content">내용</label>
          <textarea name="content" id="content" class="form-control">${bDto.content}</textarea>
        </div>

        <div class="form-group">
          <label for="price">가격</label>
          <input value="${bDto.title}" name="price" id="price" class="form-control">
        </div>

        <div class="form-group">
          <label for="stock">재고</label>
          <input value="${bDto.stock}" name="stock" id="stock" class="form-control">
        </div>

      </form>

      <div class="form-group">
        <label>업로드할 파일을 드랍시키세요(미구현)</label>
        <div class="fileDrop"></div>
      </div>

      <div class="form-group">
        <label>첨부파일 목록(미구현)</label>
        <ul class="uploadedList clearfix"></ul>
      </div>

      <div class="form-group text-right">
        <button id="updateBtn" class="btn btn-primary">수정완료</button>
        <button id="listBtn" class="btn btn-secondary">제품목록</button>
      </div>
    </div>
  </div>
  <script type="text/javascript">
      $(document).ready(function() {
        $("#updateBtn").click(function(event) {
          event.preventDefault();

          var str = '';

          $(".deletefile").each(function(index) {
            str += "<input name='files[" + index + "]' value='" + $(this).attr("href") + "' type='hidden'>";
          });

          $("form").append(str);
          $("form").submit();
        });
        $("#listBtn").click(function() {
          location.assign("/board/list");
        });
      });
    </script>

</body>
</html>