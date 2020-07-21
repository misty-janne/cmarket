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
    <h1>제품 등록</h1>
    <form action="/board/insert" method="post">
      <div class="form-group">
        <label for="title">제목</label>
        <input name="title" id="title" class="form-control">
      </div>

      <div class="form-group">
        <label for="writer">작성자</label>
        <input name="writer" id="writer" value="${sessionScope.login.id }" class="form-control" readonly="readonly">
      </div>
      <div class="form-group">
        <label for="category">카테고리</label>
        <input name="category" id="category" class="form-control">
      </div>

      <div class="form-group">
        <label for="content">내용</label>
        <textarea name="content" id="content" class="form-control"></textarea>
      </div>
      
      <div class="form-group">
        <label for="price">가격</label>
        <textarea name="price" id="price" class="form-control"></textarea>
      </div>
      
      <div class="form-group">
        <label for="stock">재고</label>
        <textarea name="stock" id="stock" class="form-control"></textarea>
      </div>

    </form>
    <div class="form-group text-right">
      <button id="board_insertBtn" class="btn btn-primary">제품 등록</button>
      <button id="board_listBtn" class="btn btn-primary">제품 목록</button>
    </div>
  </div>
  <script type="text/javascript">
      $(document).ready(function() {
        $("#board_insertBtn").click(function(event) {
          event.preventDefault();

          var str = '';

          $(".deletefile").each(function(index) {
            str += "<input name='files[" + index + "]' value='" + $(this).attr("href") + "' type='hidden'>";
          });

          $("form").append(str);
          $("form").submit();
        });
        $("#board_listBtn").click(function() {
          location.href = "list";
        });
      });
    </script>
</body>
</html>