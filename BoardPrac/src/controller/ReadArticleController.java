package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ArticleDAO;
import vo.Article;

@WebServlet("/readarticle")
public class ReadArticleController extends HttpServlet {
	ArticleDAO dao = new ArticleDAO();
	
	/**
	 * 게시글 읽기를 위한 컨트롤러 
	 */
	protected void doGet(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		/* DB로부터 정보 받아오기 */
		List<Article> list = dao.readArticles();
		
		if (list.isEmpty()) {
			System.out.println("결과가 없습니다.");
		} else {
			System.out.println("결과가 존재합니다.");
		}
		
		request.setAttribute("articleList", list);
		
		/* 게시판 페이지로 이동 */
		request.getRequestDispatcher("jsp/readArticle.jsp").forward(request, response);
	}
}
