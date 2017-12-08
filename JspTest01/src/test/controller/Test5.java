package test.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/* 주소 역할을 하는 것이 아래의 태그, 그래서 form action att와 같은 이름이어야 한다 */
/* annotation과 HttpServlet을 상속받은 클래스는 알아서 mapping이 된다 */
@WebServlet("/test5")
public class Test5 extends HttpServlet {
	
	/* form action에서 해당 클래스를 호출하고 method의 타입에 따라 해당 method를 실행 */
	/**
	 * @param request 사용자가 요청한 것
	 * @param response 요청에 대한 반환값
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// 요청을 받아서 뷰로 화면을 넘길것
		
		// 요청 내 캐릭터를 UTF-8로 바꾸겠다
		request.setCharacterEncoding("UTF-8");
		
		/* 요청에 대한 반환값을 여기서 처리 */
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);
		int month = c.get(Calendar.MONTH) + 1;
		int date = c.get(Calendar.DATE);
		
		/* 처리된 값을 view쪽으로 보내기 위한 설정 */
		request.setAttribute("year", year);
		request.setAttribute("month", month);
		request.setAttribute("date", date);
		
		/* 원래 옛날 서블릿이면 아래와 같이 해야 했다 */
		PrintWriter out = response.getWriter();
		out.println(year + "년");
		
		/* view 쪽으로 설정된 값을 보내 사용자에게 보여줄 것을 호출 */
		// 요청 안에는 dispatcher라는게 있다.
		// 넘어갈 page의 주소를 명시
		//RequestDispatcher rd = request.getRequestDispatcher("test5Result.jsp");
		//rd.forward(request, response);
		
		/* 사용자한테 요청이 오면 controller에서 요청을 처리하고 그 처리된 값들을 바로
		 * 사용자한테 쏴주는 게 아니고 처리된 값을 다시금 자기에게 request한다.
		 * */
	}
	
}






















