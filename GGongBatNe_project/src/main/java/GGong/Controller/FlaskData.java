package GGong.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import GGong.Model.Gigi_Names_DAO;
import GGong.Model.Gigi_Names_DTO;
import GGong.Model.Gigi_Sensors_DAO;
import GGong.Model.Gigi_Sensors_DTO;


@WebServlet("/FlaskData")
public class FlaskData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int name_cnt =0;
		int sen_cnt =0;
		String gigi_name="aaa";
			   gigi_name =request.getParameter("gigi_name"); 
		String gigi_vol =request.getParameter("gigi_vol"); 
		String gigi_temp =request.getParameter("gigi_temp"); 
		String gigi_hum = request.getParameter("gigi_hum"); 
		String gigi_area = request.getParameter("gigi_area");
		String gigi_location_a = request.getParameter("gigi_location_a"); 
		String gigi_location_b = request.getParameter("gigi_location_b");
		
		float gigi_vol2 = Float.parseFloat(gigi_vol);
		float gigi_vol3=(45-gigi_vol2)/30*100f;
		String gigi_vol4 = Float.toString(gigi_vol3);
		System.out.println(gigi_vol4);
		String[] gigi_vol_list = gigi_vol4.split("\\.");
		String gigi_vol1 =gigi_vol_list[0];
		
		System.out.println("기기 이름 : "+gigi_name);
		System.out.println("기기 용량 : "+gigi_vol + "%");
		System.out.println("기기 온도 : "+gigi_temp);
		System.out.println("기기 습도 : "+gigi_hum);
		System.out.println("기기 위도 : "+gigi_location_a);
		System.out.println("기기 경도 : "+gigi_location_b);
		System.out.println("기기 담당지역 : "+gigi_area);
		System.out.println("==================================================");
		System.out.println(gigi_vol_list[0]);
		System.out.println("*************************************************");
		
		
		if(gigi_name.equals("aaa")) {
			System.out.println("데이터 안들어옴");
			System.out.println("");
			System.out.println("");
		}else {
			System.out.println("데이터 들어왔음");
			
//			String gigi_vol1 = gigi_vol4.substring(0, 2);
			System.out.println(gigi_vol1);
			Gigi_Sensors_DTO sen_dto = new Gigi_Sensors_DTO(gigi_name, gigi_vol1, gigi_temp, gigi_hum, gigi_area);
			Gigi_Sensors_DAO sen_dao = new Gigi_Sensors_DAO();
			sen_cnt = sen_dao.insert(sen_dto);
			System.out.println(gigi_vol1);
		
			Gigi_Names_DTO name_dto = new Gigi_Names_DTO(gigi_name, gigi_location_a, gigi_location_b, gigi_vol1, gigi_temp, gigi_hum, gigi_area);
			Gigi_Names_DAO name_dao = new Gigi_Names_DAO();
		
			name_cnt = name_dao.update(name_dto);
			System.out.println("");
		
		
		if(name_cnt>0) {
			System.out.println("업데이트 완료");
		}else {
			System.out.println("업데이트 실패");
		}
		if(sen_cnt>0) {
			System.out.println("등록 완료");
		}else {
			System.out.println("등록 실패");
		}
		
		
		
		
		}
		
	}

}
