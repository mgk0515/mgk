package GGong.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Members_DAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	Members_DTO dto = null;
	ArrayList<Members_DTO> list = null;

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
	
	public Members_DTO login(Members_DTO dto) {
		Members_DTO login_dto = null;
		conn();
		
		try {
			String sql = "select * from members where mem_id = ? and mem_pw = ? ";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMem_id());
			psmt.setString(2, dto.getMem_pw());
			rs = psmt.executeQuery();
			
			System.out.println(dto.getMem_id());
		
			
			if(rs.next()) {
				String mem_id = rs.getString(1);
				String mem_pw = rs.getString(2);
				String mem_name = rs.getString(3);
				String mem_phone = rs.getString(4);
				String mem_area = rs.getString(5);
				
				login_dto = new Members_DTO(mem_id, mem_pw, mem_name, mem_phone, mem_area);
				System.out.println(login_dto);
				
			}
		
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return login_dto;
	}
	
	
}
