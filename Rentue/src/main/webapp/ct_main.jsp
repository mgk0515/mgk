<%@page import="com.model.CtDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ȸ�� �������Դϴ�.</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/ct_main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">

<%
	CtDTO dto = (CtDTO)session.getAttribute("dto");
%>

	<!-- Sidebar -->
	<section id="sidebar">
		<div class="inner">
			<ul class="actions small">
				<li><a href="#" class="button small">Ȩ����</a></li>
				<li><input type="button" value="my page" onclick="window.open('mypage.jsp', '����������', 'width=900px, height=1200px')" class="button primary small">
				</li>
				<li>
					<!-- �α��� �� �����̴ϱ� �α��� ��ư�� �α׾ƿ����� �ٲ��� �� --> 
					<input type="button" value="�α׾ƿ�" onclick="location.href='LogoutServiceCon'" class="button primary small">
				</li>

			</ul>
			<nav>
				<ul>
					<li><a href="#intro">RenTue MAP</a></li>
				</ul>
			</nav>
		</div>
	</section>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- <section>
					<div id = "join">
						<p>ȸ������ â</p>
					</div>
				</section> -->

		<!-- Intro -->
		<section id="intro" class="wrapper style1 fullscreen fade-up">
			<div class="inner">
				<h1>Rentue-������</h1>
				<div id="map" style="width: 800px; height: 600px;"></div>

			</div>
		</section>



	</div>

	<!-- Footer -->
	<footer id="footer" class="wrapper style1-alt">
		<div class="inner">
			<ul class="menu">
				<li>&copy; Untitled. All rights reserved.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>
	</footer>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7bf4d86dadf87fc45ddad1e9b45a01dd"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center : new kakao.maps.LatLng(<%= dto.getLat()%>, <%= dto.getLon()%>),
			level : 0
		}; 

		var map = new kakao.maps.Map(container, options);
	</script>

</body>
</html>