<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/kfonts2.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
	

<style>
* {
	padding: 5px;
	margin: 5px;
	text-align: center;
}
ul{display: inline-table; vertical-align: middle;}
.money{font:  small-caps bold 22px/1 sans-serif;}
.homeT{height: 100px; display:inline-block; margin:0;}
.resName { margin:0; padding:0;
	font: small-caps bold 30px/1 sans-serif;
	float: inherit;
	}
hr{color: rgb(103, 208, 250);margin:0;}
.buttonMain{color:white;}
.imgH{ width: 130px; height: 55px; magin:0; padding:0;}
		
	.br{color:#A0522D;}	
    .wordR{color:red;}
	.wordG{color:green;}
	
	
</style>
<title>${res.resName }</title>
</head>
<body>
	<div class="container">
		<!-- Nav pills -->
		<ul class="nav nav-tabs nav-justified" role="tablist">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="pill" href="#home_p">home</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="pill"
				href="#menu1_p">추천메뉴~!</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="pill"
				href="#menu2_p">댓글</a></li>
		</ul>

		<!--내용물들-->
		<div class="tab-content">
			<div id="home_p" class="container tab-pane active">
				<div class="row homeT">
				<div class="col-md-5">
					<img 
						src="../img/rainbow.png"
						class="imgH">
						</div>
				<div class="col-md-5">
					<p class="resName">${res.resName }</p>
						</div>
				</div>
				<hr/>
				<img class="round" style="margin:0;" width="300px" height="300px" src="캐러샐효과!">
				<ul style="margin:0;">
					<li><span>전화번호</span> : ${res.resPnum}</li>
					<li><span>주소</span> : ${res.resAddr}</li>
					<li><span>영업시간</span> : ${res.resTime}</li>
					<li><span>휴무일</span> : ${res.resHoliday}</li>
					<li><button type="button" class="btn btn-link"
							data-toggle="modal" data-target="${res.resHomepage }">
							홈페이지</button></li>
				</ul>
			</div>

			<div id="menu1_p" class="container tab-pane fade">
					<div class="row homeT">
						<img 
							src="../img/rainbow.png"
							class="imgH">
				<p class="resName">Best Menu</p>
				</div>
				<hr style="margin:0;"/>
				<div>
					<div class="row">
				<h5 style="margin:0;">${menu.menuName }</h5>
						<div class="col-md-4" style="float: right;">
						<img width="300px" height="300px" class="rounded-circle"
							src="음식이미지">
						</div>
						<div class="col-md-4 offset-md-2">
							<ul style="float: left;"> 
								<div class="row">&nbsp;</div>
							<li class="money">${menu.menuBook }</li>
								<div class="row">&nbsp;</div>
								<div class="row">&nbsp;</div>
							<div class="row">&nbsp;</div>
							<li class="money">${menu.menuPrice } [Won] </li>
						</ul>
					</div>
				</div>
				</div>
			</div>

			<div id="menu2_p" class="container tab-pane fade">
						<div class="row homeT">
						<img 
							src="../img/rainbow.png"
							class="imgH">
				<p class="resName">C om M en T</p>
				</div>
				<hr/>
				<table class="table table-striped resBoard">
			<thead>
				<tr>
					<th>no</th>
					<th>댓글</th>
					<th>평점</th>
					<th>글쓴이</th>
				</tr>
			</thead>
			<c:forEach var="attach" items="${attachList}">
				<tr>
					<td>${attach.aid }</td>

					<td>${attach.acontent}</td>

					<td>${attach.assessment }</td>
					
					<td>${attach.awriter }</td>
					
				</tr>
				</div>
			</c:forEach>
			
			<form action ="http://localhost:8181/hongbapProject/res/attachWrite.do?resId=${resId }" method ="post">
				<table>
				<tr>
				
					<td style="width:100%; height:100%;" ><textarea style="width:100%; height:100%;" ></textarea></td>
					
						<td>
						<select name = "assessment">
				        <option value="5">5</option>
				        <option value="4">4</option>
				        <option value="3">3</option>
				        <option value="2">2</option>
				        <option value="1">1</option>
			    		</select>
				        </td>
				</tr>
				</table>
				
				<input type="submit" value="댓글쓰기" class="text-primary">
				<input type="reset" value="초기화" class="text-primary">
			</form>
			
		</table>
				
		<c:if test="${pageDTO.hasBoard()}">
		<%-- 표현할 글이 있다면 부트스트랩 페이징처리적용. --%>
		<ul class="pagination justify-content-center">
			<%-- 뒤로가기 버튼을 표시할지 말지 결정하는 부분 --%>
			<c:if test="${pageDTO.startPage>10 }">
				<%-- 1보다 크기만 해도 상관은없지만 직관적으로 표현하기위해 뒤로가기 링크를 10이상 으로 해놧음--%>
				<li class="page-item"><a class="page-link"
					href="http://localhost:8181/hongbapProject/res/resDetail.do?page=${pageDTO.startPage-10 }">«</a></li>
			</c:if>

			<%--페이지 번호 10개 묶음을 깔아주는 부분 --%>
			<c:forEach var="pNo" begin="${pageDTO.startPage}"
				end="${pageDTO.endPage}">
				<li class="page-item"><a class="page-link"
					href="http://localhost:8181/hongbapProject/res/resDetail.do?resId=${resId }&page=${pNo}">${pNo}</a></li>
			</c:forEach>

			<%-- 다음으로 가기 버튼을 표시할지 말지 결정하는 부분 --%>
			<c:if test="${pageDTO.endPage<pageDTO.totalPages }">
				<li class="page-item"><a class="page-link"
					href="http://localhost:8181/hongbapProject/res/resDetail.do?page=${pageDTO.startPage+10 }">»</a></li>
			</c:if>

		</ul>
		<%--페이징네이션 종료 --%>
		</c:if>



			</div>
		</div>



		<!--<form action="상의필요" method="post">
    	<p>식당 만족도</p>
    	<div>
    		<input type="radio" name="" value="상">
    		<input type="radio"  name="" value="중">
    		<input type="radio" name="" value="하">
    	</div>
    	<input type="submit" value="평점주기">
    </form> -->


		<br>
		<p style="text-align: center;">
		
		    
		    <button onclick="history.back()" class="btn btn-danger buttonReq" >뒤로가기</button>
			<a href="/hongbapProject/boardWrite.do"><button
					type="button" class="btn btn-success buttonMain">요청글쓰기창</button></a>
			<a href="http://localhost:8181/hongbapProject/board/boardSelect.do?page=1"><button
					type="button" class="btn btn-primary buttonMain">요청게시판</button></a>
			<a href="http://localhost:8181/hongbapProject/hongbapMain/hongbapMain.jsp"><button
			        type="button" class="btn btn-warning buttonMain">메인화면으로 가기</button></a>
		</p>

		
		<footer>
		
		<div class="rwo">
		<hr>
		</div>
		
		<div class="row">
		<h6 class="text-primary text-center"><span class="br"><b>홈페이지</b> :</span> <strong>www.hongbap.com</strong></h6>
		<h6 class="text-primary text-center"><span class="br"><b>만든이</b> :</span> <strong><span class="wordR">신우람</span> <span class="wordG">조훈현</span> 서성현</strong></h6>
		</div>
		
		 <c:if test = "${id_session eq 'abc'}">
		<a href="#"><button 
		                type="button" class="btn btn-primary">메뉴버튼</button></a>
		</c:if>
		
		</footer>

	</div>
</body>
</html>