<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
    <div>
      <h1>제품목록</h1>
    </div>
    
    <div class="row">
	${login.id } <a href="${!empty login.id ? '/member/logout' : '/member/login' }">
	${!empty login.id ? '로그아웃' : '로그인'}</a><br>
	</div><!-- /.row -->
    
    
    <div>
      <button class="btn btn-primary" onclick="location.href='/board/insert'">제품 등록</button>
    </div>

    <div class="row">
      <table class="table">
        <thead>
          <tr>
            <th class="th-center">글번호</th>
            <th class="th-center">제목</th>
            <th class="th-center">작성자</th>
            <th class="th-center">가격</th>
            <th class="th-center">재고</th>
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

    <div class="row text-center">
      <nav aria-label="Page navigation">
        <ul class="pagination">
          <li>
            <c:if test="${to.curPage > 1 }">
              <a href="/board/list?curPage=1">첨</a>
            </c:if>
          </li>
          <li>
            <c:if test="${to.curPage > 1 }">
              <a href="/board/list?curPage=${to.curPage > 1 ? to.curPage-1 : 1}" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
              </a>
            </c:if>
          </li>
          <c:forEach begin="${to.beginPageNum}" end="${to.stopPageNum}" var="page">
            <li class="${to.curPage == page?'active' : ''}">
              <a href="/board/list?curPage=${page}">${page}</a>
            </li>
          </c:forEach>
          <li>
            <c:if test="${to.curPage < to.totalPage}">
              <a href="/board/list?curPage=${to.curPage < to.totalPage? (to.curPage+1) : to.totalPage}"
                aria-label="Next"
              >
                <span aria-hidden="true">&raquo;</span>
              </a>
            </c:if>
          </li>
          <li>
            <c:if test="${to.curPage < to.totalPage }">
              <a href="/board/list?curPage=${to.totalPage}">끝</a>
            </c:if>
          </li>
        </ul>
      </nav>
    </div>
  </div>
</body>
</html>