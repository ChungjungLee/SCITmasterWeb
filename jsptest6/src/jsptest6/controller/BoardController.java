package jsptest6.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jsptest6.dao.BoardDAO;
import jsptest6.vo.Board;

@WebServlet("/board")
public class BoardController extends HttpServlet {
	
	BoardDAO boardDao = new BoardDAO();
	
	protected void doGet(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		/* 요청에 따른 분기 결정 */
		String action = request.getParameter("action");
		
		if (action == null) {
			return;
		}
		
		if (action.equals("writeForm")) {
			//response.sendRedirect("./writePage.jsp");
			request.getRequestDispatcher("writePage.jsp").forward(request, response);
			
		} else if (action.equals("write")) {
			HttpSession session = request.getSession();
			String id = (String) session.getAttribute("id");
			System.out.println(id);
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Board board = new Board(id, title, content);
			
			if (boardDao.writeBoard(board) == false) {
				// 제대로 등록이 안 되었다.
				PrintWriter out = response.getWriter();
				out.println("<html><script>");
				out.println("alert('등록에 실패')");
				out.println("location.href='./';");
				out.println("</script></html>");
				return;
			}
			
			request.getRequestDispatcher("loginPage.jsp").forward(request, response);
		}
		
	}
	
	protected void doPost(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		/* GET과 POST의 하는 역할이 아예 다를 경우에도 doGet()으로? */
		doGet(request, response);
	}

}
