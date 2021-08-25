<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">

	<form action="http://localhost:8181/hongbapProject/user/userDelete.do" method="post">
	
<div class="row">
<h1 class="text-center text-primary">회원탈퇴</h1>
</div>

<hr/>

<div class="row">
<p class="text-center text-primary">비밀번호를 다시 입력해주세요!</p>
</div>

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
<input type="submit" value="제출" class="btn btn-primary col-me-1">
</div>
		
<hr/>

</form>

<footer>

<div class="row">
<img width="200px" height="500px" src="https://i.pinimg.com/originals/ac/a1/b4/aca1b4ca5ecdc2fc6b066dea16e1e304.png">
</div>

<div class="row">
<h6 class="text-primary text-center">홈페이지 : <strong>www.hongbap.com</strong></h6>
<h6 class="text-primary text-center">만든이 : <strong>신우람 조훈현 서성현</strong></h6>
</div>


</footer>	
						
</div>
</body>
</html>