package dao;

import java.util.List;

import vo.Article;

public interface ArticleMapper {
	
	/* 게시글 등록 */
	int writeArticle(Article article);
	
	/* 전체 게시글 읽기 */
	List<Article> readArticles();
	
	/* 특정 게시글 읽기 */
	Article readOneArticle(int num);
}
