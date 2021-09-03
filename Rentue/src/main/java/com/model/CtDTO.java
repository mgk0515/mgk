package com.model;

public class CtDTO {
		
	//������ ���̵�, ��й�ȣ, �̸�, �ּ�, �浵, ����
	
		//rent_member ct_id�� ���� 
		
		private String ct_id;
		private String ct_pw;
		private String ct_name;
		private String ct_addr;
		private double lon;
		private double lat;
		
		public CtDTO(String ct_id, String ct_pw, String ct_name, String ct_addr, double lon, double lat) {
			super();
			this.ct_id = ct_id;
			this.ct_pw = ct_pw;
			this.ct_name = ct_name;
			this.ct_addr = ct_addr;
			this.lon = lon;
			this.lat = lat;
		}

		public CtDTO(String ct_id, String ct_pw) {
			super();
			this.ct_id = ct_id;
			this.ct_pw = ct_pw;
		}

		public String getCt_id() {
			return ct_id;
		}

		public void setCt_id(String ct_id) {
			this.ct_id = ct_id;
		}

		public String getCt_pw() {
			return ct_pw;
		}

		public void setCt_pw(String ct_pw) {
			this.ct_pw = ct_pw;
		}

		public String getCt_name() {
			return ct_name;
		}

		public void setCt_name(String ct_name) {
			this.ct_name = ct_name;
		}

		public String getCt_addr() {
			return ct_addr;
		}

		public void setCt_addr(String ct_addr) {
			this.ct_addr = ct_addr;
		}

		public double getLon() {
			return lon;
		}

		public void setLon(double lon) {
			this.lon = lon;
		}

		public double getLat() {
			return lat;
		}

		public void setLat(double lat) {
			this.lat = lat;
		}
		
}
