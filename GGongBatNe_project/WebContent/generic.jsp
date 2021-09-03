
<%@page import="GGong.Model.Members_DAO"%>
<%@page import="GGong.Model.Gigi_Sensors_DTO"%>
<%@page import="GGong.Model.Gigi_Sensors_DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="GGong.Model.Members_DTO"%>
<%@page import="GGong.Model.Gigi_Names_DAO"%>
<%@page import="GGong.Model.Gigi_Names_DTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<!--
	Alpha by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<link rel="stylesheet" href="assets/css/whether.css" />

	<head>
		<title>Generic - Alpha by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main2.css" />
		
	</head>
	
	<body class="is-preload">
	<%
	request.setCharacterEncoding("utf-8");
	Members_DTO mem_dto = (Members_DTO) session.getAttribute("mem_dto"); 
	
	
    Gigi_Names_DAO name_dao = new Gigi_Names_DAO();
	ArrayList<Gigi_Names_DTO> gigi_list = name_dao.select(mem_dto.getMem_area());
	
	System.out.println(gigi_list.get(0).getGigi_name());
	
	Members_DTO dto = (Members_DTO)session.getAttribute("mem_dto");

	

	
	%>
	
	
	
	
	<!--  카카오 맵 api 불러오기 -->
	<script type='text/javascript'src='//dapi.kakao.com/v2/maps/sdk.js?appkey=e99022b6f91dd955ccad95591a8ecb63'></script>

	
	

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
							<li><a href="generic.jsp">하수구 관리</a></li>
							<li><a href="service.jsp">고객센터</a></li>
								
						</ul></li>
						<% if(dto !=null) {%>
					<li><a href="LogoutServiceCon" class="button">Logout</a></li>
					<%}else{ %>
					<li><a href="login.jsp" class="button">Login</a></li>
					<%} %>
				</ul>
			</nav>
		</header>

			<!-- Main -->
				<section id="main" class="container">
					<header>
						<h2>Generic</h2>
						
						<section>
					<div class="weather" style="height: 100px;">
						<div id="slide_wrap">
							<div id="slideGroupView">
								<div id="slideGroup">
									<div class='slideItem' style="position: absolute">
										<div style="display: inline-block;">
											<div class='CurrIcon Icon'></div>
										</div>
										<div class='CurrTemp' style = "margin-right: 15px;"></div>
										<div style="display: inline-block;">
											<div class='Currweather' style="float: right;"></div>
											<br>
											<div class='City' style="float: right; margin-right: 10px;"></div>
										</div>
									</div>
									<div class='slideItem'>
										<div style="display: inline-block;">
											<img src="images/wi-strong-wind.svg" class='windimg' alt="">
											<div class='Wind' style="display: block;"></div>
										</div>
										<div style="display: inline-block;">
											<img src="images/wi-humidity.svg" class='humimg' alt="">
											<div class='CurrHum' style="display: block;"></div>
										</div>
										<div style="display: inline-block;">
											<img src="images/03.svg" class='cloudimg' alt="">
											<div class='Cloud' style="display: block;"></div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
						
					</header>
					<div class="box">
						
						
						
							<!-- 작업 부분 -->
						
						
				<section class="box special features" >
				<div class="features-row" style="widty:500px;">
					<section class="sec1" style =  "height: 550px; padding-left: 0">
						<div id="map"
							style="width: 100%; height: 100%; background-color: black; float: right"></div>
					
					</section>
					<section class="sec2">

						<div id="device_div" style="overflow: auto; height : 550px">
							<table id="kkk">
								<thead>
									<!-- 첫번째 행 -->
									<tr>
										<td>No.</td>
										<td>기기명</td>
										<td>현재 상태</td>
										<td>현재 온도</td>
										<td>담당자</td>
									</tr>
											
									
