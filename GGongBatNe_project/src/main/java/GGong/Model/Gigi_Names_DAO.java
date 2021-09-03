package GGong.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class Gigi_Names_DAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	Gigi_Names_DTO dto = null;

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
			if (rs != null) {
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
	
	public int selectCount(String GIGI_NAME) {
		conn();
		int gigi_count=0;
		
		try {
			String sql = "select GIGI_COUNT from Gigi_Names where GIGI_NAME = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, GIGI_NAME );
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {

				gigi_count = rs.getInt("GIGI_count");

			}
		
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return gigi_count;
	
	}
	
	public  ArrayList<Gigi_Names_DTO> select(String GIGI_AREA) {
		ArrayList<Gigi_Names_DTO> list = new ArrayList<Gigi_Names_DTO>();
		conn();
		
		try {
			String sql = "select * from Gigi_Names where GIGI_AREA = ? order by GIGI_Num";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, GIGI_AREA );
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
			
				
				int gigi_num = rs.getInt("GIGI_num");
				String gigi_name = rs.getString("GIGI_NAME");
				String gigi_location_A = rs.getString("GIGI_LOCATION_A");
				String gigi_location_B = rs.getString("GIGI_LOCATION_B");
				String gigi_vol= rs.getString("GIGI_vol");
				String gigi_temp= rs.getString("GIGI_temp");
				String gigi_hum = rs.getString("GIGI_hum");
				String gigi_area = rs.getString("GIGI_area");
				int gigi_count = rs.getInt("GIGI_count");
				String gigi_check = rs.getString("gigi_check");
				
				
				Gigi_Names_DTO xy_dto = new Gigi_Names_DTO(gigi_num, gigi_name, gigi_location_A, gigi_location_B, gigi_vol, gigi_temp, gigi_hum, gigi_area, gigi_count, gigi_check);
				
				list.add(xy_dto);
				
			
			}
		
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	
	}
	
	
	public  int update(Gigi_Names_DTO dto) {
		
		conn();
		
		try {
			String sql = "update GIGI_NAMES set GIGI_LOCATION_A=?, GIGI_LOCATION_B=?, GIGI_VOL=?, GIGI_TEMP=?, GIGI_HUM=? where GIGI_NAME=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getGigi_location_A() );
			psmt.setString(2, dto.getGigi_location_B() );
			psmt.setString(3, dto.getGigi_vol() );
			psmt.setString(4, dto.getGigi_temp() );
			psmt.setString(5, dto.getGigi_hum() );
			psmt.setString(6, dto.getGigi_name() );
			
			cnt = psmt.executeUpdate();
			
		

		
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
	
	}
	
public  int updateCount(String GIGI_NAME, int GIGI_COUNT) {
		
		conn();
		
		try {
			String sql = "update GIGI_NAMES set GIGI_COUNT=?, GIGI_CHECK=sysdate where GIGI_NAME=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, GIGI_COUNT);
			psmt.setString(2,GIGI_NAME);
			
			cnt = psmt.executeUpdate();
			
		

		
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
	
	}
	
	
	
	
}
	


