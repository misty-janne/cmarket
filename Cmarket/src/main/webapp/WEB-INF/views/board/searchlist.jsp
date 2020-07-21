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
    <div class="row">
      <h1>검색 결과</h1>
      <p>검색 유형 : ${searchType}, 키워드 : ${keyword}</p>
    </div>
    <div class="row">
      <table class="table">
        <thead>
          <tr>
            <th class="th-center">글번호</th>
            <th class="th-center">제목</th>
            <th class="th-center">작성자</th>
            <th class="th-center">작성일</th>
            <th class="th-center">조회수</th>
          </tr>
        </thead>

        <tbody>
          <c:forEach items="${list}" var="bDto">
            <tr>
              <td>${bDto.bno}</td>
              <td>
                <a href="/board/read/${bDto.bno}">${bDto.title}</a>
              </td>
              <td>${bDto.writer}</td>
              <td>${bDto.price}</td>
              <td>${bDto.stock}</td>
              <td>${bDto.regDate}</td>
              <td>${bDto.viewcnt}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </div>
</body>
</html>