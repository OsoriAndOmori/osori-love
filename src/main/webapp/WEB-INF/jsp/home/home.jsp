<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<meta content="blendTrans(Duration=0.5)" http-equiv="Page-Enter" />
	<meta content="blendTrans(Duration=0.5)" http-equiv="Page-Exit" /> 
	<title>Welcome to KKH's Home</title>
	<link href="/css/default.css" rel="stylesheet" type="text/css">
	<link href="/css/header.css" rel="stylesheet" type="text/css">
	<link href="/css/home.css" rel="stylesheet" type="text/css">
	<link href="/css/footer.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="/js/lib/jquery/jquery-1.11.2.js"></script>
	<script type="text/javascript" src="/js/lib/jquery/plugins/s3Slider.js"></script>
	<script type="text/javascript">
	$(document).ready(function() { 
		$('#s3slider').s3Slider({
			timeOut: 4000
		});
	});
	</script>
</head>
<body>
	<div id="wrap">
	<header>
		<div class="clear"></div>	
		<div id="logo">
		<a href="/"><img src="/images/logo.png" width="320" height="62" alt="KimKiHoon"/></a>	</div>
		<nav id="top_menu">
            <ul>
                <li><a href="/">HOME</a></li>
                <li><a href="/spec">SPEC</a></li>
                <li><a href="/music">MUSIC</a></li>
                <li><a href="/friend">FRIENDS</a></li>
                <li><a href="/contact">CONTACT ME</a></li>
			</ul>
		</nav>
	</header>	

	<div id="main_img">
		<div id="s3slider">
			<ul id="s3sliderContent">
				<li class="s3sliderImage">
					<img src="/images/sujin1.jpg" width="971" height="282">
					<span> '김수진'을 만나서 행복합니다! </span>
				</li>
				<li class="s3sliderImage">
					<img src="/images/main_img.jpg" width="971" height="282">
					<span> 여기는 이촌역 공원의 어떤 벤치~! </span>
				</li>
				<div class="clear s3sliderImage"></div>
			</ul>
		</div>
	</div>
					
		
	<article id="front">
		<div id="intro">
			<div id="oma">
				<center><h3>오마 초등학교, 중학교 공부벌레</h3></center>
				<p>난 분명 게임에 미쳐 살았는데, 남들은 내가 공부 잘하는 줄 알았다. 카트라이더는 약 1달간 스피드전 랭킹 1위였고, 겟앰프드는 랭크 92위.</p>
			</div>
			<div id="myung">
				<center><h3>명덕외고 최고의 열등아</h3></center>
				<p>지금 현재까지 친한 고등학교 친구들 중 그 누구보다 공부를 못했다. 왜냐면 컴퓨터게임이 재밌었더라.<br> " 카오스 "노답..</p>
			</div>
			<div id="korea">
				<center><h3>고대에서 그나마 사람 좀 됨</h3></center>
				<p>공부하다보니 컴퓨터가 재밌더라고. <br>여자친구 꼬시려고 기타도 배움.<br>그리고 김수진님 꼬셨음.</p>
			</div>
		</div>
	</article>
	<br><br><br>
	<div class="clear"></div>	
	<footer>
		<hr></hr>
			<div id="copy">All contents Copyright 2015 Ki Hoon. All rights reserved<p> Contact mail : skywhite15@korea.ac.kr &nbsp&nbsp Tel: 안알랴줌</div>
			<div id="social">
				<a href="https://www.facebook.com/profile.php?id=100007643116093"><img src="/images/facebook.gif" width="33" height="33" alt="Facebook"></a>
				<a href="http://www.cyworld.com/skywhite15"><img src="/images/cyworld.gif" width="105" height="27" alt="Cyworld"></a>
			</div>
	</footer>
</div>
</body>
</html>
