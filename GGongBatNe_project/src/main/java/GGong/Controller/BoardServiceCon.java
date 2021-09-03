package GGong.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import GGong.Model.Complaints_DAO;
import GGong.Model.Complaints_DTO;


@WebServlet("/BoardServiceCon")
public class BoardServiceCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String gigi_name = request.getParameter("gigi_name");
		String phone = request.getParameter("phone");
		
		
		
		System.out.println("제목 : "+title);
		System.out.println("내용 : "+contents);
		System.out.println("연락처 : "+phone);
		System.out.println("기기이름 : "+gigi_name);
		
		Complaints_DTO dto = new Complaints_DTO(title, gigi_name, phone, contents);
		Complaints_DAO dao = new Complaints_DAO();
		
		int cnt = dao.insert(dto);
		
		if(cnt>0) {
			System.out.println(" 글작성 성공");
			response.sendRedirect("service.jsp");
			
		}else {
			System.out.println(" 글작성 실패");
			response.sendRedirect("service2.jsp");
		}
		
		

		
	}

}
