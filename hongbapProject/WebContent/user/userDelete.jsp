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
<div class="container">

	<form action="http://localhost:8181/hongbapProject/user/userDelete.do" method="post">
	
<div class="row">
<div class="col-md-12">
<img class="imgA" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuLNT1HhvwBWW7uliRR4GQ6rNIz-j3xMWcDeCvYsAxQ2hZYLUEit9LyxI8WxBentF-Gvg&usqp=CAU">
<h1>회원탈퇴</h1>
</div>
</div>

<hr/>

<div class="row">

<p class="text-center">"<strong>비밀번호</strong>를 다시 입력해주세요!"</p>
</div>

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
<input type="submit" value="제출" class="btn btn-success col-me-1">
</div>
		
<hr/>

</form>

<footer>

<div class="row">
<img width="200px" height="500px" src="https://i.pinimg.com/originals/ac/a1/b4/aca1b4ca5ecdc2fc6b066dea16e1e304.png">
</div>

<div class="row">
<h6 class="text-primary text-center"><span class="br">홈페이지</span> : <strong>www.hongbap.com</strong></h6>
<h6 class="text-primary text-center"><span class="br">만든이</span> : <strong><span class="wordR">신우람</span> <span class="wordG">조훈현</span> 서성현</strong></h6>
</div>


</footer>	
						
</div>
</body>
</html>