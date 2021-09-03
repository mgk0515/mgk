<%@page import="com.model.CtDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.model.RentDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ���������� �Դϴ�.</title>
</head>
<body>
	<%
	RentDTO dto = null;
	String ct_name = null;
	request.setCharacterEncoding("EUC-KR");
	if(session.getAttribute("dto") != null){
		dto = (RentDTO) session.getAttribute("dto");
		String ct_id = dto.getCt_id();
		CtDAO ct_dao = new CtDAO();
		ct_name = ct_dao.setCt(ct_id);
		System.out.println(ct_name);
	}else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('�α����� �ϼ���.')");
		script.println("location.href='intro.jsp'");
		script.println("</script>");
	}
	%>
	<h5>ȸ������ ����</h5>
	<ul>
		<li><%=dto.getRent_id()%></li>
		<li><input type="password" placeholder="PW�� �Է��ϼ���" id="pw"></li>
		<li><input type="text" placeholder="��ü�� �Է��ϼ���" id="rent_name" value="<%=dto.getRent_name() %>"></li>
		<li id="r_num"><input type="text" placeholder="����ڹ�ȣ�� �Է��ϼ���" id="rent_num" value="<%=dto.getRent_num() %>"></li>
		<li><input type="text" id="sample5_address" placeholder="�ּҸ� �˻��ϼ���" value="<%=dto.getRent_addr() %>"> <input type="button" onclick="sample5_execDaumPostcode()" value="�ּ� �˻�"></li>
		<li id="select"><select id="targetSel">
				<option value="<%=dto.getCt_id() %>"><%=ct_name %></option>
		</select>
			<button id="search">����� ������ ã��</button></li>
		<li><button id="submit" type="button" onclick="button_update()">UPDATE</button></li>

	</ul>
	<div id="map" style="width: 300px; height: 300px; margin-top: 10px; display: none"></div>



	<script src="assets/js/jquery.min.js"></script>
	<!-- �ּ� ���ý� ���� �ߴ� �ڵ� -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<!-- <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=���ξ�Ű�ּ��Է��ϱ�!!!!!&libraries=services"></script> -->
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7bf4d86dadf87fc45ddad1e9b45a01dd&libraries=services"></script>

	<script type="text/javascript">
		// �˻��� ��ǥ
		let result;

		// �˻��� �ּҰ�
		let addr_save;

		var mapContainer = document.getElementById('map'), // ������ ǥ���� div
		mapOption = {
			center : new daum.maps.LatLng(37.537187, 127.005476), // ������ �߽���ǥ
			level : 2
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

		function button_update() {
			$.ajax({
				url : 'RentUpdateServiceCon',
				type : 'post',
				data : {
					'id' : '<%=dto.getRent_id()%>',
					'pw' : $('#pw').val(),
					'rent_name' : $('#rent_name').val(),
					'rent_num' : $('#rent_num').val(),
					'locations' : $('#sample5_address').val(),
					'targetSel' : $('#targetSel').val()
				},

				success : function() {
					console.log("�Ϸ�!");
					alert("������ �Ϸ�Ǿ����ϴ�");
					let url = 'rent_main.jsp';
					location.replace(url);
				},
				error : function() {
					alert("���� ����");
				}
			});
		}

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
							for ( var key in jsonList) {
								for ( var val in jsonList[key]) {
									var option = "<option value='" + val + "'>"	+ jsonList[key][val] + "</option>";
									console.log(option);
									$('#targetSel').append(option);
								}
							}
						},
						error : function() {
							alert("���� �߻�~~ \n");
						}
					});
				});
	</script>
</body>
</html>