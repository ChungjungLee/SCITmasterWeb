package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calculate")
public class CalculateController extends HttpServlet {

	protected void doGet(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		/* 1. request의 encoding type change */
		request.setCharacterEncoding("UTF-8");
		
		String leftStr = request.getParameter("left");
		String operator = request.getParameter("operator");
		String rightStr = request.getParameter("right");
		
		System.out.println("left: " + leftStr);
		System.out.println("operator: " + operator);
		System.out.println("right: " + rightStr);
		
		int left = 0;
		int right = 0;
		try {
			left = Integer.parseInt(leftStr);
			right = Integer.parseInt(rightStr);
		} catch (Exception e) {
			e.printStackTrace();
			// 오류 페이지
			request.getRequestDispatcher("calculateErrorResult.jsp").forward(request, response);
			return;
		}
		
		int result = 0;
		switch (operator) {
			case "+":
				result = left + right;
				break;
				
			case "-":
				result = left - right;
				break;
				
			case "*":
				result = left * right;
				break;
				
			case "/":
				result = left / right;
				break; 
		}
		
		/* 사용자가 보낸 정보(in request)는 jsp에서 parameter로 받을 수 있지만 
		 * controller에서 만들어 보낸 정보는 attribute로 받을 수 있다
		 * request에 추가한 attribute는 request가 살아있는 동안 접근 가능
		 * */
		request.setAttribute("operator", result);
		request.getRequestDispatcher("calculateResult.jsp").forward(request, response);
		return;
	}
	
}
