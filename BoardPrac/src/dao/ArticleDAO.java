package dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import vo.Article;

public class ArticleDAO {
	private SqlSessionFactory sessionFactory = MybatisConfig.getSqlSessionFactory();
	
	/**
	 * 게시글 등록
	 */
	public int writeArticle(Article article) {
		SqlSession session = null;
		int result = 0;
		
		try {
			session = sessionFactory.openSession();
			
			ArticleMapper mapper = session.getMapper(ArticleMapper.class);
			
			result = mapper.writeArticle(article);
			
			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		
		return result;
	}
	
	/**
	 * 게시글 모두 읽기
	 * @return
	 */
	public List<Article> readArticles() {
		SqlSession session = null;
		List<Article> result = new ArrayList<>();
		
		try {
			session = sessionFactory.openSession();
			
			ArticleMapper mapper = session.getMapper(ArticleMapper.class);
			
			result = mapper.readArticles();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		
		return result;
	}
	
	/**
	 * 게시글을 하나 읽어 온다.
	 * @param num 게시글의 num
	 * @return
	 */
	public Article readOneArticle(int num) {
		SqlSession session = null;
		Article result = null;
		
		try {
			session = sessionFactory.openSession();
			ArticleMapper mapper = session.getMapper(ArticleMapper.class);
			
			result = mapper.readOneArticle(num);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		
		return result;
	}
}




























