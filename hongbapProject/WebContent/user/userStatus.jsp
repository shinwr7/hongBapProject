<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

*{margin: 0; padding:0; }

.imgA{ width:130px; margin: 0; height: 55px;}
.A{font-weight: bold;}
.clouda{margin: 0 0 0 5px; width: 99%; height: 55px; background-repeat: repeat; background-position: top ; background-size: 160px; background-image: url("../img/cloud.png");}
h1 {top: 6px; left:0; font:italic small-caps bold 60px/1 sans-serif; line-height: 60px;}	
.headheight{ margin: 0 0 15px 0;}
.br{color:#A0522D;}
.wordR{color:red;}
.wordG{color:green;}

</style>
</head>
<body>

<div class = "container">
<div class="row">&nbsp;</div>


<div class="row clouda">
<div class="col-md-2">
<img class="imgA" src="../img/rainbow.png">
</div>
<div class ="col-md-10" >
<h1>User Profile</h1>
</div>
</div>

<hr class="headheight" />	
<div class="row">&nbsp;</div>	
<div class="row">&nbsp;</div>	
<form action="#" method="post">
<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text A">&nbsp;&nbsp;아이디&nbsp;</span>
</div>
<input class="form-control" name="UserId" placeholder ="${userInfo.userId }" readonly>
</div>
</div>

<div class="row" style="line-height: 50%;" >&nbsp;</div>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text A">비밀번호</span>
</div>
<input type = "password" class="form-control" name="UserPw" readonly>
</div>
</div>

<div class="row" style="line-height: 50%;" >&nbsp;</div>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text A">&nbsp;&nbsp;이름&nbsp;&nbsp;&nbsp;</span>
</div>
<input type = "text" class="form-control" name="UserName" placeholder ="${userInfo.userName }" readonly>
</div>
</div>

<div class="row" style="line-height: 50%;" >&nbsp;</div>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text A">&nbsp;닉네임&nbsp;&nbsp;</span>
</div>
<input type = "text" class="form-control" name="UserNick" placeholder ="${userInfo.userNick }" readonly>
</div>
</div>

<div class="row" style="line-height: 50%;" >&nbsp;</div>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text A">&nbsp;이메일&nbsp;&nbsp;</span>
</div>
<input type = "email" class="form-control" name="UserEmail" placeholder ="${userInfo.userEmail }" readonly>
<div class="input-group-append">
<span class="input-group-text A">ex)ooo@ooo.com/net</span>
</div>
</div>
</div>

<div class="row" style="line-height: 50%;" >&nbsp;</div>

<div class="row">
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text A">핸드폰 번호</span>
</div>
<input type = "text" class="form-control" name="UserPnum" placeholder ="${userInfo.userPnum }" readonly>
</div>
</div>

<div class="row" >&nbsp;</div>
		<div class="row">
<a href="http://localhost:8181/hongbapProject/user/userUpdate.jsp" class="btn btn-warning" style="color:white;">회원정보수정</a>
<a href="http://localhost:8181/hongbapProject/hongbapMain/hongbapMain.jsp" class="btn btn-success">메인게시판이동</a>
<a href="http://localhost:8181/hongbapProject/user/userDelete.jsp" class="btn btn-danger">회원탈퇴요청</a>
		</div>
		
<footer>

<div class="row">
<img style="object-fit:contain;" src="https://i.pinimg.com/originals/da/2c/0c/da2c0cf8c77545ad6cee6207bfb93e84.png">
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