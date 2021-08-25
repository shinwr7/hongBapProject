<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<style>
    * {
        padding: 0;
        margin: 0;
        font: small-caps bold 24px/1 sans-serif;
        text-align: center;
    }
    h2{text-align: center; border-radius: 15px;  height: 35px; margin: 15px; background-color: #FACC2E; background-size: 450px;}
    .icon{  background-image: url("img/배경제거구름2.png");}
    .imgH{position: relative;}
</style>
<script>
    
</script>
<meta charset="UTF-8">
<title></title>
</head>
<body>
    <div class="container">
        <form action="http://localhost:8181/hongbapProject/boardDelete.do" method="post">
        <div class="row">&nbsp;</div>
        <div class="icon ">
            <div class="row">&nbsp;</div>
            <div class="row">&nbsp;</div>
            <div class="row">&nbsp;</div>
        <div class="row">
            <img
            src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuLNT1HhvwBWW7uliRR4GQ6rNIz-j3xMWcDeCvYsAxQ2hZYLUEit9LyxI8WxBentF-Gvg&usqp=CAU"
            class="imgH">
        </div>
            <div class="row">
            <div class="col-xs-12">
               <h2>회원님의 비밀 번호를 다시 입력해주세요</h2>
            </div>
            </div>
           
                <input type="password" name="UserPw" placeholder="비밀번호입력"><br/>
                <button type="submit" class="btn btn-warning" >제출</button>
            </form>
            <div class="row">&nbsp;</div>
            <div class="row">&nbsp;</div>
            <div class="row">&nbsp;</div>
            <div class="row">&nbsp;</div>
        </div>
    </body>
</html>