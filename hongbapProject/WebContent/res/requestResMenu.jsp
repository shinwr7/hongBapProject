<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <style>
            *{padding: 0; margin: 0;}
            .a{font: small-caps bold 22px/1 sans-serif;}


.imgA{float: left;
	object-fit: cover;
	width: 10%;
	margin: 10px;}
	
h1 { margin : 15px}	

.br{color:#A0522D;}
.wordR{color:red;}
.wordG{color:green;}


    </style>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
</head>
<body>

<div class="container">

    <form action="가게추가.do" method="post">
		
            <div class="row">
            <div class="col-md-12">
            <img class="imgA" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuLNT1HhvwBWW7uliRR4GQ6rNIz-j3xMWcDeCvYsAxQ2hZYLUEit9LyxI8WxBentF-Gvg&usqp=CAU">
            <h1>관리자용 메뉴 추가 페이지</h1>
            </div>
            </div>
            <hr/> 
                
                <div class="row">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text ">메뉴이름</span>
                      </div>
                      <input type="text" class="form-control" name="menuName" placeholder="메뉴이름">
                </div>
                </div>
                
                <br/>
                
                <div class="row">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text ">메뉴설명</span>
                      </div>
                      <input type="text" class="form-control" name="menuPrice" placeholder="메뉴설명">
                </div>
                </div>
                
                <br/> 
                
                <div class="row">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text ">메뉴가격</span>
                      </div>
                      <input type="text" class="form-control" name="menuPrice" placeholder="메뉴가격">
                </div>
                </div>
                
                <br/>

	<div class="row">
	  <input type = "submit" name = "제출" class="btn btn-warning">
	  <input type = "reset" name = "초기화" class="btn btn-danger">
	  <a href="http://localhost:8181/hongbapProject/hongbapMain/hongbapMain.jsp" class="btn btn-success">메인화면으로 가기</a>  
   </div>
   
   <hr/>
   
   <footer>
   
<div class="row">
<h6 class="text-primary text-center"><span class="br">홈페이지</span> : <strong>www.hongbap.com</strong></h6>
<h6 class="text-primary text-center"><span class="br">만든이</span> : <strong><span class="wordR">신우람</span> <span class="wordG">조훈현</span> 서성현</strong></h6>
</div>

</footer>	

 
   
   </form>
</div>

</body>
</html>