<!-- 									for문 이용해서 센서 값 불러오기		 -->
											
									
								</thead>
								<%for(int i=0; i<gigi_list.size(); i++){ %>
									<tr>
										<td><%= i+1 %></td>
										<td><%= gigi_list.get(i).getGigi_name() %></td>
										<td><%= gigi_list.get(i).getGigi_vol() %> %</td>
										<td><%= gigi_list.get(i).getGigi_temp() %> ˚C</td>
										<td><%= mem_dto.getMem_name() %></td>
									</tr>
										
										
									<%}; %>		

							</table>
						</div>
					</section>
				</div>
				</section>
						
						
				
				
				<section>							
					<canvas id="myChart" height="300" width="550"></canvas>
					<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>		
				</section>
				
						
						
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
			<script src="assets/js/weather.js"></script>
			<script src="assets/js/slide.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
		

		 <!-- 제주공항33.507014, 126.492953 -->

			<script>
			

// 				var lat_1 = 33.507014;
// 				var lng_1 = 126.492953;
// 				var container_1 = document.getElementById("map");
// 				var options_1 = {
// 					center : new kakao.maps.LatLng(lat_1, lng_1),
// 					level : 3,
// 					maxLevel : 12
// 				};
// 				var _kakaoMap = new kakao.maps.Map(container_1, options_1);
// 				kakao.maps.event.addListener(_kakaoMap, 'click', function(
// 						mouseEvent) {
// 					var latlng = mouseEvent.latLng;
// 					console.log(latlng);
// 				});
// 				var coords = [];
				
