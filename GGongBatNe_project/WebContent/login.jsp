<%@page import="GGong.Model.Members_DAO"%>
<%@page import="GGong.Model.Members_DTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<!--
	Eventually by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Eventually by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/login.css" />
	</head>
	
	<!--  map css -->
	<style>
	.area {
    position: absolute;
    background: #fff;
    border: 1px solid #888;
    border-radius: 3px;
    font-size: 12px;
    top: -5px;
    left: 15px;
    padding:2px;
    
}

.info {
    font-size: 12px;
    padding: 5px;
    color : black;
}
.info .title {
    font-weight: bold;
}</style>



	<body class="is-preload">
	<%
        Members_DTO dto = (Members_DTO)session.getAttribute("dto");
	
        Members_DAO dao = new  Members_DAO();		
	
	%>

		<!-- Header -->
		<header id="header">
			<h1><a href="index.jsp">Home</a></h1>
			<p>로그인  </p>
		</header>

		<!-- 메뉴 -->
		<header id="navigation" class="alt">
			<h1><a href="index.jsp">Home</a></h1>
			<nav id="nav">
				<ul>
					<li class="special">
						<a href="#menu" class="menuToggle"><span>회원가입</span></a>
						<style>#menu{
						background-color: #1E90ff; }
						</style>
 						<form action="">
						<div id="menu">
							<ul>
							 맵 API 손대는중임 
							<strong>회원가입</strong>
								<li><input type="text" name="Id" id="Id" placeholder="사원번호를 입력하세요" /></li>
								<li><input type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요" /></li>
								<li><input type="text" name="name" id="name" placeholder="사원명를 입력하세요" /></li>
								<li><input type="text" name="phone" id="phone" placeholder="핸드폰번호를 입력하세요" /></li>
								<br>
								<h6>담당지역선택</h6>
								<li id = "map" style="width:100%;height:350px;" ></li>
								<li><input type = "submit" id = "subJoin" value = "회원가입" style="background-color: orange " /></li>
							</ul>
						</div>
						</form>
					</li>
				</ul>
			</nav>
		</header>

		<!-- 로그인 모듈 -->
		
			<form action="LoginServiceCon" id="signup-form" method="post">
				<input type="text" name="mem_id"  placeholder="사원번호를 입력하세요" id = "mem_id">
				<input type="password" name="mem_pw"  placeholder="비밀번호를 입력하세요" id= "mem_pw">
				<input type="button" value="확인" class="button small" onclick="button_login()">
				
			</form>
		

		<!-- Scripts -->
		<!-- 로그인 자바스크립트에서 로그인되면 로그인 되었습니다 추가햇는데 데이터 받아서 연동 시켜야될듯 -->
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9251a02f01537afedfa5e0e6b3874711"></script>
		<script src="assets/js/loginmap.js"></script>
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>

		<script src="assets/js/login.js"></script>
		<script src="assets/js/menu.js"></script> 
		
		<!--  한글깨짐 방지 js-->
		<script src="assets/js/loginmap.js" type="text/javascript"></script>
<script>
 
//로그인 ajax 코드
	function button_login(){
		
		 id = $('#mem_id').val();
		 pw = $('#mem_pw').val();
		 

		 
	    $.ajax({
	        url:'LoginServiceCon',
	        type:'post',
	        data: {
	        	
	        	mem_id : id,  mem_pw: pw,
	        },
	        
	       success:function(data){	 	    	
	    		console.log("완료!");
	   			let url = 'index.jsp';
	   			if(data == 'loginFail'){
	   				alert('로그인에 실패하였습니다.')
	   				url = 'login.jsp';
	   			}
         	location.replace(url);
	        },
	        error:function(){
	   
	           alert("에러가 발생하였습니다.");
	           location.reload(true);
	           

	           
	    	}
	    });	

	}
 </script>
		



	</body>
</html>