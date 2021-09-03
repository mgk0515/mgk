package com.model;

public class RentDTO {
	
	// ��Ż ���̵� , �����Ҿ��̵�, ��й�ȣ , ��ü��, ����ڹ�ȣ, �ּ� 
	// device�� rent_id �Ѱ��ְ� , ct_member ct_id �޾ƿ�.
	private String rent_id;
	private String rent_pw;
	private String rent_name;	
	private String rent_num;
	private String rent_addr;
	private String ct_id;
//	private String admin;
	
//	public RentDTO(String rent_id, String rent_pw, String rent_name, String rent_num, String rent_addr, String ct_id, String admin) {
//		super();
//		this.rent_id = rent_id;
//		this.rent_pw = rent_pw;
//		this.rent_name = rent_name;
//		this.rent_num = rent_num;
//		this.rent_addr = rent_addr;
//		this.ct_id = ct_id;
//		this.admin = admin;
//	}
	
	public RentDTO(String rent_id, String rent_pw, String rent_name, String rent_num, String rent_addr, String ct_id) {
		super();
		this.rent_id = rent_id;
		this.rent_pw = rent_pw;
		this.rent_name = rent_name;
		this.rent_num = rent_num;
		this.rent_addr = rent_addr;
		this.ct_id = ct_id;
		
	}
	
	public RentDTO(String rent_id, String rent_pw, String rent_name, String rent_num, String rent_addr) {
		
		this.rent_id = rent_id;
		this.rent_pw = rent_pw;
		this.rent_name = rent_name;
		this.rent_num = rent_num;
		this.rent_addr = rent_addr;
	}

	public RentDTO(String rent_id, String rent_pw) {
		super();
		this.rent_id = rent_id;
		this.rent_pw = rent_pw;
	}
	public RentDTO(String rent_id) {
		super();
		this.rent_id = rent_id;
		
	}
	
	public String getRent_id() {
		return rent_id;
	}

	public String getCt_id() {
		return ct_id;
	}

	public String getRent_pw() {
		return rent_pw;
	}

	public String getRent_name() {
		return rent_name;
	}

	public String getRent_num() {
		return rent_num;
	}

	public String getRent_addr() {
		return rent_addr;
	}

	public void setRent_id(String rent_id) {
		this.rent_id = rent_id;
	}

	public void setCt_id(String ct_id) {
		this.ct_id = ct_id;
	}

	public void setRent_pw(String rent_pw) {
		this.rent_pw = rent_pw;
	}

	public void setRent_name(String rent_name) {
		this.rent_name = rent_name;
	}

	public void setRent_num(String rent_num) {
		this.rent_num = rent_num;
	}

	public void setRent_addr(String rent_addr) {
		this.rent_addr = rent_addr;
	}

//	public String getAdmin() {
//		return admin;
//	}
//
//	public void setAdmin(String admin) {
//		this.admin = admin;
//	}
//	
}
