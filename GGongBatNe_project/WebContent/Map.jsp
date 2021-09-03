<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<style>
div.row {
	width: 100%;
	display: flex;
	border: 1px solid #003458;
}

div.left {
	width: 50%;
	float: left;
	box-sizing: border-box;
	background: #FFFFFF;
}

div.right {
	width: 50%;
	float: right;
	box-sizing: border-box;
	background: #FFFFFF;
}
</style>

<head>
<title>Map</title>
<meta charset="EUC-KR" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<h1>
				<a href="index.jsp">Alpha</a> by HTML5 UP
			</h1>
			<nav id="nav">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="#" class="icon solid fa-angle-down">Layouts</a>
						<ul>
							<li><a href="Map.jsp">Generic</a></li>
							<li><a href="contact.jsp">Contact</a></li>
							<li><a href="elements.jsp">Elements</a></li>
							<li><a href="#">Submenu</a>
								<ul>
									<li><a href="#">Option One</a></li>
									<li><a href="#">Option Two</a></li>
									<li><a href="#">Option Three</a></li>
									<li><a href="#">Option Four</a></li>
								</ul></li>
						</ul></li>
					<li><a href="#" class="button">Sign Up</a></li>
				</ul>
			</nav>
		</header>


		<body>

			<meta name="viewport"
				content="width=device-width, initial-scale=1, user-scalable=no" />
			<script type='text/javascript'
				src='//dapi.kakao.com/v2/maps/sdk.js?appkey=c396fe0efc7b0e5f37418f17f1fd034d'></script>

			<section id="intro" class="wrapper style1 fullscreen fade-up">
				<div class="inner" style="padding: 2em !important;">

					<p>실시간 위치확인하기</p>
					<div class="left" style="padding: 2em !important;">
						<div id="map"
							style="width: 500px; height: 550px; background-color: black; margin-left: 20px;"></div>
					</div>
					<div class="right" id="device_div"
						style="width: 50%; height: 30em; overflow: auto">
						<div id="device_div"
							style="width: 100%; height: 30cm; overflow: auto">
							<table id="kkk">
								<thead>
									<!-- 첫번째 행 -->
									<tr>
										<td>No.</td>
										<td>기기번호</td>
										<td>고장여부</td>
										<td>렌탈</td>
										<td>고장</td>
										<td><input type='checkbox' id="del_check_all"
											style='margin-right: 0 !important; appearance: auto !important; opacity: 100 !important;' />삭제</td>
									</tr>
								</thead>

							</table>
						</div>
			</section>
			<section id="main" class="container">
									
						<h3>채워 넣어야할 내용1</h3>
						<p>내용1</p>
						<div class="row">
							<div class="row-6 row-12-mobilep">
								<h3>채워 넣어야할 내용2</h3>
								<p>내용2</p>
							</div>
							<div class="row-6 row-12-mobilep">
								<h3>채워 넣어야할 내용3</h3>
								<p>내용3</p>
							</div>
						</div>
					</div>
				</section>



			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script>
				var lat_1 = 35.19444429414635;
				var lng_1 = 126.9530589614602;
				var container_1 = document.getElementById("map");
				var options_1 = {
					center : new kakao.maps.LatLng(lat_1, lng_1),
					level : 3,
					maxLevel : 12
				};
				var _kakaoMap = new kakao.maps.Map(container_1, options_1);
				kakao.maps.event.addListener(_kakaoMap, 'click', function(
						mouseEvent) {
					var latlng = mouseEvent.latLng;
					console.log(latlng);
				});
				var coords = [ {
					x : 35.19450,
					y : 126.95300,
					device : 82
				}, {
					x : 35.19448,
					y : 126.95298,
					device : 83
				}, {
					x : 35.19442,
					y : 126.95294,
					device : 84
				}, {
					x : 35.19438,
					y : 126.95293,
					device : 85
				}, {
					x : 35.19436,
					y : 126.95297,
					device : 86
				}, {
					x : 35.19435,
					y : 126.95300,
					device : 87
				}, {
					x : 35.19433,
					y : 126.95303,
					device : 88
				}, {
					x : 35.19430,
					y : 126.95311,
					device : 89
				} ];
				var tubes = new Object();
				var markerArray = new Array();
				var total = coords.length;
				var avail = 0;
				$
						.each(
								coords,
								function(i, v) {
									var overlay = "<div class='tubeLabel'><span>"
											+ v.device + "</span></div>";
									$(".tubeLabel").css("margin-top", "8px");
									var coordinate = new kakao.maps.LatLng(v.x,
											v.y);
									//_kakaoMap.setCenter(coord);
									var marker = new kakao.maps.Marker({
										position : coordinate
									});
									marker.device = coords.device;
									marker.setMap(_kakaoMap);
									var iwContent = '<div style="padding:5px;">Hello World!</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
									iwRemoveable = true;
									var infowindow = new kakao.maps.InfoWindow(
											{
												content : iwContent,
												removable : iwRemoveable
											});
									var iwContent = '<div style="padding:5px;">Hello World!</div>';
									var infowindow = new kakao.maps.InfoWindow(
											{
												content : iwContent
											});

									// 마커에 마우스오버 이벤트를 등록합니다
									kakao.maps.event.addListener(marker,
											'mouseover', function() {
												// 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
												infowindow.open(map, marker);
											});

									// 마커에 마우스아웃 이벤트를 등록합니다
									kakao.maps.event.addListener(marker,
											'mouseout', function() {
												// 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
												infowindow.close();
											});

									var co = new kakao.maps.CustomOverlay({
										position : coordinate,
										content : overlay
									});
									co.setMap(_kakaoMap);
									markerArray.push(marker);

									/* 	$.ajax({
										 	data: {
										        device_id: v.device
									        },
									        url:'SelectDeviceState',
									        contentType : "application/json; charset:euc-kr",
											dataType: "JSON",
									        success: function(jsonList){
									        	if ($.trim(jsonList.state) == 'F') {
									        		avail ++;
									        	}
												$("#statediv").text(avail + "/" + total);
									        },
									        error:function(a, b, c){
									            alert("에러가 발생하였습니다.");
									    	}
										}); */
								});
			</script>
		</body>
</html>