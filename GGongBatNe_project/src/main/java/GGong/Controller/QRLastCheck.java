package GGong.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import GGong.Model.Gigi_Names_DAO;

@WebServlet("/QRLastCheck")
public class QRLastCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8"); 
		response.setContentType("text/html; charset=UTF-8");


		String gigi_name=request.getParameter("gigi_name");
		
		System.out.println(gigi_name);
		
		
		if(gigi_name!=null) {
			Gigi_Names_DAO dao = new Gigi_Names_DAO();
			int cnt = dao.selectCount(gigi_name);
			if(cnt>0) {
				cnt+=1;
				int result = dao.updateCount(gigi_name,cnt);
				PrintWriter out = response.getWriter(); 
				if(result>0) {					
					out.println("<h1>수거 체크 완료</h1>");
					
					System.out.println("수거 체크 완료");
				}else {
					out.println("<h1>수거 체크 실패,,,</h1>");
					System.out.println("수거 체크 실패");
				}
			}
		}
		
		
	}

}
