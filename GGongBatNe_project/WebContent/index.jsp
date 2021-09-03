<%@page import="GGong.Model.Members_DAO"%>
<%@page import="GGong.Model.Members_DTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>GGong Bad Ne</title>
<meta charset="EUC-KR" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="landing is-preload">

<%
		Members_DTO dto = (Members_DTO)session.getAttribute("mem_dto");
	
        Members_DAO dao = new Members_DAO();
		
		
	
	%>

	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" class="alt">

			<nav id="nav">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="#" class="icon solid fa-angle-down">Menu</a>
						
						<%if(dto !=null) {%>
						<ul>
							<li><a href="generic.jsp">하수구 관리</a></li>
							<li><a href="service.jsp">고객센터</a></li>
								
						</ul></li>
					<li><a href="LogoutServiceCon" class="button">Logout</a></li>
						
						<%}else{ %>
						
							<ul>
							<li><a href="generic.jsp">하수구 관리</a></li>
							<li><a href="service.jsp">고객센터</a></li>
								
						</ul></li>
					<li><a href="login.jsp" class="button">Login</a></li>
						<%} %>
					
				</ul>
			</nav>
		</header>

		<!-- Banner -->
		<section id="banner">
		<video muted autoplay loop >
		    <source src="vidios/vidio.mp4" type="video/mp4">
		</video>
		
			<h2>GGongBatNe</h2>
			<p>Korea NO.1</p>

			<ul class="actions special">
				<li><a href="index.jsp" class="button primary">HOME</a></li>
				<li><a href="generic.jsp" class="button">하수구 관리</a></li>
				<li><a href="service.jsp" class="button">고객센터</a></li>

			</ul>

		</section>
		<!-- CTA -->



		<!-- Main -->
		<section id="main" class="container">

			<section class="box special">
				<header class="major">
					<h2>담배 꽁초가 하수구를 타고 바다를 건너 다시 우리 입으로?!</h2>
					<p>
						[GGongBatNe] 하수구 꽁초 관련 문의 : 010-9657-9600  설치문의 : 010-9657-9600						
					</p>
					
					
					<p>
					[관할구청] 스마트 인재 개발원 : 062-XXX-XXXX</p>
				</header>
				<span class="image featured"><img src="images/ad01.jpg"
					alt="" /></span>
			</section>

			<section class="box special features">
				<div class="features-row">
					<section>
						<span class="icon solid major fal fa-smoking-ban"></span>

						<h3>꽁초 멈춰!!!</h3>
						<p>세계보건기구(WHO)에서는 전 세계 담배 팜매량의 3분의 2가 담배꽁초로 땅바닥에 버려지는 것으로 추산하고있다.
						연간 6조 개비의 담배가 생산돼 이 중 4조개의 담배꽁초가 버려지는 셈이다.</p>
						<p>해양 보존센터(Ocean Conservancy)가 발표한 자료에 따르면, 지난 32년간 전 세계 해변에서 수거한 해양 쓰레기의 3분의
						1이 담배꽁초였다.</p>
					</section>
					<section>
						<span class="icon solid major fas fa-biohazard"></span>
						<h3>유해물질</h3>
						<p>담배 필터는 흰 솜으로 생각하기 쉽지만, 실제로는 '셀룰로스 아세테이트'로 만들어져 있고, 다느다란 플라스틱 섬유를 포함한다.
						필터 하나에 1만 2000개의 가는 섬유가 들어있다. </p>
						<p>셀룰로스 아세테이트의 분해 속도 = 18개월~10년이상</p>
						<p>7000가지 화학 물질이 필터를 통해 환경에 유출되는데 그중 50가지는 발암물질이다.</p>
					</section>
				</div>
				<div class="features-row">
					<section>
						<span class="icon solid major fas fa-water"></span>
						<h3>꽁초와 바다와 우리</h3>
						<p>하수구에 버려진 꽁초의 필터가 서서히 녹기 시작하는데 하수처리장에서 이 유해물질이 전부 걸러지지 않으며 도로 근처의 하수구는 바로 
						강으로 빠지며 바다로 이어진다.</p>
						<p>미국 환경보호청(EPA)의 실험에서 물 1L에 담배꽁초 '하나'를 96시간 담가 유해물질이 눅아 나오도록 한 다음 민물고기 또는 바다
						물고기를 넣은 결과 반 이상이 죽는 것으로 나타났다.</p> 
					</section>
					<section>
						<span class="icon solid major fas fa-won-sign"></span>
						<h3>꽁초피해액</h3>
						<p>폐기물 부담금은 약 876억 원에 이르지만, 부담금 대부분은 꽁초 수거와 처리에 쓰이지 않고 있다.</p>
						<p>하수구 속 꽁초로 인해 하수구가 막혀 역류하면 큰 피해를 입힐 수 있고 그 만큼의 복원비가 들어간다.</p>
						<p>악취로 인해 주변 상가가 금전적인 피해를 받을 수 있다.</p>
					</section>
				</div>
			</section>

			<div class="row">
				<div class="col-6 col-12-narrower">

					<section class="box special">
						<span class="image featured"><img src="images/pic02.jpg"
							alt="" /></span>
						<h3>제1회 꽁초 아이디어 공모전</h3>
						<p>친환경적이고 기술적인 아이디어라면 누구나 신청가능 총 상금 1500만원!!</p>
						<ul class="actions special">
							<li><a href="#" class="button alt">Learn More</a></li>
						</ul>
					</section>

				</div>
				<div class="col-6 col-12-narrower">

					<section class="box special">
						<span class="image featured"><img src="images/pic03.jpg"
							alt="" /></span>
						<h3>꽁초 줍고 용돈 벌자!!!</h3>
						<p>꽁초를 주워서 가져오시면 보상금을 드립니다. 최대 6만원이니 많은 참여 부탁드립니다.!
						단, 물기X</p>
						<ul class="actions special">
							<li><a href="#" class="button alt">Learn More</a></li>
						</ul>
					</section>

				</div>
			</div>

		</section>



		<!-- Footer -->
		<footer id="footer">
			<ul class="icons">
				<li><a href="#" class="icon brands fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands fa-facebook-f"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon brands fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon brands fa-github"><span
						class="label">Github</span></a></li>
				<li><a href="#" class="icon brands fa-dribbble"><span
						class="label">Dribbble</span></a></li>
				<li><a href="#" class="icon brands fa-google-plus"><span
						class="label">Google+</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Untitled. All rights reserved.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</footer>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
 
</body>
</html>