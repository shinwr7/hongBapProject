<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style>
    * {
        padding: 0;
        margin: 0;
    }
    
  .imgA{ width:100px; margin: 0; height: 55px;}
h1 {font:italic small-caps bold 60px/1 sans-serif; line-height: 60px;}	
.headheight{ margin: 0 0 15px 0;}
.clouda{margin: 0 0 0 5px; width: 99%; height: 55px; background-repeat: repeat; background-position: top ; background-size: 160px; background-image: url("../img/cloud.png");}

    	.br{color:#A0522D;}
	.wordR{color:red;}
	.wordG{color:green;}
    
    .imgH {
        float: left;
        object-fit: cover;
        width: 10%;
        margin: 10px;
    }
    
    
    .button {
        top: 570px;
        left: 130px;
    }
    </style>
    
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/kfonts2.css" rel="stylesheet">
    <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
</head>
<body>
	<div class="container">
			<div class="row">&nbsp;</div>

<div class="row clouda">
<div class="col-md-2">
<img class="imgA" src="../img/rainbow.png">
</div>
<div class ="col-md-10" >
<h1>요청 게시판</h1>
</div>
</div>

<hr class="headheight" />
<div class="row" >&nbsp;</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>글번호</th>
					<th>글제목</th>
					<th>글쓴이</th>
					<th>쓴날자</th>
					<th>조회수</th>
				</tr>
			</thead>
			<c:forEach var="board" items="${boardList}">
				<tr>
					<td>${board.bId }</td>
					<td><a href="/hongbapProject/boardDetail.do?bId=${board.bId}">${board.bTitle }</a></td>
					<td>${board.bWriter }</td>
					<td>${board.bDate }</td>
					<td>${board.bHit }</td>
				</tr>
			</c:forEach>
		</table>
	
		

	<%-- 페이징 버튼 만들기 --%>
	<c:if test="${pageDTO.hasBoard()}">
		<%-- 표현할 글이 있다면 부트스트랩 페이징처리적용. --%>
		<ul class="pagination justify-content-center">
			<%-- 뒤로가기 버튼을 표시할지 말지 결정하는 부분 --%>
			<c:if test="${pageDTO.startPage>10 }">
				<%-- 1보다 크기만 해도 상관은없지만 직관적으로 표현하기위해 뒤로가기 링크를 10이상 으로 해놧음--%>
				<li class="page-item"><a class="page-link"
					href="http://localhost:8181/hongbapProject/board/boardSelect.do?page=${pageDTO.startPage-10 }">«</a></li>
			</c:if>

			<%--페이지 번호 10개 묶음을 깔아주는 부분 --%>
			<c:forEach var="pNo" begin="${pageDTO.startPage}"
				end="${pageDTO.endPage}">
				<li class="page-item"><a class="page-link"
					href="http://localhost:8181/hongbapProject/board/boardSelect.do?page=${pNo}">${pNo}</a></li>
			</c:forEach>

			<%-- 다음으로 가기 버튼을 표시할지 말지 결정하는 부분 --%>
			<c:if test="${pageDTO.endPage<pageDTO.totalPages }">
				<li class="page-item"><a class="page-link"
					href="http://localhost:8181/hongbapProject/board/boardSelect.do?page=${pageDTO.startPage+10 }">»</a></li>
			</c:if>

		</ul>
		<%--페이징네이션 종료 --%>
	</c:if>
	<%-- 페이징 버튼 부분 끝 --%>
	<br />
	<div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>
		
		<div class="button">
			<a href="/hongbapProject/board/userRequestRes.jsp"><button
					type="button" class="btn btn-danger">요청하기</button></a>
	         <a href="/hongbapProject/logout.do"><button type="button"
					class="btn btn-success">로그아웃</button></a> <a
				href="http://localhost:8181/hongbapProject/hongbapMain/hongbapMain.jsp"><button
					type="button" class="btn btn-warning"style="color:white;">메인화면으로 가기</button></a>
		</div>
<hr/>
		
		<footer>
		
		<div class="row">
		<h6 class="text-primary text-center"><span class="br"><b>홈페이지</b> :</span> <strong>www.hongbap.com</strong></h6>
		<h6 class="text-primary text-center"><span class="br"><b>만든이</b> :</span> <strong><span class="wordR">신우람</span> <span class="wordG">조훈현</span> 서성현</strong></h6>
		</div>
		
		</footer>	
	</div>
</body>
</html>