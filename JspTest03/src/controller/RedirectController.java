package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/redirecttest")
public class RedirectController extends HttpServlet {
	protected void doGet(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String s = "새로운 문자열";
		int i = 10;
		String[] arr = {"abc", "efg"};
		
		request.setAttribute("s", s);
		request.setAttribute("i", i);
		request.setAttribute("arr", arr);
		
		/* 유저에게 어디로 가야 할지를 알려준다(끊겼음)
		 * 여기서 request에 설정한 attribute들이 유저한테 넘어가지만
		 * 재차 result.jsp를 호출하므로 넘어가는 request attribute나 param이 없다
		 * */
		response.sendRedirect("jsp/result.jsp");
		
	}
}
