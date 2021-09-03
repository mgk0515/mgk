<%@page import="GGong.Model.Complaints_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="GGong.Model.Complaints_DAO"%>
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
	
		Complaints_DAO dao = new Complaints_DAO();
		ArrayList<Complaints_DTO> list = new ArrayList<Complaints_DTO>();
		
		list= dao.showBoard();
				
				
				
		
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
				
						<h2>고객센터</h2>
						<p>불편한 점을 말해주세요. 자세를 고쳐 앉던지</p>
				
					</header>
					<div style="border: 1px solid; width: 100%; height: 20%;"></div>


		<table id="commtitle">
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">내용</th>
					<th scope="col">기기번호</th>
					<th scope="col">작성날짜</th>
				</tr>
				<% for (int i=0; i<list.size(); i++){ %>
					<tr>
						<td> <%= i+1 %></td>
						<td> <%= list.get(i).getCom_title() %></td>
						<td> <%= list.get(i).getCom_content() %></td>
						<td> <%= list.get(i).getGigi_name() %></td>
						<td> <%= list.get(i).getCom_date() %></td>		
					</tr>
				<%} %>

		
			</thead>
		</table>
		<ul class="actions special">
				
				<li><a href="service2.jsp" class="button">작성하기</a></li>
				<li><a href="index.jsp" class="button">뒤로가기</a></li>

			</ul>
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