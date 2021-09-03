package GGong.Model;

public class Complaints_DTO {
	
	private String com_title;
	private String gigi_name;
	private String com_phone;
	private String com_content;
	private String com_date;
	
	public Complaints_DTO(String com_title, String gigi_name, String com_phone, String com_content, String com_date) {
		
		this.com_title = com_title;
		this.gigi_name = gigi_name;
		this.com_phone = com_phone;
		this.com_content = com_content;
		this.com_date = com_date;
	}
	
	public Complaints_DTO(String com_title, String gigi_name, String com_phone, String com_content) {
		
		this.com_title = com_title;
		this.gigi_name = gigi_name;
		this.com_phone = com_phone;
		this.com_content = com_content;
	}

	
	public String getCom_title() {
		return com_title;
	}

	public String getGigi_name() {
		return gigi_name;
	}

	public String getCom_phone() {
		return com_phone;
	}

	public String getCom_content() {
		return com_content;
	}

	public String getCom_date() {
		return com_date;
	}

	public void setCom_title(String com_title) {
		this.com_title = com_title;
	}

	public void setGigi_name(String gigi_name) {
		this.gigi_name = gigi_name;
	}

	public void setCom_phone(String com_phone) {
		this.com_phone = com_phone;
	}

	public void setCom_content(String com_content) {
		this.com_content = com_content;
	}

	public void setCom_date(String com_date) {
		this.com_date = com_date;
	}
	
	
}
