<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중식 게시판</title>
</head>
<body>

	<h1>${resCategory }게시판목록</h1>
	<table border="1">
		<thead>
			<tr>
				<th>식당no</th>
				<th>식당이름</th>
				<th>카테고리</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="res" items="${ResList}">
				<tr>
					<td>${res.resId }</td>
					<td><a href="/hongbapProject/resDetail.do?resId=${res.resId}">${res.resName}</a></td>
					<td>${res.resCategory }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<%-- 페이징 버튼 만들기 --%>

	 
	<c:if test="${ResDTO.hasBoard()}">
		<%-- 뒤로가기 버튼을 표시할지 말지 결정하는 부분 --%>
		<c:if test="${ResDTO.startPage>10 }">
		<%-- 1보다 크기만 해도 상관은없지만 직관적으로 표현하기위해 뒤로가기 링크를 10이상 으로 해놧음--%>
			<a href="/hongbapProject/resList.do?page=${ResDTO.startPage-10 }">[prev]</a>
		</c:if>
		<%--페이지 번호 10개 묶음을 깔아주는 부분 --%>
		<c:forEach var="pNo" begin="${ResDTO.startPage}" end="${ResDTO.endPage}">
			<a href="/hongbapProject/hongbapMain/resList.do?resCategory=${resCategory}&page=${pNo}">[${pNo}]</a>
		</c:forEach>
		<%-- 다음으로 가기 버튼을 표시할지 말지 결정하는 부분 --%>
		<c:if test="${ResDTO.endPage<ResDTO.totalPages }">
			<a href="/hongbapProject/resList.do?page=${ResDTO.startPage+10}">[next]</a>
		</c:if>
	</c:if>
	 

	<c:if test="${pageDTO.hasBoard()}">
		<%-- 뒤로가기 버튼을 표시할지 말지 결정하는 부분 --%>
		<c:if test="${pageDTO.startPage>10 }">
		<%-- 1보다 크기만 해도 상관은없지만 직관적으로 표현하기위해 뒤로가기 링크를 10이상 으로 해놧음--%>
			<a href="/MyFirstWeb/boardselect.do?page=${pageDTO.startPage-10 }">[prev]</a>
		</c:if>
		<%--페이지 번호 10개 묶음을 깔아주는 부분 --%>
		<c:forEach var="pNo" begin="${pageDTO.startPage}" end="${pageDTO.endPage}">
			<a href="/MyFirstWeb/boardselect.do?page=${pNo}">[${pNo}]</a>
		</c:forEach>
		<%-- 다음으로 가기 버튼을 표시할지 말지 결정하는 부분 --%>
		<c:if test="${pageDTO.endPage<pageDTO.totalPages }">
			<a href="/MyFirstWeb/boardselect.do?page=${pageDTO.startPage+10}">[next]</a>
		</c:if>
	</c:if>
</body>
</html>