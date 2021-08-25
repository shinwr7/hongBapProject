<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>글 목록 창</h1>

<table border = "1">
<tr>
<td>글 번호</td>
<td>${board.bid }</td>
<td>조회수</td>
<td>${board.bhit }</td>
</tr>

<tr>
<td>쓴 날짜</td>
<td>${board.bdate }</td>
</tr>

<tr>
<td>글 제목</td>
<td>${board.btitle }</td>
</tr>

<tr>
<td>본문</td>
<td><textarea cols = "50" rows = "50" name="content">${board.bcontent}</textarea></td>
</tr>

<tr>
<td>글쓴이</td>
<td>${board.bWriter }</td>
</tr>

<tr>
<td>
<a href = "/hongbapProject/boardSelect.do"><input type = "submit" value = "리스트로 돌아가기"></a>
</td>
<td>
<form action = "/hongbapProject/boardDelete.do" method = "post"/>
<input type = "hidden" value = "${board.bid }" name = "bid">
<input type = "submit" value = "삭제하기">
</form>

<form action = "/hongbapProject/boardUpdate.do" method = "post"/>
<input type = "hidden" value = "${board.bid }" name = "bid">
<input type = "submit" value = "수정하기">
</form>
</td>
</tr>

</table>

</body>
</html>