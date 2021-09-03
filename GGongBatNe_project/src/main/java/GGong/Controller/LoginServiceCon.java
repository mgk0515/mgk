package GGong.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import GGong.Model.Members_DAO;
import GGong.Model.Members_DTO;

@WebServlet("/LoginServiceCon")
public class LoginServiceCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("EUC-KR");

		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");

		Members_DTO dto = new Members_DTO(mem_id, mem_pw);
		Members_DAO dao = new Members_DAO();
		Members_DTO login_dto = dao.login(dto);

		System.out.println(mem_id);
		System.out.println(mem_pw);

		if (login_dto != null) {
			System.out.println("로그인 성공");


			session.setAttribute("mem_dto", login_dto);
		} else {
			System.out.println("로그인 실패");

			session.removeAttribute("mem_dto");

			try {
				response.getWriter().write("loginFail");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

}