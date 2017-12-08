package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ArticleDAO;
import vo.Article;

@WebServlet("/writearticle")
public class WriteArticleController extends HttpServlet {
	ArticleDAO dao = new ArticleDAO();
	
	/**
	 * 게시글 등록을 위한 컨트롤러
	 */
	protected void doPost(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		/* DB에 게시글 저장 */
		String title = request.getParameter("title");
		String text = request.getParameter("textarea");
		String author = request.getParameter("author");
		Article article = new Article(title, text, author);
		
		if(dao.writeArticle(article) == 1) {
			System.out.println("입력 완료");
		} else {
			System.out.println("입력 실패");
		}
		
		/* index 페이지로 이동 */
		response.sendRedirect("index.jsp");
	}
}
