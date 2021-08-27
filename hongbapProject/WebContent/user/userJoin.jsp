<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="UTF-8"> 

<title>Hong Bop</title>
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
<h1>회원가입</h1>
</div>
</div>

<hr/>

	<form action="http://localhost:8181/hongbapProject/join.do" method="post"> 

<div class="row">
<p class="text-center ">환영합니다. "<strong>HongBap</strong>"입니다!</p>
</div>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text ">아이디</span>
</div>
<input type = "text" class="form-control" name="UserId" placeholder ="ID">
</div>
</div>

<br> 

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text">비밀번호</span>
</div>
<input type = "password" class="form-control" name="UserPw" placeholder ="PW">
</div>
</div>

<br>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text ">이름</span>
</div>
<input type = "text" class="form-control" name="UserName" placeholder ="Name">
</div>
</div>

<br>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text ">닉네임</span>
</div>
<input type = "text" class="form-control" name="UserNick" placeholder ="NickName">
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
<span class="input-group-text">핸드폰 번호</span>
</div>
<input type = "text" class="form-control" name="UserPnum" placeholder ="Pnum">
</div>
</div>

<br>

<div class="row">

<input type = "submit" value = "회원가입" class = "btn btn-success">
<input type = "reset" value = "초기화" class = "btn btn-danger">

</div>
				
	


<footer>

<div class="row">
<img style="object-fit:contain;" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20160308_32%2Fkg9243_1457446931650764qL_JPEG%2Fresource%252812%2529.jpg&type=sc960_832">
</div>

<hr>
<div class="row">
<h6 class="text-primary text-center"><span class="br">홈페이지</span> : <strong>www.hongbap.com</strong></h6>
<h6 class="text-primary text-center"><span class="br">만든이</span> : <strong><span class="wordR">신우람</span> <span class="wordG">조훈현</span> 서성현</strong></h6>
</div>


</footer>		
		
	</form>
	
</div>

</body>
</html>