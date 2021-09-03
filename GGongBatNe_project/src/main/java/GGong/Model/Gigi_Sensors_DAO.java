package GGong.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Gigi_Sensors_DAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	ArrayList<Gigi_Sensors_DTO> list = null;
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void close() {
		try {
			if(rs != null) {
				rs.close();
			}	
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int insert(Gigi_Sensors_DTO dto) {

		conn();

		try {
			String sql = "insert into GIGI_SENSORS(GIGI_name, Gigi_vol, Gigi_temp, Gigi_hum, Gigi_area, gigi_date) values(?, ?, ?, ?, ?, sysdate)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getGigi_name());
			psmt.setString(2, dto.getGigi_vol());
			psmt.setString(3, dto.getGigi_temp());
			psmt.setString(4, dto.getGigi_hum());
			psmt.setString(5, dto.getGigi_area());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		return cnt;

	}
	
	
	
	public  ArrayList<Gigi_Sensors_DTO> select(String GIGI_AREA) {
		ArrayList<Gigi_Sensors_DTO> list = new ArrayList<Gigi_Sensors_DTO>();
		conn();
		
		try {
			String sql = "select * from Gigi_Sensors where GIGI_AREA = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, GIGI_AREA );
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
			
				
				int gigi_num = rs.getInt("GIGI_num");
				String gigi_name = rs.getString("GIGI_NAME");
				String gigi_vol= rs.getString("GIGI_vol");
				String gigi_temp= rs.getString("GIGI_temp");
				String gigi_hum = rs.getString("GIGI_hum");
				String gigi_area = rs.getString("GIGI_area");
				String gigi_check = rs.getString("GIGI_check");
				String gigi_date = rs.getString("GIGI_date");
				
				
				Gigi_Sensors_DTO sensor_dto = new Gigi_Sensors_DTO(gigi_name, gigi_vol, gigi_temp, gigi_hum, gigi_area, gigi_check, gigi_date);
				
				list.add(sensor_dto);
				
			
			}
		
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	
	}
	
	
	
	
	
	
}
