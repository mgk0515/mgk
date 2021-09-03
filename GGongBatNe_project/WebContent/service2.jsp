<%@page import="GGong.Model.Complaints_DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="GGong.Model.Complaints_DTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<!--
	Alpha by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Contact - Alpha by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">
	
	<%
		String gigi_name1 = request.getParameter("gigi_name");
			System.out.println(gigi_name1);
	%>
	
		<div id="page-wrapper">

		<!-- Header -->
		<header id="header" class="alt">
		<style>
		#header.alt {
		background-color: #1E90ff;
		}	</style>
		

			<nav id="nav">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="#" class="icon solid fa-angle-down">Menu</a>
						<ul>

							<li><a href="generic.jsp">지도</a></li>
							<li><a href="service.jsp">고객센터</a></li>
								

						</ul></li>
					<li><a href="login.jsp" class="button">Login</a></li>
				</ul>
			</nav>
		</header>
		
		
			<!-- Main -->
				<section id="main" class="container medium">
					<header>
						<h2>문의하기</h2>
						<p>비판해주셔서 감사합니다.</p>
					</header>
					<div class="box">
						<form method="post" action="BoardServiceCon">
							<div class="row gtr-50 gtr-uniform">
								<div class="col-12">
									<input type="text" name="title" value="" placeholder="제목을 입력해주세요." />
								</div>
								<div class="col-6 col-12-mobilep">

									<input type="text" name="gigi_name"  value="<%=gigi_name1 %>" placeholder="기기번호" />

								</div>
								<div class="col-6 col-12-mobilep">

									<input type="text" name="phone" value="" placeholder="연락받을 전화번호" />

								</div>
								<div class="col-12">
									<textarea name="contents"  placeholder="내용을 입력해주세요." rows="15"></textarea>
								</div>
								<div class="col-12">
									<ul class="actions special">
										<li><input type="submit" value="제출" /></li>
										<li><a href="service.jsp" class="button">뒤로가기</a></li>
									</ul>
								</div>
							</div>
						</form>
					</div>
				</section>

			<!-- Footer -->
				<footer id="footer">
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon brands fa-google-plus"><span class="label">Google+</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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