<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Hong Bop 회원정보수정창</title>
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
	
<div class="container">

<div class="row">
<div class="col-md-12">
<img class="imgA" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuLNT1HhvwBWW7uliRR4GQ6rNIz-j3xMWcDeCvYsAxQ2hZYLUEit9LyxI8WxBentF-Gvg&usqp=CAU">
<h1>회원정보 수정</h1>
</div>
</div>
		
	<form action="http://localhost:8181/hongbapProject/user/userUpdate.do" method="post">
	 	
<hr/>	 	
	 	
<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text ">아이디</span>
</div>
<input type = "text" class="form-control" placeholder ="${id_session}" readonly>
</div>
</div>

<br>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text ">비밀번호</span>
</div>
<input type = "password" class="form-control" name="UserPw" placeholder ="PW" required>
</div>
</div>

<br>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text ">이름</span>
</div>
<input type = "text" class="form-control" name="UserName" placeholder ="Name" required>
</div>
</div>

<br>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text ">닉네임</span>
</div>
<input type = "text" class="form-control" name="UserNick" placeholder ="NinkName" required>
</div>
</div>

<br>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text">이메일</span>
</div>
<input type = "email" class="form-control" name="UserEmail" placeholder ="Email">
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
<input type = "text" class="form-control" name="UserPnum" placeholder ="Pnum">
</div>
</div>

<br>

<div class="row">
<div class="col-md-1">
<input type = "submit" value = "제출" class = "btn btn-success">
</div>
<div class="col-md-1">
<input type = "reset" value = "초기화" class = "btn btn-danger">
</div>
</div>

<hr/>

</form>

<footer>

<div class="row">
<img width="200px" height="500px" src="https://i.pinimg.com/originals/0d/36/81/0d368135094ffce1b9a7fe5d1215d8e6.png">
</div>

<div class="row">
<h6 class="text-primary text-center"><span class="br">홈페이지</span> : <strong>www.hongbap.com</strong></h6>
<h6 class="text-primary text-center"><span class="br">만든이</span> : <strong><span class="wordR">신우람</span> <span class="wordG">조훈현</span> 서성현</strong></h6>
</div>


</footer>	
		
</div>
</body>
</html>
