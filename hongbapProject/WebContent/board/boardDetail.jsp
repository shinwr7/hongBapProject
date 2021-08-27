<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<style>
    *{padding: 0; margin: 0;}
    p{font: small-caps bold 20px/1 sans-serif; color: white;}
    .p1{float: right;}
   	.buttonMain{color: white;}

     header{text-align: center;}
    .titleBack{ display: inline-block; width: 190px; background-color: rgb(212, 52, 12);; border-radius: 15px;}
    .title{ padding: 15px 3px 15px 3px; margin: 3px; width: 180px; font: small-caps bold 24px/1 sans-serif; color: whitesmoke; background-color: rgb(212, 52, 12); border-radius: 15px; }
    .table{ border: 3px solid black; border-radius: 30px 30px 15px 15px; padding: 12px;
            background-color: black;}
            .foodca{font: small-caps bold 24px/1 sans-serif; color: white; padding: 10; margin: 10px;}
            .button{ margin: 0 0 0 15px;}
            .br{color:#A0522D;}
	.wordR{color:red;}
	.wordG{color:green;}

</style>
<meta charset="UTF-8">
<title></title>
</head>
<body>
  <div class ="container">
    <form action="/hongbapProject/boardWrite.do" method="post">
      

    <div>
    <header>
      <div class="row">&nbsp;</div>
      <div class="titleBack">

      <h2 class="title">${board.bWriter}님의 게시글</h2>
      <p class="p1">${board.bDate}</p>
      
    </div>
  </header>
  <div class="table" >
    <div class="row">&nbsp;</div>
        <div class="row">
        <div class="foodca col-md-2" > 글제목</div>
        <div class="col-md-7"><input type="text"  style="background-color:ivory" class="form-control" value="${board.bTitle}"  readonly></div>
        <div class="col-md-1 "><P>${board.bHit}</P>
        </div>    
    </div><br/>
      <div class="row">
        <p class="foodca"> 글본문</p>
        <textarea style="background-color: red; font-weight: bold; font-size: 20px; color: white;" cols="100" class="form-control" rows="7"  name="bContent"  required ></textarea>
      </div>
      <div class="row" >
        <div class="foodca"> 글쓴이</div>
        <div><input type="text" style="background-color:ivory" class="form-control"value="${nick_session }" required></div>
      </div>
    
  </div>
    <hr class="hr">
    <footer>
      <div class="button">
        <a href="/hongbapProject/boardDetail.do"><button type="submit" class="btn btn-danger buttonReq" >뒤로가기</button></a>
		<a href="http://localhost:8181/hongbapProject/board/boardSelect.do?page=1"><button
                type="button" class="btn btn-dark">삭제하기</button></a>
        <a href="/hongbapProject/boardUpdate.do"><button type="reset" class="btn btn-success buttonReset" >수정하기</button></a>
		<a href="http://localhost:8181/hongbapProject/board/boardSelect.do?page=1"><button
                type="button" class="btn btn-primary">요청게시판</button></a>
        <a href="http://localhost:8181/hongbapProject/hongbapMain/hongbapMain.jsp"><button type="button" class="btn btn-warning buttonMain" >메인화면으로 가기</button></a>

      </div>
      <hr/>
				
		<div class="row">
		<h6 class="text-primary text-center"><span class="br"><b>홈페이지</b> :</span> <strong>www.hongbap.com</strong></h6>
		<h6 class="text-primary text-center"><span class="br"><b>만든이</b> :</span> <strong><span class="wordR">신우람</span> <span class="wordG">조훈현</span> 서성현</strong></h6>
		</div>
				
    </footer>
  </div>
</form>
</div>
</body>
</html>