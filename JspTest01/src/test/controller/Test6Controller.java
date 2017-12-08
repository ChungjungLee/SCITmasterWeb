package test.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test6")
public class Test6Controller extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		/* user측의 form submit을 통해 넘어온 값을 받으려면 name att가 있어야 한다 */
		// 값 꺼내기
		String username = request.getParameter("username");
		
		//request.setAttribute("username", username);
		
		RequestDispatcher rd = request.getRequestDispatcher("test6Result.jsp");
		rd.forward(request, response);
		
		/* 주소를 요청한건 서블릿인데 서버측에서는 알아서 자동적으로, 내부적으로 view jsp를 호출한다
		 * 그래서 사용자는 호출된 jsp파일의 주소를 알지 못한다.
		 *  */
	}
}
