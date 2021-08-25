<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="UTF-8"> 

<title>Hong Bop</title>
</head>
<body>

<div class="container">

<div class="row">
<h1 class="text-center text-primary">회원가입</h1>
</div>

<hr/>

	<form action="http://localhost:8181/hongbapProject/join.do" method="post"> 

<div class="row">
<p class="text-center text-primary">환영합니다. "<strong>HongBap</strong>"입니다!</p>
</div>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text text-primary">아이디</span>
</div>
<input type = "text" class="form-control" name="UserId" placeholder ="ID">
</div>
</div>

<br> 

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text text-primary">비밀번호</span>
</div>
<input type = "password" class="form-control" name="UserPw" placeholder ="PW">
</div>
</div>

<br>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text text-primary">이름</span>
</div>
<input type = "text" class="form-control" name="UserName" placeholder ="Name">
</div>
</div>

<br>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text text-primary">닉네임</span>
</div>
<input type = "text" class="form-control" name="UserNick" placeholder ="NickName">
</div>
</div>

<br>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text text-primary">이메일</span>
</div>
<input type = "email" class="form-control" name="UserEmail" placeholder ="Email">
<div class="input-group-append">
<span class="input-group-text text-primary">ex)ooo@ooo.com/net</span>
</div>
</div>
</div>

<br>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text text-primary">핸드폰 번호</span>
</div>
<input type = "text" class="form-control" name="UserPnum" placeholder ="Pnum">
</div>
</div>

<br>

<div class="row">
<div class="col-md-1">
<input type = "submit" value = "회원가입" class = "btn btn-primary">
</div>
<div class="col-md-1">
<input type = "reset" value = "초기화" class = "btn btn-danger">
</div>
</div>
				
	

<hr/>

<footer>

<div class="row">
<img width="200px" height="400px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20160308_32%2Fkg9243_1457446931650764qL_JPEG%2Fresource%252812%2529.jpg&type=sc960_832">
</div>

<div class="row">
<h6 class="text-primary text-center">홈페이지 : <strong>www.hongbap.com</strong></h6>
<h6 class="text-primary text-center">만든이 : <strong>신우람 조훈현 서성현</strong></h6>
</div>

</footer>	
	 
	 </form>
</div>
</body>
</html>