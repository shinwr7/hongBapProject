<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.imgA{float: left;
	object-fit: cover;
	width: 10%;
	margin: 10px;}
	
h1 { margin : 15px}	

.br{color:#A0522D;}
.wordR{color:red;}
.wordG{color:green;}


</style>
</head>
<body>

<div class = "container">

<form action="#" method="post">

<div class = "row">
<div class = "col-md-12">
<img class="imgA" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuLNT1HhvwBWW7uliRR4GQ6rNIz-j3xMWcDeCvYsAxQ2hZYLUEit9LyxI8WxBentF-Gvg&usqp=CAU">
<h1>회원정보</h1>
</div>
</div>

<hr>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text ">아이디</span>
</div>
<input class="form-control" name="UserId" placeholder ="${userInfo.userId }" readonly>
</div>
</div>

<br> 

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text ">비밀번호</span>
</div>
<input type = "password" class="form-control" name="UserPw" readonly>
</div>
</div>

<br>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text ">이름</span>
</div>
<input type = "text" class="form-control" name="UserName" placeholder ="${userInfo.userName }" readonly>
</div>
</div>

<br>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text ">닉네임</span>
</div>
<input type = "text" class="form-control" name="UserNick" placeholder ="${userInfo.userNick }" readonly>
</div>
</div>

<br>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text ">이메일</span>
</div>
<input type = "email" class="form-control" name="UserEmail" placeholder ="${userInfo.userEmail }" readonly>
<div class="input-group-append">
<span class="input-group-text ">ex)ooo@ooo.com/net</span>
</div>
</div>
</div>

<br>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text ">핸드폰 번호</span>
</div>
<input type = "text" class="form-control" name="UserPnum" placeholder ="${userInfo.userPnum }" readonly>
</div>
</div>

<br>
		
<a href="http://localhost:8181/hongbapProject/user/userUpdate.jsp" class="btn btn-warning">회원정보수정</a>
<a href="http://localhost:8181/hongbapProject/user/userDelete.jsp" class="btn btn-danger">회원탈퇴요청</a>
<a href="http://localhost:8181/hongbapProject/hongbapMain/hongbapMain.jsp" class="btn btn-success">메인게시판이동</a>
		
<hr>
		
<footer>

<div class="row">
<img width="200px" height="500px" src="https://i.pinimg.com/originals/da/2c/0c/da2c0cf8c77545ad6cee6207bfb93e84.png">
</div>

<div class="row">
<h6 class="text-primary text-center"><span class="br">홈페이지</span> : <strong>www.hongbap.com</strong></h6>
<h6 class="text-primary text-center"><span class="br">만든이</span> : <strong><span class="wordR">신우람</span> <span class="wordG">조훈현</span> 서성현</strong></h6>
</div>


</footer>		
		
	</form>
	
</div>

</body>
</html>