package test.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test7")
public class Test7Controller extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// Post 방식은 더더욱 인코딩 방식을 바꿔주어야 한다.
		request.setCharacterEncoding("UTF-8");
		
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println("id: " + id);
		System.out.println("pw: " + pw);
		
//		List<String> list = response.getHeaderNames();
		
		
		RequestDispatcher rd = request.getRequestDispatcher("test7Result.jsp");
		rd.forward(request, response);
		
	}
}
