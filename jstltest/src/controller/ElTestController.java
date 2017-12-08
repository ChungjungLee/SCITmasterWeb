package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/eltest")
public class ElTestController extends HttpServlet {
	
	protected void doGet(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		String s = "문자열";
		int i = 10;
		
		request.setAttribute("s", s);
		request.setAttribute("i", i);
		
		/* EL의 Scope 테스트 */
		request.setAttribute("test", 100);
		HttpSession session = request.getSession();
		session.setAttribute("test", 200);
		
		request.setAttribute("d", "컨트롤러에서 넣은 d");
		
		//request.getRequestDispatcher("eltest.jsp").forward(request, response);
		request.getRequestDispatcher("jstltest2.jsp").forward(request, response);
	}
	
}
