package GGong.Model;

public class Gigi_Names_DTO {

	private int gigi_num;
	private String gigi_name;
	private String gigi_location_A;
	private String gigi_location_B;
	private String gigi_vol;
	private String gigi_temp;
	private String gigi_hum;
	private String gigi_area;
	private int gigi_count;
	private String gigi_check;
	
	
	public Gigi_Names_DTO(int gigi_num, String gigi_name, String gigi_location_A, String gigi_location_B,
			String gigi_vol, String gigi_temp, String gigi_hum, String gigi_area, int gigi_count, String gigi_check) {
		super();
		this.gigi_num = gigi_num;
		this.gigi_name = gigi_name;
		this.gigi_location_A = gigi_location_A;
		this.gigi_location_B = gigi_location_B;
		this.gigi_vol = gigi_vol;
		this.gigi_temp = gigi_temp;
		this.gigi_hum = gigi_hum;
		this.gigi_area = gigi_area;
		this.gigi_count = gigi_count;
		this.gigi_check = gigi_check;
	}
	
	public Gigi_Names_DTO(String gigi_name, String gigi_location_A, String gigi_location_B,
			String gigi_vol, String gigi_temp, String gigi_hum, String gigi_area) {
		super();
		this.gigi_name = gigi_name;
		this.gigi_location_A = gigi_location_A;
		this.gigi_location_B = gigi_location_B;
		this.gigi_vol = gigi_vol;
		this.gigi_temp = gigi_temp;
		this.gigi_hum = gigi_hum;
		this.gigi_area = gigi_area;

	}


	public int getGigi_num() {
		return gigi_num;
	}


	public void setGigi_num(int gigi_num) {
		this.gigi_num = gigi_num;
	}


	public String getGigi_name() {
		return gigi_name;
	}


	public void setGigi_name(String gigi_name) {
		this.gigi_name = gigi_name;
	}


	public String getGigi_location_A() {
		return gigi_location_A;
	}


	public void setGigi_location_A(String gigi_location_A) {
		this.gigi_location_A = gigi_location_A;
	}


	public String getGigi_location_B() {
		return gigi_location_B;
	}


	public void setGigi_location_B(String gigi_location_B) {
		this.gigi_location_B = gigi_location_B;
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


	public int getGigi_count() {
		return gigi_count;
	}


	public void setGigi_count(int gigi_count) {
		this.gigi_count = gigi_count;
	}


	public String getGigi_check() {
		return gigi_check;
	}


	public void setGigi_check(String gigi_check) {
		this.gigi_check = gigi_check;
	}

	
	
	
	
	

}
