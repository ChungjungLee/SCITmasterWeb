package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ArticleDAO;
import vo.Article;

@WebServlet("/readone")
public class ReadOneArticleController extends HttpServlet {
	
	ArticleDAO dao = new ArticleDAO();
	
	protected void doGet(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		/* parameter 읽어들이기 */
		String articleNum = request.getParameter("num");
		int num = Integer.parseInt(articleNum);
		
		/* DB로부터 해당 게시글의 정보 받아오기 */
		Article article = dao.readOneArticle(num);
		
		request.setAttribute("article", article);
		
		/* 게시글 읽는 페이지로 이동 */
		request.getRequestDispatcher("jsp/readOneArticle.jsp").forward(request, response);
	}
}























