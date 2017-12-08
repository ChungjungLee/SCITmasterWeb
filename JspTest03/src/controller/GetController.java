package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/gettest")
public class GetController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String username = request.getParameter("username");
		String age = request.getParameter("age");
		
		// param을 어떤 것도 보내지 않았으므로 null이 나오는게 정상
		System.out.println("username: " + username);
		System.out.println("age: " + age);
		
		// sendRedirect에 들어갈 argument는 주소여야 한다.
		response.sendRedirect("index.jsp");
	}
}
