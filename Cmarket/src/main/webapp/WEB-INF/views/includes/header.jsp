<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js'></script>
<script src="https://kit.fontawesome.com/8de8e34d54.js" crossorigin="anonymous"></script>

<header>
	<div style="width: 100%;">


<!-- nav bar -->

<div class=flex align="center">
		<div style="display: inline; ">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp"><b>C market</b></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/board/list">전체</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">카테1</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">카테2</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">카테3</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
    	<div align="right">
			<!-- 로그인 화면 -->
			<c:if test="${!empty login }">
				<span style="color: gray;">${login.id }님, 안녕하세요.</span>&nbsp;&nbsp;
				<a href="/member/logout"><i class="fas fa-sign-out-alt"></i></a>&nbsp;&nbsp;
				<a href="/member/read/${login.id}"><i class="fas fa-user-circle"></i></a>
				<!-- 관리 -->
				<c:if
					test="${login.modes.equals('admin')||login.modes.equals('ceo') }">
					&nbsp;&nbsp;<a href="#"><i class="fas fa-users-cog"></i></a>
				</c:if>
			</c:if>
			<!-- 로그아웃 화면 -->
			<c:if test="${empty login }">
				<a href="/member/login"><i class="fas fa-sign-in-alt"></i></a>&nbsp;&nbsp;
				<a href="/member/insert"><i class="fas fa-user-plus"></i></a>
			</c:if>


    	</div>
  </div>
</nav>


</div>
</div>


</div>

</header>