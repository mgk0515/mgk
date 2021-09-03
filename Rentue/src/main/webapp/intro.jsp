<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<style>

/* wave ȿ�� */
.wave{
  width:1000px;
  height: 1000px;
  background-image:url('images/main1.png');
  background-size:100%;
  position:relative;
}

li {
	list-style: none;
}

#logo {
	margin-left: 1.7em;
	width: 290px;
	heigh: 300px;
}



</style>
<head>
<meta charset="EUC-KR">


<title>RenTue ���������� �Դϴ�!!</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<!-- �α��� â ���� ���� jquery �ҷ����� -->
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>

<!-- �α��� ��ư ������ ID/PWâ �߰� ������ �ڵ� -->
		<script type="text/javascript">
		$(function(){
			$("#showbtn").click(function(){
				$("#displaydiv").slideDown(); });
		});
		
		$(function(){
		$("#hidebtn").click(function(){
			$("#displaydiv").slideUp(); });
		});
		</script>

</head>

<body class="is-preload">





	<!-- Sidebar -->
	<section id="sidebar">
			<div style="float:left;"><p style="text-align:left; "><img src="images/logo2.png" id = "logo"></p><div>
		<div class="inner">
			
			<div style = "align: right; margin-bottom: 2em;">
				<li id="displayselect"><input type="button" id="showbtn" value="�α���" class="button small"></li>
			<!-- <ul class="actions small"> -->
				<!-- <li><a href="#" class="button small">Ȩ����</a></li> -->
				<!-- <li><a href="#" class="button primary small">�α���</a></li> -->
			<!-- </ul> -->
			</div>
		
			

			<!-- ������ �ִ� �α��� �����κ� -->
			<div style="display: none;" id="displaydiv">

				<span>
					<input type="radio" name="member2" value="Rent_member" checked>��Ż��ü <input type="radio" name="member2" value="Ct_member">������
				</span>
				<span>
					ID<input type="text" name="id2" id="id2">
				</span>
				<span>
					PW<input type="password" name="pw2" id="pw2">
				</span>

				<div id="container">
					<button id="btn-modal" class="button primary small">ȸ������</button>
					<input type="button" id="hidebtn" value="Ȯ��" class="button small" onclick="button_login()">

				</div>

			</div>



			<nav>
				<ul>
					<li><a href="#intro">Welcome</a></li>
					<li><a href="#one">What's RenTue?</a></li>
					<li><a href="#two">Contact RenTue</a></li>

				</ul>
			</nav>
		</div>
	</section>

	
	
	
	
	
	<!-- Wrapper -->
	<div id="wrapper">


		<!-- Intro -->
		<!-- <section id="intro" class="wrapper style1 fullscreen fade-up"> -->
		<section id="intro" class="wrapper style1 fullscreen fade-up"
		style="background-image: url('images/main1.png')">
		
	
			<div class="inner wave" width="100%"; height ="100%";>
					
				
			</div>

		<!-- ȸ������â ���â���� �� -->
			<div id="modal" class="modal-overlay" style="position: absolute;">
				<div class="modal-window">
					<div class="title">
						<div align="center" style = "float:left; margin-right:12.5em; margin-left:2em; margin-top:1em;">Let's Rentue-Member!</div>
						<div class="close-area" style = "float:right;">X</div>
					</div>
					<div class="content">
						<p>
						<div>
						<li><input type="radio" name="member" value="Rent_member" checked>��Ż��ü <input type="radio" name="member" value="Ct_member">������</li>
						<li><input type="text" placeholder="ID�� �Է��ϼ���" id="id"></li>
						<li><span></span></li>

						<!--�̹� �ִ� ���̵� �Դϴ� or ���� ���̵�׿�!-->

						<li><input type="password" placeholder="PW�� �Է��ϼ���" id="pw"></li>
						<!-- ������ ���ýÿ��� ��ü��� ����ڹ�ȣ�� ��Ȱ��ȭ �Ǿ�� �Ѵ� -->

						<li><input type="text" placeholder="��ü�� �Է��ϼ���" id="rent_name"></li>
						<li id="r_num"><input type="text" placeholder="����ڹ�ȣ�� �Է��ϼ���" id="rent_num"></li>
						<li><input type="text" id="sample5_address" placeholder="�ּҸ� �˻��ϼ���"> <input type="button" onclick="sample5_execDaumPostcode()" value="�ּ� �˻�"></li>
						<li id="select"><select id="targetSel">
								<option>�Ҽ� ������ ����</option>
						</select>
							<button id="search">����� ������ ã��</button></li>
						<li><button id="submit" type="button" onclick="button_join()">JOIN US</button></li>
						<div id="map" style="width: 170px; height: 170px; margin-top: -100px; float: right; display: none"></div>
						</div>
						
						</p>
		
			
		</section>

		<!-- One -->
		<section id="one" class="wrapper style2 fullscreen spotlights">
			<section style="padding: 2em !important;">
				<a href="#" class="image"><img src="images/pic01.jpg" alt="" data-position="center center" /></a>
				<div class="content">
					<div class="inner">
						<h2>��ǰ�Ұ�</h2>
						<p>��ǰ�����</p>
						<ul class="actions">
							<li><a href="modal" class="button scrolly">Join Us</a></li>
						</ul>
					</div>
				</div>
			</section>
		</section>

		<!-- Two -->
		<section id="two" class="wrapper style1 fullscreen fade-up">
			<div class="inner">
				<section style="padding: 2em !important;">
				<h2>Get in touch</h2>
				<p>���� ����</p>
				<div class="split style1">
					<section>
						<form method="post" action="#">
							<div class="fields">
								<div class="field half">
									<label for="name">Name</label> <input type="text" name="name" id="name" />
								</div>
								<div class="field half">
									<label for="email">Email</label> <input type="text" name="email" id="email" />
								</div>
								<div class="field">
									<label for="message">Message</label>
									<textarea name="message" id="message" rows="5"></textarea>
								</div>
							</div>
							<ul class="actions">
								<li><a href="" class="button submit">Send Message</a></li>
							</ul>
						</form>
					</section>
					<section>
						<ul class="contact">
							<li>
								<h3>Address</h3> <span>
									31-15 ���־�Ʈ���� 3�� B<br /> ���ֱ�����, ���� ������<br /> ���ѹα�
								</span>
							</li>
							<li>
								<h3>Email</h3> <a href="#">Rentue@rentue.co.kr</a>
							</li>
							<li>
								<h3>Phone</h3> <span>(062) 5882-5882</span>
							</li>
							<li>
								<h3>Social</h3>
								<ul class="icons">
									<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
									<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon brands fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
								</ul>
							</li>
						</ul>
					</section>
					</section>
				</div>
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
<script type="text/javascript" src="assets/js/jquery.ripples.js"></script>
<script src="http://www.jqueryscript.net/demo/jQuery-Plugin-For-Water-Ripple-Animation-ripples/js/jquery.ripples.js">
</script>
	
	
	
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	


	<!-- �ּ� ���ý� ���� �ߴ� �ڵ� -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<!-- <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=���ξ�Ű�ּ��Է��ϱ�!!!!!&libraries=services"></script> -->
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7bf4d86dadf87fc45ddad1e9b45a01dd&libraries=services"></script>

		<script type="text/javascript">
			
