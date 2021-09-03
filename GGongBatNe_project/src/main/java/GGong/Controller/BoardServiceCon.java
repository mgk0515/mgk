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
		
		
		
		System.out.println("���� : "+title);
		System.out.println("���� : "+contents);
		System.out.println("����ó : "+phone);
		System.out.println("����̸� : "+gigi_name);
		
		Complaints_DTO dto = new Complaints_DTO(title, gigi_name, phone, contents);
		Complaints_DAO dao = new Complaints_DAO();
		
		int cnt = dao.insert(dto);
		
		if(cnt>0) {
			System.out.println(" ���ۼ� ����");
			response.sendRedirect("service.jsp");
			
		}else {
			System.out.println(" ���ۼ� ����");
			response.sendRedirect("service2.jsp");
		}
		
		

		
	}

}
