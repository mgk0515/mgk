package com.model;

public class DeviceDTO {

	//����ȣ , ��Ż���̵�, �����Ҿ��̵�, Ÿ�� , ��Ż��Ȳ, ���忩��
	// rent_member rent_id�� ����
	
	private int device_num;
	private String rent_id;
	private String device_type;
	private String rent_state;
	private String broken;
	
	public DeviceDTO(int device_num, String rent_id, String device_type, String rent_state, String broken) {
		super();
		this.device_num = device_num;
		this.rent_id = rent_id;
		this.device_type = device_type;
		this.rent_state = rent_state;
		this.broken = broken;
	}
	
	public DeviceDTO(int device_num) {
		super();
		this.device_num = device_num;
	
	}

	public DeviceDTO() {
		// TODO Auto-generated constructor stub
	}

	public int  getDevice_num() {
		return device_num;
	}

	public void setDevice_num(int device_num) {
		this.device_num = device_num;
	}

	public void setRent_id(String rent_id) {
		this.rent_id = rent_id;
	}

	public void setDevice_type(String device_type) {
		this.device_type = device_type;
	}

	public void setRent_state(String rent_state) {
		this.rent_state = rent_state;
	}

	public void setBroken(String broken) {
		this.broken = broken;
	}

	public String getRent_id() {
		return rent_id;
	}

	public String getDevice_type() {
		return device_type;
	}

	public String getRent_state() {
		return rent_state;
	}

	public String getBroken() {
		return broken;
	}
	
}