$(document).ready(function() {
	try {
		$('.wave').ripples({
			resolution: 256,
			perturbance: 0.04
		});
	}
	catch (e) {
		$('.error').show().text(e);
	}
});
		</script>


	<script>
			
			//ȸ������ â���� �ּҰ˻�, ���� ����
			// �˻��� ��ǥ
			let result;
			
			// �˻��� �ּҰ�
			let addr_save;
			
			
			var mapContainer = document.getElementById('map'), // ������ ǥ���� div
			mapOption = {
			center : new daum.maps.LatLng(37.537187, 127.005476), // ������ �߽���ǥ
			level : 5
			// ������ Ȯ�� ����
			};
			
			//������ �̸� ����
			var map = new daum.maps.Map(mapContainer, mapOption);
			//�ּ�-��ǥ ��ȯ ��ü�� ����
			var geocoder = new daum.maps.services.Geocoder();
			//��Ŀ�� �̸� ����
			var marker = new daum.maps.Marker({
			position : new daum.maps.LatLng(37.537187, 127.005476),
			map : map
			});
			
			function sample5_execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					var addr = data.address; // ���� �ּ� ����
					addr_save = addr;
					// �ּ� ������ �ش� �ʵ忡 �ִ´�.
					document.getElementById("sample5_address").value = addr;
					// �ּҷ� �� ������ �˻�
					geocoder.addressSearch(data.address, function(results,
							status) {
						// ���������� �˻��� �Ϸ������
						if (status === daum.maps.services.Status.OK) {
			
							result = results[0]; //ù��° ����� ���� Ȱ��
			
							// �ش� �ּҿ� ���� ��ǥ�� �޾Ƽ�
							var coords = new daum.maps.LatLng(result.y,
									result.x);
							// ������ �����ش�.
							mapContainer.style.display = "block";
							map.relayout();
							// ���� �߽��� �����Ѵ�.
							map.setCenter(coords);
							// ��Ŀ�� ��������� ���� ��ġ�� �ű��.
							marker.setPosition(coords)
						}
					});
				}
			}).open();
			}
			
			
			//ȸ������ ��ư
			function button_join(){
			 
				 member = $("input:radio[name='member']:checked").val(),
			 id = $('#id').val();
			 pw = $('#pw').val();
			 rent_name = $('#rent_name').val();
			 rent_num = $('#rent_num').val();
			 locations = $('#sample5_address').val();
			 targetSel = $('#targetSel').val();
			
			
			$.ajax({
			    url:'JoinServiceCon',
			    type:'post',
			     data: {
			    	member : member,
			    	id : id, pw : pw,
			    	rent_name : rent_name,
			    	rent_num : rent_num,
			    	locations : locations,
			    	targetSel : targetSel,
			    	x : result.x, 
			    	y : result.y
			    	},
			      
			    success:function(){
			        console.log("�Ϸ�!");
			        let url = 'intro.jsp';
			        location.replace(url);
			    },
			    error:function(){
			        alert("���� �߻�~~ \n");
				}
			});
			}
		
		//�����ҹ�ư �������� ����ڹ�ȣ ��Ȱ��ȭ			
		$(document).ready(function() {
		$("input[name='member']:radio").change(function() {
			var type = this.value;
		
			if (type == "Ct_member") {
				$("input[name='r_num']").prop("disabled", true);
				$("input[name='r_num']").val("");
				$("#r_num").hide();
				$("#select").hide();
			} else {
				$("input[name='r_num']").prop("disabled", false);
				$("#r_num").show();
				$("#select").show();
			}
		});
		});
		
		
		$("#search").on('click', function() {
		$.ajax({
			data : {
				'x' : result.x,
				'y' : result.y
			},
			contentType : "application/json; charset : euc-kr",
			dataType : "JSON",
			url : 'SearchCt',
			success : function(jsonList) {
				console.log(jsonList);
				
				$('#targetSel').children("option").remove();
				for (var key in jsonList) {
					for (var val in jsonList[key]){
						var option = "<option value='" + val + "'>" + jsonList[key][val] + "</option>";
						console.log(option);
						$('#targetSel').append(option);
					}
				} 
				},
			 error:function(){
		            alert("���� �߻�~~ \n");
		   	}
		});
		});
		
		//���â-- ȸ������â
		//Ư�� ��ư�� ������ �� â ����   
		const modal = document.getElementById("modal")
		const btnModal = document.getElementById("btn-modal")
		btnModal.addEventListener("click", e => {
		    modal.style.display = "flex"
		})
		
		//Ŭ����(x)��ư ������ ���â ������ �ϱ�
		const closeBtn = modal.querySelector(".close-area")
		closeBtn.addEventListener("click", e => {
		modal.style.display = "none"
		})
		
		//���â�� ���� ���¿��� ESC��ư ������ ���â ������ �ϱ�
		window.addEventListener("keyup", e => {
		if(modal.style.display === "flex" && e.key === "Escape") {
		    modal.style.display = "none"
		}
		})

	
			
	
	
			//�α��� ajax �ڵ�
			function button_login(){
				 member = $("input:radio[name='member2']:checked").val(),
				 id = $('#id2').val();
				 pw = $('#pw2').val();
				 
		
				 
			    $.ajax({
			        url:'LoginServiceCon',
			        type:'post',
		 	        data: {
			        	member : member,
			        	id : id, pw : pw,
		 	        },
		 	        
		 	       success:function(data){	 	    	
		 	    		console.log("�Ϸ�!");
		 	   			let url = null;
		 	   			if(data == 'loginFail'){
		 	   				alert('�α��ο� �����Ͽ����ϴ�.')
		 	   				url = 'intro.jsp';
		 	   			}else{
		 	   				if(id=='admin'){
	 	   						url = 'admin_main.jsp';
	 	   					}else if(member=='Rent_member'){
		 	   					url = 'rent_main.jsp';
		 	   				}else if(member=='Ct_member'){
		 	   					url = 'ct_main.jsp';
		 	   				}
		 	   			}
		            	location.replace(url);
			        },
			        error:function(){
			           alert("���� �߻�~~ \n");
			           location.reload(true);
			    	}
			    });	
				 }
			
						
			

	  </script>
</body>
</html>

