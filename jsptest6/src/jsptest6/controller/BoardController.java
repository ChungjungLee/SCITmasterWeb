package jsptest6.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

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
	
	private BoardDAO boardDao = new BoardDAO();
	
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
		
		if (action.equals("list")) {
			/* 게시판 목록을 불러오기 */
			
			// 유저가 몇 번째 페이지를 불러올지 알아야 한다.
			// 넘겨주는 값이 없다면 맨 처음 페이지를 기본값으로
			int page = 1;
			try {
				String p = request.getParameter("page");
				page= Integer.parseInt(p);
			} catch (Exception e) {
				// 굳이 에러 출력은 필요 없다
			}
			
			ArrayList<Board> list = boardDao.selectBoardList(page);
			int numOfList = boardDao.numBoardList();
			int numOfPages = numOfList / 10 + 1;
			
			request.setAttribute("list", list);
			request.setAttribute("page", page);
			request.setAttribute("totalpage", numOfPages);
			
			request.getRequestDispatcher("boardList.jsp").forward(request, response);
			
		} else if (action.equals("writeForm")) {
			// redirect vs forward
			
			// response.sendRedirect("./writePage.jsp");
			request.getRequestDispatcher("writePage.jsp").forward(request, response);
			
		} else if (action.equals("write")) {
			// client가 보내주는 정보는 하나도 믿을게 없으니 모든 정보를 서버에서 처리
			HttpSession session = request.getSession();
			String id = (String) session.getAttribute("id");
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
			
			response.sendRedirect("board?action=list");
			//response.sendRedirect("./");
		
		} else if (action.equals("read")) {
			int boardnum = 0;
			int page = 1;
			
			try {
				String bn = request.getParameter("boardnum");
				String p = request.getParameter("page");
				boardnum = Integer.parseInt(bn);
				page = Integer.parseInt(p);
				
			} catch (Exception e) {
				
			}
			
			Board board = boardDao.selectBoard(boardnum);
			
			request.setAttribute("board", board);
			request.setAttribute("page", page);
			
			request.getRequestDispatcher("readBoard.jsp").forward(request, response);
			
		} else if (action.equals("revise")) {
			// 객체를 주고받고 하는건 안 된다.
			// 객체 안의 정보를 전부 스트링으로 주고 받고 하는 건 괜찮다
			// Board board = (Board) request.getParameter("formerboard");
			
		} else if (action.equals("reviseform")) {
			int boardnum = 0;
			
			try {
				String bn = request.getParameter("boardnum");
				boardnum = Integer.parseInt(bn);
				
			} catch (Exception e) {
				return;
			}
			
			Board board = boardDao.selectBoard(boardnum);
			
			request.setAttribute("board", board);
			
			request.getRequestDispatcher("updateBoard.jsp").forward(request, response);
			
		} else if (action.equals("delete")) {
			int boardnum = 0;
			int page = 1;
			
			try {
				String bn = request.getParameter("boardnum");
				String p = request.getParameter("page");
				boardnum = Integer.parseInt(bn);
				page = Integer.parseInt(p);
				
			} catch (Exception e) {
				return;
			}
			
			HttpSession session = request.getSession();
			String id = (String) session.getAttribute("id");
			Board board = boardDao.selectBoard(boardnum);
			
			if (id == null || !board.getId().equals(id)) {
				return;
			}
			
			if (!boardDao.deleteBoard(boardnum)) {
				System.out.println("delete failed");
			}
			
			response.sendRedirect("board?action=list&page=" + page);
			
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
