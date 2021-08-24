<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/kfonts2.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <style>
            *{padding: 10px; margin: 10px;}
            .resName{font: small-caps bold 24px/1 sans-serif;}
             span{font: small-caps bold 19px/1 sans-serif;}

        </style>
        <title>${res.resName }</title>
    </head>
    <body>
        <div class="container">
            <!-- Nav pills -->
            <ul class="nav nav-tabs nav-justified" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="pill" href="#home_p">home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="pill" href="#menu1_p">추천메뉴~!</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="pill" href="#menu2_p">미정</a>
                </li>
            </ul>
            
            <!--내용물들-->
            <div class="tab-content">
                <div id="home_p" class="container tab-pane active"><br>
                    <h1 id="resName">${res.resName }</h1>
                    <img width="300px" height="300px" src="캐러샐효과!">
                    <ul>
                        <li><span>전화번호</span> : ${res.resPnum} </li>
                        <li><span>주소</span> : ${res.resAddr}</li>
                        <li><span>영업시간</span> : ${res.resTime}</li>
                        <li><span>휴무일</span> : ${res.resHoliday}</li>
                        <li><button type="button" class="btn btn-link" data-toggle="modal" data-target="${res.resHomepage }">
                            홈페이지</button></li>
                    </ul>
                </div>
                
                <div id="menu1_p" class="container tab-pane fade"><br>
                    <h3>Best Menu</h3><hr/>
                    <c:forEach var="bestMenu" items="${menuList }">
                    <h5>${menu.menuName }</h5>
                    <div class="row row1">
                        <div class="col-md-3">
                    <img width="300px" height="300px" src="https://d1cua0vf0mkpiy.cloudfront.net/images/menu/normal/d8809d14-c01a-4291-b51d-8f5f450e4d58.png"></div>
                    <div class="col-md-7">
                        <ul>
                    <li>${menu.menuBook }</li>
                     <li>${menu.menuPrice }</li>
                </ul></c:forEach>
                    </div>
                </div>
                   
                </div>
                
                <div id="menu2_p" class="container tab-pane fade"><br>
                  <h3>미정</h3>
                  
                </div>
            </div>


  <!--<form action="상의필요" method="post">
    	<p>식당 만족도</p>
    	<div>
    		<input type="radio" name="" value="상">
    		<input type="radio"  name="" value="중">
    		<input type="radio" name="" value="하">
    	</div>
    	<input type="submit" value="평점주기">
    </form> -->


<br>
<p style="text-align: center;">
<a href="http://localhost:8181/hongbapProject/hongbapMain/hongbapMain.jsp"><button type="button" class="btn btn-warning buttonMain" >메인화면으로 가기</button></a>
<a href="http://localhost:8181/hongbapProject/board/boardWrite.jsp"><button type="button" class="btn btn-warning buttonMain" >요청글쓰기창</button></a>
<a href="http://localhost:8181/hongbapProject/board/boardList.jsp"><button type="button" class="btn btn-warning buttonMain" >요청게시판</button></a>
<a href="#"><button type="button" class="btn btn-success" style="color: white;">위로올리기</button></a>
</p>


</div>
</body>
</html>