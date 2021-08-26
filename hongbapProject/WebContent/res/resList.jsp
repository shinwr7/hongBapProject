<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음식별 게시판</title>
<style>
* {
	padding: 0;
	margin: 0;
}

h1 {
	margin: 15px;
	font: small-caps bold 30px/1 sans-serif;
}

.imgH {
	float: left;
	object-fit: cover;
	width: 10%;
	margin: 10px;
}

.resBoard {
	position: relative;
}

.button {
	position: absolute;
	top: 570px;
	left: 130px;
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuLNT1HhvwBWW7uliRR4GQ6rNIz-j3xMWcDeCvYsAxQ2hZYLUEit9LyxI8WxBentF-Gvg&usqp=CAU"
					class="imgH">
					<div class="row" style="font-size: 50%;">&nbsp;</div>
				<h1>${resCategory }게시판목록</h1>
			</div>
		</div>
		<table class="table table-striped resBoard">
			<thead>
				<tr>
					<th>식당no</th>
					<th>식당이름</th>
					<th>카테고리</th>
				</tr>
			</thead>
			<c:forEach var="res" items="${ResList}">
				<tr>
					<td>${res.resId }</td>
					<td><a href="http://localhost:8181/hongbapProject/res/resDetail.do?page=1&resId=${res.resId}">${res.resName}</a></td>
					<td>${res.resCategory }</td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<%-- 페이징 버튼 만들기 --%>
	<c:if test="${pageDTO.hasBoard()}">
		<%-- 표현할 글이 있다면 부트스트랩 페이징처리적용. --%>
		<ul class="pagination justify-content-center">
			<%-- 뒤로가기 버튼을 표시할지 말지 결정하는 부분 --%>
			<c:if test="${pageDTO.startPage>10 }">
				<%-- 1보다 크기만 해도 상관은없지만 직관적으로 표현하기위해 뒤로가기 링크를 10이상 으로 해놧음--%>
				<li class="page-item"><a class="page-link"
					href="/hongbapProject/boardSelect.do?page=${pageDTO.startPage-10 }">«</a></li>
			</c:if>

			<%--페이지 번호 10개 묶음을 깔아주는 부분 --%>
			<c:forEach var="pNo" begin="${pageDTO.startPage}"
				end="${pageDTO.endPage}">
				<li class="page-item"><a class="page-link"
					href="//hongbapProject/boardSelect.do?page=${pNo}">${pNo}</a></li>
			</c:forEach>

			<%-- 다음으로 가기 버튼을 표시할지 말지 결정하는 부분 --%>
			<c:if test="${pageDTO.endPage<pageDTO.totalPages }">
				<li class="page-item"><a class="page-link"
					href="/hongbapProject/boardSelect.do?page=${pageDTO.startPage+10 }">»</a></li>
			</c:if>

		</ul>
		<%--페이징네이션 종료 --%>
	</c:if>
	<%-- 페이징 버튼 부분 끝 --%>
	<br />
	
		
		<div class="button">
			<a href="http://localhost:8181/hongbapProject/board/boardWrite.jsp"><button
					type="button" class="btn btn-danger">요청하기</button></a> <a
				href="/hongbapProject/logout.do"><button type="button"
					class="btn btn-success">로그아웃</button></a> <a
				href="http://localhost:8181/hongbapProject/hongbapMain/hongbapMain.jsp"><button
					type="button" class="btn btn-warning buttonMain">메인화면으로
					가기</button></a>
		</div>
	
</body>
</html>