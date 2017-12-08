package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/forwardtest")
public class ForwardController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String s = "새로운 문자열";
		int i = 10;
		String[] arr = {"abc", "efg"};
		
		request.setAttribute("s", s);
		request.setAttribute("i", i);
		request.setAttribute("arr", arr);
		
		/* 유저에게 어디로 갈지를 설정하는게 아니라 view jsp에게 사용자의 요청을 넘김
		 * 그렇기 때문에 여기서 request에 설정한 attribute들이 해당 jsp에 넘어감
		 * */
		request.getRequestDispatcher("/jsp/result.jsp").forward(request, response);
		
	}
}
