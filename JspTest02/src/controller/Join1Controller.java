package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/join1")
public class Join1Controller extends HttpServlet {
	protected void doPost(
			HttpServletRequest request, 
			HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String pwc = request.getParameter("pwc");
		String username = request.getParameter("username");
		
		System.out.println("email: " + email);
		System.out.println("password: " + pw);
		System.out.println("password check: " + pwc);
		System.out.println("username: " + username);
		
		request.getRequestDispatcher("join1Result.jsp").forward(request, response);
		
	}
}
