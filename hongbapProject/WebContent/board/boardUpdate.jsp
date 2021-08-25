<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>업데이트 수정창 입니다.</h1>
  <form action="/hongbapProject/boardUpdate.do" method="post">
  
  <!-- hidden 태그를 이용해 나머지 요소들도 다 첨부해 주세요 -->
  <input type="hidden" value="${board.bId }"name="bId">
  <input type="hidden" value="${board.bHit }"name="bHit">
  <input type="hidden" value="${board.bDate }"name="bDate">
  <input type="hidden" value="${board.bWriter }"name="bWriter">
  <table border="1">
		<tr>
			<td>글번호</td>
			<td>${board.bId }</td>
			<td>조회수</td>
			<td>${board.bHit}</td>
		</tr>
		<tr>
			<td>쓴 날짜</td>
			<td>${board.bDate}</td>
		</tr>
		<tr>
			<td>글 제목</td>
			<td><textarea style="resize:none;"name="bTitle">${board.bTitle}</textarea></td> <!-- resize:none 사이즈고정  -->
		</tr>
		<tr>
			<td>본문</td>
			<td><textarea row="20" cols="30" name="bContent">${board.bContent}</textarea></td>
		</tr>
		<tr>
			<td>글쓴이</td>
			<td>${board.bWriter}</td>
		</tr>
		
			
	</table>
			<a href="/hongbapProject/boardSelect.do"><input type="button"value="리스트로 돌아가기"></a>
			<input type="submit" value="수정하기">
			<input type="reset" value="초기화">
			</form>
</body>
</html>