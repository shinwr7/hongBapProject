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
            <h1>관리자용 식당 추가 페이지</h1>
            </div>
            </div>
            <hr/>
            
            <div class="row">
                <div class="input-group">
                    <div class="input-group-prepend">
                          <span class="input-group-text a  ">음식카테고리</span>
                      </div>
                      <select name="resCategory">
                        <option value="한식">한식</option>
                        <option value="중식">중식</option>
                        <option value="일식">일식</option>
                        <option value="양식">양식</option>
                        <option value="분식">분식</option>
                        <option value="패스트푸드">패스트푸드</option>
                    </select>
                </div>
                </div>
                
                <br/> 
<div class="row">
                <div class="input-group input-group-sm ">
                    <div class="input-group-prepend">
                          <span class="input-group-text ">가게이름</span>
                      </div>
                    <input type="text" class="form-control" name="resName" >
                </div>
                </div>
                
                <br/>
                
                <div class="row">
                <div class="input-group input-group-sm ">
                    <div class="input-group-prepend">
                          <span class="input-group-text  ">가게주소</span>
                      </div>
                    <input type="text" class="form-control" name="resAddr" placeholder="00시00구00동">
                </div>
                </div>
                
                <br/>
                
                <div class="row">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text  ">전화번호</span>
                      </div>
                    <input type="tel" class="form-control" name="resPnum" placeholder="000-0000-0000">
                </div>
                </div>
                
                <br/>
                
                <div class="row">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text  ">영업시간</span>
                      </div>
                    <input type="text" class="form-control" name="resTime" placeholder="00~24">
                </div>
                </div>
                
                <br/>
                
                <div class="row">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text  ">휴무정보</span>
                      </div>
                      <input type="text" class="form-control" name="resHoliday" placeholder="휴무일">
                </div>
                </div>
                
                <br/>
                
                <div class="row">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text  ">홈페이지</span>
                      </div>
                      <input type="text" class="form-control" name="resHomepage" placeholder="홈페이지">
                </div>
                </div>
                
                <br/>
                
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