<%-- 				<% --%>
// 				for (int i = 0; i < gigi_list.size(); i++) {
<%-- 				%> --%>
<%-- 					var abc = {x : <%=gigi_list.get(i).getGigi_location_A()%>, --%>
<%-- 							y : <%=gigi_list.get(i).getGigi_location_B()%> --%>
// 							};
// 					coords.push(abc);
// 					console.log("abc"+abc);
<%-- 				<%	 --%>
// 				};
<%-- 				%> --%>


				
// 				var tubes = new Object();
// 				var markerArray = new Array();
// 				var total = coords.length;
// 				var avail = 0;
// 				$
// 						.each(
// 								coords,
// 								function(i, v) {
// 									var overlay = "<div class='tubeLabel'><span>"
// 											+ v.device + "</span></div>";
// 									$(".tubeLabel").css("margin-top", "8px");
// 									var coordinate = new kakao.maps.LatLng(v.x,v.y);
// 									//_kakaoMap.setCenter(coord);
// 									var marker = new kakao.maps.Marker({
// 										position : coordinate
// 									});
// 									marker.device = coords.device;
// 									marker.setMap(_kakaoMap);
									
// 									var iwContent = '<div style="padding:5px;">하이</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
// 									iwRemoveable = true;
// 									var infowindow = new kakao.maps.InfoWindow(
// 											{
// 												content : iwContent,
// 												removable : iwRemoveable
// 											});								

// 									// 마커에 마우스오버 이벤트를 등록합니다
// 									kakao.maps.event.addListener(marker,
// 											'mouseover', function() {
// 												// 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
// 												infowindow.open(_kakaoMap, marker);
// 											});

// 									// 마커에 마우스아웃 이벤트를 등록합니다
// 									kakao.maps.event.addListener(marker,
// 											'mouseout', function() {
// 												// 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
// 												infowindow.close();
												
// 											});

// 									var co = new kakao.maps.CustomOverlay({
// 										position : coordinate,
// 										content : overlay
// 									});
// 									co.setMap(_kakaoMap);
// 									markerArray.push(marker);

// 									/* 	$.ajax({
// 										 	data: {
// 										        device_id: v.device
// 									        },
// 									        url:'SelectDeviceState',
// 									        contentType : "application/json; charset:euc-kr",
// 											dataType: "JSON",
// 									        success: function(jsonList){
// 									        	if ($.trim(jsonList.state) == 'F') {
// 									        		avail ++;
// 									        	}
// 												$("#statediv").text(avail + "/" + total);
// 									        },
// 									        error:function(a, b, c){
// 									            alert("에러가 발생하였습니다.");
// 									    	}
// 										}); */
// 								});
				
				
// ======================================================== 하수구 관리 연습				
				

				
				
				var mapContainer = document.getElementById('map'), // 하수구 관리를 표시할 div  
			    mapOption = { 
			        center: new kakao.maps.LatLng(35.1104375, 126.8778125), // 하수구 관리의 중심좌표
			        level: 3, // 하수구 관리의 확대 레벨
			        maxLevel : 12
			    };

			var map = new kakao.maps.Map(mapContainer, mapOption); // 하수구 관리를 생성합니다
			
			
			// 마커 이미지 바꾸기
			
			var markerImageSrc = 'https://i.ibb.co/VjD3JNj/blue.png'; 
			var bluemarkerImageSrc = 'https://ifh.cc/g/jhZxaD.png';
			var yellowmarkerImageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png';
			var redmarkerImageSrc = 'https://ifh.cc/g/P8ZmrH.png';
			
			function createMarkerImage(src, size, options) {
			    var markerImage = new kakao.maps.MarkerImage(src, size, options);
			    return markerImage;            
			}
			
			var imageSize = new kakao.maps.Size(24, 35),
            	imageOptions = {  
                spriteOrigin: new kakao.maps.Point(0, 0),    
                spriteSize: new kakao.maps.Size(24, 35)  };
			 
			var bluemarkerImage = createMarkerImage(bluemarkerImageSrc, imageSize, imageOptions);
			var yellowmarkerImage = createMarkerImage(yellowmarkerImageSrc, imageSize, imageOptions);
			var redmarkerImage = createMarkerImage(redmarkerImageSrc, imageSize, imageOptions);
			
			
			console.log("asasas");
			
			// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
			var positions = [];
					
			<%
			for (int i = 0; i < gigi_list.size(); i++) {
			%> 
				var na = '<%=gigi_list.get(i).getGigi_name()%>';
				
				
				var abc = {content : '<div>'+na+'</div>',
						latlng : new kakao.maps.LatLng( <%=gigi_list.get(i).getGigi_location_A()%>,<%=gigi_list.get(i).getGigi_location_B()%>),
             	        image	: 
             	        	
             	        	<% if(Integer.parseInt(gigi_list.get(i).getGigi_vol()) > 60){%>
             	        	createMarkerImage(redmarkerImageSrc, imageSize, imageOptions)
             	        	<% }else if(Integer.parseInt(gigi_list.get(i).getGigi_vol()) > 24){%>
             	        	createMarkerImage(yellowmarkerImageSrc, imageSize, imageOptions)
             	        	<% }else{%>
             	        	createMarkerImage(bluemarkerImageSrc, imageSize, imageOptions)
             	        	<%}%>
								
//	new kakako.maps.MaekerImage(imageSrc, imageSize, imageOption)(if문으로 마커 결정 하기)						
				
						};
				positions.push(abc);
				console.log("abc"+abc);
			<% }; %> 

			for (var i = 0; i < positions.length; i ++) {
			    // 마커를 생성합니다
			    var marker = new kakao.maps.Marker({
			        map: map, // 마커를 표시할 하수구 관리
			        position: positions[i].latlng, // 마커의 위치
			      	image: positions[i].image
			    });  // 위치랑 마우스 올렸을때 나오는곳 배열 저장

			    


			    // 마커에 표시할 인포윈도우를 생성합니다 
			    var infowindow = new kakao.maps.InfoWindow({
			        content: positions[i].content // 인포윈도우에 표시할 내용
			    });

			    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
			    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
			    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
			    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
			}

			// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
			function makeOverListener(map, marker, infowindow) {
			    return function() {
			        infowindow.open(map, marker);
			    };
			}

			// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
			function makeOutListener(infowindow) {
			    return function() {
			        infowindow.close();
			    };
			}
				
// ====================================================================== 바 차트 		


var name12 =[];
var count12 = [];


<%
for (int i = 0; i < gigi_list.size(); i++) {
%>	var n='<%=gigi_list.get(i).getGigi_name()%>';
	name12.push(n);
	console.log("aaaa"+name12);
<%	
};
%>


<%
for (int i = 0; i < gigi_list.size(); i++) {
%>
var c=<%=gigi_list.get(i).getGigi_count()%>;
	count12.push(c);
	
<%	
};
%>

console.log("cccc"+count12);




var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: name12,
        datasets: [{
            label: '빈도수',
            data: count12,
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        maintainAspectRatio: false,
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});




				
				
				
				
			</script>

	</body>
</html>