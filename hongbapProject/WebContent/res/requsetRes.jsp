<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <style>
            *{padding: 0; margin: 0;}
            .title{font: small-caps bold 30px/1 sans-serif; margin:10px 30px 20px 0px;}
            .a{font: small-caps bold 22px/1 sans-serif;}
            .button{margin : 15px 0 0 0 ; }
            

    </style>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
</head>
<body>
    <form action="가게추가.do" method="post">
		<div class="container">
            <div class="row"><div class="col-lg-12 ">
            <br/>
            <h2 class="title">관리자용 음식점 추가폼</h2></div>
            </div>
            <div class="row">
                <div class="input-group">
                    <div class="input-group-prepend">
                          <span class="input-group-text a">음식카테고리</span>
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
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text ">가게이름</span>
                      </div>
                    <input type="text" name="resName" ><br/>
                </div>
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text ">가게주소</span>
                      </div>
                    <input type="text" name="resAddr" placeholder="00시00구00동"><br/>
                </div>
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text ">전화번호</span>
                      </div>
                    <input type="tel" name="resPnum" placeholder="000-0000-0000"><br/>
                </div>
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text ">영업시간</span>
                      </div>
                    <input type="text" name="resTime" placeholder="00~24"><br/>
                </div>
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text ">휴무정보</span>
                      </div>
                      <input type="text" name="resHoliday" placeholder="가게 휴무일"><br/>
                </div>
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text ">홈페이지</span>
                      </div>
                      <input type="text" name="resHomepage" placeholder="가게홈페이지"><br/>
                </div>
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text ">메뉴이름</span>
                      </div>
                      <input type="text" name="menuName" placeholder="메뉴이름"><br/>
                </div>
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text ">메뉴설명</span>
                      </div>
                      <input type="textarea" name="menuBook" placeholder="메뉴설명 간략히"><br/>
                </div>
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                          <span class="input-group-text ">메뉴가격</span>
                      </div>
                      <input type="text" name="menuPrice" placeholder="메뉴가격"><br/>
                </div>
                
            </div>
    </form>

	<div class="button">
        <button type="submit" class="btn buttonReq btn-dark " >Write</button>
        <button type="reset" class="btn buttonReset btn-dark ">Reset</button>
        <a href="http://localhost:8181/hongbapProject/hongbapMain/hongbapMain.jsp"><button type="button" class="btn btn-dark buttonMain" >메인화면으로 가기</button></a>
   <br/></div>
</div>

</body>
</html>