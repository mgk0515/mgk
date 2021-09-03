package GGong.Model;

public class Gigi_Sensors_DTO {
	
	private String gigi_name;
	private String gigi_vol;
	private String gigi_temp;
	private String gigi_hum;
	private String gigi_area;
	private String gigi_check;
	private String gigi_date;
	
	
	public Gigi_Sensors_DTO(String gigi_name, String gigi_vol, String gigi_temp, String gigi_hum, String gigi_area,
			String gigi_check, String gigi_date) {
		super();
		this.gigi_name = gigi_name;
		this.gigi_vol = gigi_vol;
		this.gigi_temp = gigi_temp;
		this.gigi_hum = gigi_hum;
		this.gigi_area = gigi_area;
		this.gigi_check = gigi_check;
		this.gigi_date = gigi_date;
	}
	public Gigi_Sensors_DTO(String gigi_name, String gigi_vol, String gigi_temp, String gigi_hum, String gigi_area
			) {
		super();
		this.gigi_name = gigi_name;
		this.gigi_vol = gigi_vol;
		this.gigi_temp = gigi_temp;
		this.gigi_hum = gigi_hum;
		this.gigi_area = gigi_area;
	}


	public String getGigi_name() {
		return gigi_name;
	}
	public void setGigi_name(String gigi_name) {
		this.gigi_name = gigi_name;
	}
	public String getGigi_vol() {
		return gigi_vol;
	}
	public void setGigi_vol(String gigi_vol) {
		this.gigi_vol = gigi_vol;
	}
	public String getGigi_temp() {
		return gigi_temp;
	}
	public void setGigi_temp(String gigi_temp) {
		this.gigi_temp = gigi_temp;
	}
	public String getGigi_hum() {
		return gigi_hum;
	}
	public void setGigi_hum(String gigi_hum) {
		this.gigi_hum = gigi_hum;
	}


	public String getGigi_area() {
		return gigi_area;
	}
	public void setGigi_area(String gigi_area) {
		this.gigi_area = gigi_area;
	}
	public String getGigi_check() {
		return gigi_check;
	}
	public void setGigi_check(String gigi_check) {
		this.gigi_check = gigi_check;
	}
	public String getGigi_date() {
		return gigi_date;
	}
	public void setGigi_date(String gigi_date) {
		this.gigi_date = gigi_date;
	}
	
	
	
	

	
	
	
	
}
