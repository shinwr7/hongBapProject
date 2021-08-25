<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{padding: 0; margin: 0; }
	h1 h2 {font: small-caps bold 30px/1 sans-serif; }
	h1{ border-radius: 15px; background-color: #FACC2E;}
	.storeN{color: rgb(121, 32, 32);}
	h2{color: #64CD3C;}
	.snd{color: red;}
	
	.word{text-align: center;}
	.gre{border-radius: 14px; background-color: #8B5927; } 
	.bro{border-radius: 14px; background-color:#228B22; margin: 0 0 5px 0;}
	.buttonGo{margin:15px 0 5px 0; border-radius: 15px; text-align: center; background-color: #FACC2E;}
	.redW{color: brown;}
 	.randomimg{border-radius: 35px; height: 250px; text-align: center; font: small-caps bold 30px/1 sans-serif; color: black; background-image: url("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMTBfMjY1%2FMDAxNjEwMjE0OTcwNTEx.XK7MST1z9whArzIlYg4KnDn7-_puGiN3Kz1NAaPY6XAg.l3sitVfjvAJjV8gtIW3wZJ93LrzsdHhMX5LMUNoudasg.JPEG.ra4754%2FScreenshot%25A3%25DF20210110%25A3%25AD024340%25A3%25DFKakaoTalk.jpg&type=a340");}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12 word">
				<h1><span class="redW">H</span>ong<span class="redW">B</span>ap <span class="redW">R</span>andom <span class="redW">P</span>ick</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 word gre">
				<h2> 오<span class="snd">늘</span>의 <span class="snd">추</span>천<span class="snd">식</span>당 </h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 word bro">
				<h2 class="storeN">${randomResult.resName}~!!!</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 randomimg">
			</div>	
		</div>
		<div class="row" style="font-size : 5%;">
		 &nbsp;
		</div>
		<div class="row">
			<div class="col-md-12 buttonGo">
				<a href="가게리스트.do?page=${randomResult.resId}"><button type="button" class="btn btn-warning">${randomResult.resName} 으로 이동~!</button></a>
			</div>
		</div>
		<p class="button">
			<a href="http://localhost:8181/hongbapProject/randompick.do"><button type="button" class="btn btn-danger">다른 거 뽑기</button></a>
			<a href="http://localhost:8181/hongbapProject/hongbapMain/hongbapMain.jsp"><button type="button" class="btn btn-success">메인화면으로 가기</button></a>
		</p>
	</div>
</body>
</html>